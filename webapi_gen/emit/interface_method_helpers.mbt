//============================ Interface Method Helpers =========================

///|
/// Check if an ArgMbtType is valid as a wasm-gc import return type.
/// Primitives, #external interfaces, enums, dictionaries, and Self are valid.
/// Parameterized non-external types (Array[T]) and typedefs that resolve to them are not.
/// Note: String is excluded because on wasm-gc with js-string builtins,
/// String is (ref extern) (non-nullable) while wasm imports return externref (nullable).
fn is_wasm_valid_stub_type(type_ : @type_mapping.ArgMbtType) -> Bool {
  match type_ {
    Primitive(name) => name != "String"
    Interface(_) | Enum(_) | Dictionary(_) | Self => true
    Other(name) =>
      // JsValue, Unit, JsUndefined are valid externref types.
      // Typed arrays, DataView, ArrayBuffer, SharedArrayBuffer are #external types.
      is_wasm_valid_stub_other_type(name)
    Union(_) => false // Union types resolve to trait names, not valid as stubs
  }
}

///|
/// Check if a return type is String (needs special handling on wasm-gc).
/// On wasm-gc with js-string builtins, String is (ref extern) (non-nullable)
/// while wasm imports return externref (nullable). We use jsvalue_to_string()
/// which goes through String? + unwrap to emit ref.as_non_null.
fn is_string_return(type_ : @type_mapping.ArgMbtType) -> Bool {
  type_ is Primitive("String")
}

///|
fn is_array_return(type_name : String) -> Bool {
  type_name.has_prefix("Array[") && type_name.has_suffix("]")
}

///|
fn is_string_array_return(type_name : String) -> Bool {
  type_name == "Array[String]"
}

///|
/// Emit wasm-gc FFI declaration with return-type dispatch.
/// Handles the five cases: void/optional, String, Array[T] bridge, valid stub type, or JsValue wrapper.
fn emit_wasm_ffi_with_return(
  ffi_name : String,
  ffi_args : String,
  ffi_argnames : Array[String],
  return_type_name : String,
  is_optional~ : Bool,
  is_void~ : Bool,
  is_string~ : Bool,
  is_valid_stub~ : Bool,
  module_name : String,
  import_name : String,
) -> Code {
  if is_void || is_optional {
    // Void or optional: use JsValue/Unit directly as wasm import return
    let ffi_ret = if is_void { "Unit" } else { "JsValue" }
    Code(
      "fn \{ffi_name}(\{ffi_args}) -> \{ffi_ret} = \"\{module_name}\" \"\{import_name}\"",
    )
  } else if is_string {
    // String: wasm imports return externref (nullable), but String is (ref extern) (non-nullable).
    // Use jsvalue_to_string wrapper: externref -> String? -> unwrap -> String.
    let raw_name = ffi_name + "_wasm"
    let call_fwd = ffi_argnames.join(", ")
    Code(
      "fn \{raw_name}(\{ffi_args}) -> JsValue = \"\{module_name}\" \"\{import_name}\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> String {\n  jsvalue_to_string(\{raw_name}(\{call_fwd}))\n}",
    )
  } else if is_array_return(return_type_name) {
    // Array[T]: use JsArray as raw import type and copy into MoonBit Array[T].
    // This avoids wasm-gc externref -> typed ref fallthrough mismatches.
    let raw_name = ffi_name + "_wasm"
    let call_fwd = ffi_argnames.join(", ")
    let array_convert = if is_string_array_return(return_type_name) {
      "to_string_array"
    } else {
      "to_array"
    }
    Code(
      "fn \{raw_name}(\{ffi_args}) -> JsArray = \"\{module_name}\" \"\{import_name}\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> \{return_type_name} {\n  \{raw_name}(\{call_fwd}).\{array_convert}()\n}",
    )
  } else if is_valid_stub {
    // Valid stub type: declare import with actual MoonBit type directly
    Code(
      "fn \{ffi_name}(\{ffi_args}) -> \{return_type_name} = \"\{module_name}\" \"\{import_name}\"",
    )
  } else {
    // Invalid stub type (Array[T], typedefs, etc.): import as JsValue + unsafe_cast wrapper
    let raw_name = ffi_name + "_wasm"
    let call_fwd = ffi_argnames.join(", ")
    Code(
      "fn \{raw_name}(\{ffi_args}) -> JsValue = \"\{module_name}\" \"\{import_name}\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> \{return_type_name} {\n  \{raw_name}(\{call_fwd}).unsafe_cast()\n}",
    )
  }
}

///|
/// Emit JS FFI declaration with return-type dispatch.
/// For non-optional, non-void returns: creates a `_js` raw extern + wrapper with unsafe_cast.
/// For optional returns: returns JsValue for null-checking.
/// For void returns: returns Unit.
fn emit_js_ffi_with_return(
  ffi_name : String,
  ffi_args : String,
  ffi_argnames : Array[String],
  return_type_name : String,
  is_optional~ : Bool,
  is_void~ : Bool,
  js_expr : String,
) -> Code {
  let ffi_js_decl_args = ffi_argnames.map(js_safe).join(", ")
  let needs_wrapper = not(is_optional) && not(is_void)
  if needs_wrapper {
    let raw_name = ffi_name + "_js"
    let call_fwd = ffi_argnames.join(", ")
    Code(
      "extern \"js\" fn \{raw_name}(\{ffi_args}) -> JsValue = \"(\{ffi_js_decl_args}) => \{js_expr}\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> \{return_type_name} {\n  \{raw_name}(\{call_fwd}).unsafe_cast()\n}",
    )
  } else {
    let ffi_ret_type = if is_void { "Unit" } else { "JsValue" }
    Code(
      "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{ffi_ret_type} = \"(\{ffi_js_decl_args}) => \{js_expr}\"",
    )
  }
}

///|
/// Emits the method body: either a direct FFI call or a null-checking wrapper.
/// The FFI function is responsible for returning the correct type.
/// For optional returns, FFI returns JsValue for null checking.
/// For non-optional non-void returns, FFI returns the actual type directly.
fn emit_method_body(
  code : StringBuilder,
  ffi_name : String,
  call_args : String,
  optional_return : Bool,
  void_return? : Bool = false,
) -> Unit {
  if optional_return {
    // Optional: FFI returns JsValue so we can check for null
    code
    ..write_string("  let result = \{ffi_name}(\{call_args})\n")
    .write_string(
      "  if JsValue::is_null(result) {\n    None\n  } else {\n    Some(result.unsafe_cast())\n  }\n",
    )
  } else if void_return {
    code.write_string("  \{ffi_name}(\{call_args})\n")
  } else {
    // Non-optional: FFI wrapper returns the actual type
    code.write_string("  \{ffi_name}(\{call_args})\n")
  }
  code.write_string("}")
}

///|
/// Generate method declaration arguments string for trait method.
fn trait_method_decl_args(args : Array[@type_mapping.MethodArg]) -> String {
  args
  .map(arg => {
    let arg_name = if arg.optional { "\{arg.name}?" } else { arg.name }
    let arg_type = arg.type_.name()
    "\{arg_name} : \{arg_type}"
  })
  .join(", ")
}

///|
fn trait_method_impl_args(args : Array[@type_mapping.MethodArg]) -> String {
  args
  .map(arg => {
    let arg_name = @type_mapping.safe_identifier(arg.name)
    let arg_name = if arg.optional { "\{arg_name}?" } else { arg_name }
    let arg_decl = "\{arg_name} : \{arg.type_.name()}"
    match arg.default_value {
      Some(dv) => "\{arg_decl} = \{dv}"
      None => arg_decl
    }
  })
  .join(", \n")
}

///|
fn is_trait_ref_type(type_ : @type_mapping.ArgMbtType) -> Bool {
  match type_ {
    @type_mapping.ArgMbtType::Other(name) => name.has_prefix("&T")
    _ => false
  }
}

///|
fn variadic_inner_type(type_ : @type_mapping.ArgMbtType) -> String? {
  let type_name = type_.name()
  if !(type_name.has_prefix("Array[") && type_name.has_suffix("]")) {
    None
  } else {
    let chars = type_name.to_array()
    if chars.length() <= 7 {
      None
    } else {
      Some(String::from_array(chars[6:chars.length() - 1]))
    }
  }
}

///|
fn variadic_call_arg(
  arg_name : String,
  type_ : @type_mapping.ArgMbtType,
) -> String {
  match variadic_inner_type(type_) {
    Some(inner_type) if inner_type.has_prefix("&T") =>
      // Trait-ref element: call trait method directly.
      "TJsValue::to_js(\{arg_name}.map(fn(v : \{inner_type}) -> JsValue { v.to_js() }))"
    Some(_) =>
      // Non-trait element: map with TJsValue::to_js to avoid overload ambiguity.
      "TJsValue::to_js(\{arg_name}.map(fn(v) { TJsValue::to_js(v) }))"
    None =>
      // Defensive fallback for malformed/non-array variadic type strings.
      "TJsValue::to_js(\{arg_name})"
  }
}

///|
fn func_call_args(args : Array[@type_mapping.MethodArg]) -> String {
  args
  .map(arg => {
    let arg_name = @type_mapping.safe_identifier(arg.name)
    let is_union_or_trait = arg.type_ is @type_mapping.Union(_) ||
      is_trait_ref_type(arg.type_)
    if arg.variadic {
      variadic_call_arg(arg_name, arg.type_)
    } else if (
        is_union_or_trait && arg.optional && arg.default_value is Some(_)
      ) ||
      (is_union_or_trait && !arg.optional) {
      "\{arg_name}.to_js()"
    } else if is_union_or_trait && arg.optional && arg.default_value is None {
      "match \{arg_name} {\nSome(v) => v.to_js()\nNone => JsValue::undefined()\n}"
    } else if arg.optional && arg.default_value is None {
      "opt_to_js(\{arg_name})"
    } else {
      "TJsValue::to_js(\{arg_name})"
    }
  })
  .join(", ")
}
