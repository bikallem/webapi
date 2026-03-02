//============================ Interface Method Helpers =========================

///|
/// Generate a standard FFI function name from interface and method names.
fn make_ffi_name(interface_name : String, method_name : String) -> String {
  "\{@type_mapping.snake_case(interface_name)}_\{@type_mapping.snake_case(method_name)}_ffi"
}

///|
/// Convert method args to FFI argument names, replacing Self with "obj".
fn make_ffi_argnames(args : Array[@type_mapping.MethodArg]) -> Array[String] {
  args.map(arg => {
    match arg.type_ {
      @type_mapping.ArgMbtType::Self => "obj"
      _ => arg.name
    }
  })
}

///|
/// Build FFI argument declarations from argument names (all typed as JsValue).
fn make_ffi_args(ffi_argnames : Array[String]) -> String {
  ffi_argnames.map(fn(name) { "\{name}: JsValue" }).join(", ")
}

///|
/// Build JS call argument list from method args, handling variadic spread.
fn make_js_call_args(args : ArrayView[@type_mapping.MethodArg]) -> String {
  args
  .map(fn(arg) {
    let name = js_safe(arg.name)
    if arg.variadic {
      "...\{name}"
    } else {
      name
    }
  })
  .join(", ")
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
  is_enum? : Bool = false,
  js_expr : String,
) -> Code {
  let ffi_js_decl_args = ffi_argnames.map(js_safe).join(", ")
  let needs_wrapper = not(is_optional) && not(is_void)
  if needs_wrapper {
    let raw_name = ffi_name + "_js"
    let call_fwd = ffi_argnames.join(", ")
    if is_enum {
      // Enum: JS returns a string, use from_unchecked to convert to enum variant
      Code(
        "extern \"js\" fn \{raw_name}(\{ffi_args}) -> JsValue = \"(\{ffi_js_decl_args}) => \{js_expr}\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> \{return_type_name} {\n  \{return_type_name}::from_unchecked(\{raw_name}(\{call_fwd}).unsafe_cast())\n}",
      )
    } else {
      Code(
        "extern \"js\" fn \{raw_name}(\{ffi_args}) -> JsValue = \"(\{ffi_js_decl_args}) => \{js_expr}\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> \{return_type_name} {\n  \{raw_name}(\{call_fwd}).unsafe_cast()\n}",
      )
    }
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
) -> Unit {
  if optional_return {
    // Optional: FFI returns JsValue; to_option() checks null and unsafe-casts
    code.write_string("  \{ffi_name}(\{call_args}).to_option()\n")
  } else {
    // Non-optional or void: FFI wrapper returns the actual type
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
/// Check if a method return type is eligible for a convenience wrapper.
/// Only methods returning an optional interface type (T?) qualify.
fn is_convenience_eligible(return_type : @type_mapping.MethodReturn) -> Bool {
  return_type.optional && return_type.type_ is @type_mapping.Interface(_)
}

///|
/// Apply _opt suffix to method name if the return type is convenience-eligible.
fn maybe_opt_name(
  name : String,
  return_type : @type_mapping.MethodReturn,
) -> String {
  if is_convenience_eligible(return_type) {
    "\{name}_opt"
  } else {
    name
  }
}

///|
/// Format a method arg for forwarding: "name~" for optional, "name" for required.
fn forward_arg(arg : @type_mapping.MethodArg) -> String {
  let name = @type_mapping.safe_identifier(arg.name)
  if arg.optional {
    "\{name}~"
  } else {
    name
  }
}

///|
/// Generate the call expression for a convenience method.
/// Handles optional-no-default args via match-based forwarding.
/// `call_prefix` is "self." for instance methods or "ClassName::" for static methods.
/// `first_arg_index` is 1 for instance methods (skip self), 0 for static methods.
/// Returns empty string if forwarding cannot be generated.
fn convenience_call_expr(
  args : Array[@type_mapping.MethodArg],
  call_prefix : String,
  method_name : String,
  first_arg_index : Int,
) -> String {
  let effective_args = args[first_arg_index:]
  let opt_no_default = effective_args.filter(fn(arg) {
    arg.optional && arg.default_value is None
  })
  if opt_no_default.is_empty() {
    // Simple forwarding: all optional args have defaults
    let fwd = effective_args.map(forward_arg).join(", ")
    return "\{call_prefix}\{method_name}_opt(\{fwd}).unwrap()"
  }
  if opt_no_default.length() != 1 {
    // Cannot generate correct forwarding for multiple optional-no-default args
    return ""
  }
  let opt_name = opt_no_default[0].name
  let some_fwd = effective_args.map(forward_arg).join(", ")
  let none_fwd = effective_args
    .filter(fn(arg) {
      !(arg.optional && arg.default_value is None && arg.name == opt_name)
    })
    .map(forward_arg)
    .join(", ")
  "let result = match \{opt_name} {\n    Some(\{opt_name}) => \{call_prefix}\{method_name}_opt(\{some_fwd})\n    None => \{call_prefix}\{method_name}_opt(\{none_fwd})\n  }\n  result.unwrap()"
}

///|
/// Generate convenience trait declaration for methods returning optional interface types.
fn convenience_decl_code(
  return_type : @type_mapping.MethodReturn,
  args : Array[@type_mapping.MethodArg],
  method_name : String,
) -> Code {
  if !is_convenience_eligible(return_type) {
    return Code("")
  }
  let args_str = trait_method_decl_args(args)
  let name = @type_mapping.safe_identifier(method_name)
  let ret_type_name = return_type.type_.name()
  Code("  \{name}(\{args_str}) -> \{ret_type_name} = _")
}

///|
/// Generate convenience default trait impl for methods returning optional interface types.
fn convenience_impl_code(
  return_type : @type_mapping.MethodReturn,
  args : Array[@type_mapping.MethodArg],
  interface_name : String,
  method_name : String,
  call_prefix : String,
  first_arg_index : Int,
  is_static? : Bool = false,
) -> Code {
  if !is_convenience_eligible(return_type) {
    return Code("")
  }
  let name = @type_mapping.safe_identifier(method_name)
  let ret_type_name = return_type.type_.name()
  let method_args = trait_method_impl_args(args)
  let call = convenience_call_expr(args, call_prefix, name, first_arg_index)
  if call == "" {
    return Code("")
  }
  let decl = if is_static {
    "pub fn \{interface_name}::\{name}(\{method_args}) -> \{ret_type_name}"
  } else {
    "impl T\{interface_name} with \{name}(\{method_args}) -> \{ret_type_name}"
  }
  Code("\{decl} {\n  \{call}\n}")
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
  array_inner_type(type_.name())
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
    } else if arg.type_ is @type_mapping.Callback(info) {
      if arg.optional && arg.default_value is None {
        "match \{arg_name} {\nSome(v) => TJsValue::to_js(\{info.ffi_name}(v))\nNone => JsValue::undefined()\n}"
      } else {
        "TJsValue::to_js(\{info.ffi_name}(\{arg_name}))"
      }
    } else if is_union_or_trait {
      if arg.optional && arg.default_value is None {
        "match \{arg_name} {\nSome(v) => v.to_js()\nNone => JsValue::undefined()\n}"
      } else {
        "\{arg_name}.to_js()"
      }
    } else if arg.optional && arg.default_value is None {
      "opt_to_js(\{arg_name})"
    } else {
      "TJsValue::to_js(\{arg_name})"
    }
  })
  .join(", ")
}
