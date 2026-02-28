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
  void_return? : Bool = false,
) -> Unit {
  if optional_return {
    // Optional: FFI returns JsValue; to_option() checks null and unsafe-casts
    code.write_string("  \{ffi_name}(\{call_args}).to_option()\n")
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
/// Check if a method return type is eligible for a convenience wrapper.
/// Only methods returning an optional interface type (T?) qualify.
fn is_convenience_eligible(return_type : @type_mapping.MethodReturn) -> Bool {
  return_type.optional && return_type.type_ is @type_mapping.Interface(_)
}

///|
/// Generate convenience method declaration args, replacing Self with concrete type.
fn convenience_decl_args(
  args : Array[@type_mapping.MethodArg],
  interface_name : String,
) -> String {
  args
  .map(arg => {
    let arg_name = @type_mapping.safe_identifier(arg.name)
    let arg_name = if arg.optional { "\{arg_name}?" } else { arg_name }
    let type_name = match arg.type_ {
      @type_mapping.Self => interface_name
      _ => arg.type_.name()
    }
    let arg_decl = "\{arg_name} : \{type_name}"
    match arg.default_value {
      Some(dv) => "\{arg_decl} = \{dv}"
      None => arg_decl
    }
  })
  .join(", \n")
}

///|
/// Check if any non-self args are optional without default values.
/// These need match-based forwarding since `name~` can't forward `Type?` to `name? : Type`.
fn has_optional_no_default(args : Array[@type_mapping.MethodArg]) -> Bool {
  args[1:].iter().any(fn(arg) { arg.optional && arg.default_value is None })
}

///|
/// Generate convenience method forwarding args (skip self, use name~ for optional with default).
fn convenience_forward_args(args : Array[@type_mapping.MethodArg]) -> String {
  args[1:]
  .map(arg => {
    let name = @type_mapping.safe_identifier(arg.name)
    if arg.optional {
      "\{name}~"
    } else {
      name
    }
  })
  .join(", ")
}

///|
/// Generate convenience method body that handles optional args without defaults via match.
/// Returns the full function body including braces.
fn convenience_body(
  args : Array[@type_mapping.MethodArg],
  call_prefix : String,
  method_name : String,
) -> String {
  if !has_optional_no_default(args) {
    // Simple forwarding: all optional args have defaults, name~ works fine
    let fwd = convenience_forward_args(args)
    return "  \{call_prefix}\{method_name}_opt(\{fwd}).unwrap().into()\n"
  }
  // Collect optional-no-default args for match branches
  let opt_args : Array[@type_mapping.MethodArg] = args[1:].filter(fn(arg) {
    arg.optional && arg.default_value is None
  })
  // For each optional-no-default arg, generate match with Some/None branches
  // We handle 1 optional-no-default arg with a simple match pattern.
  // Multiple would need 2^N branches but is extremely rare in practice.
  guard opt_args.length() == 1 else {
    // Fallback for multiple optional-no-default args: just use name~ (may not compile for all types)
    let fwd = convenience_forward_args(args)
    return "  \{call_prefix}\{method_name}_opt(\{fwd}).unwrap().into()\n"
  }
  let opt_arg = opt_args[0]
  let opt_name = @type_mapping.safe_identifier(opt_arg.name)
  // Build forward args for Some branch (unwrapped value, use name~)
  let some_fwd = args[1:]
    .map(arg => {
      let name = @type_mapping.safe_identifier(arg.name)
      if arg.optional {
        "\{name}~"
      } else {
        name
      }
    })
    .join(", ")
  // Build forward args for None branch (skip the optional arg)
  let none_fwd = args[1:]
    .filter(fn(arg) {
      !(arg.optional &&
      arg.default_value is None &&
      @type_mapping.safe_identifier(arg.name) == opt_name)
    })
    .map(arg => {
      let name = @type_mapping.safe_identifier(arg.name)
      if arg.optional {
        "\{name}~"
      } else {
        name
      }
    })
    .join(", ")
  "  let result = match \{opt_name} {\n    Some(\{opt_name}) => \{call_prefix}\{method_name}_opt(\{some_fwd})\n    None => \{call_prefix}\{method_name}_opt(\{none_fwd})\n  }\n  result.unwrap().into()\n"
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
