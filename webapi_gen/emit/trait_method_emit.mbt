///|
trait TraitMethodEmit: ToJson + Show {
  method_decl(self : Self) -> Code // Generate method declaration code  
  method_impl(self : Self) -> Code // Generate method implementation code
}

///|
/// Regular trait method emission.
pub struct RegularTraitMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  original_name : String // Original method name from IDL, eg "getElementById"
  return_type : String
  args : Array[MethodArg]
} derive(Show, ToJson)

///|
pub impl TraitMethodEmit for RegularTraitMethodEmit with method_decl(
  self : RegularTraitMethodEmit,
) -> Code {
  let args = trait_method_decl_args(self.args)
  Code(
    "  \{safe_identifier(self.original_name)}(\{args}) -> \{self.return_type} = _",
  )
}

///|
pub impl TraitMethodEmit for RegularTraitMethodEmit with method_impl(
  self : RegularTraitMethodEmit,
) -> Code {
  // Emit FFI function
  let ret_type_str = self.return_type
  let trait_name = self.interface_name
  let ffi_name = "\{snake_case(trait_name)}_\{snake_case(self.original_name)}_ffi"
  let ffi_argnames = self.args.map(arg => match arg.type_ {
    ArgMbtType::Self => "obj"
    _ => arg.name
  })
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  let ffi_js_args = ffi_argnames.join(", ")
  let code = StringBuilder::new()
  code
  ..write_string(
    "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{ret_type_str} = \"(\{ffi_js_args}) => obj.\{self.original_name}(\{ffi_js_args})\"",
  )
  ..write_string("\n\n")

  // Emit default trait method implementation
  let method_args = trait_method_impl_args(self.args)
  let method_name = safe_identifier(self.original_name)
  let call_args = func_call_args(self.args)
  code
  ..write_string(
    "impl T\{trait_name} with \{method_name}(\{method_args}) -> \{ret_type_str} {\n",
  )
  ..write_string("  \{ffi_name}(\{call_args})\n")
  ..write_string("}")
  Code(code.to_string())
}

///|
/// Generate method declaration arguments string for trait method.
fn trait_method_decl_args(args : Array[MethodArg]) -> String {
  args
  .map(arg => {
    let arg_name = if arg.optional { "\{arg.name}?" } else { arg.name }
    match arg.type_ {
      ArgMbtType::Self => "\{arg_name} : Self"
      ArgMbtType::Interface(t)
      | ArgMbtType::Union(t, _)
      | ArgMbtType::Other(t) => "\{arg_name} : \{t}"
    }
  })
  .join(", ")
}

///|
fn trait_method_impl_args(args : Array[MethodArg]) -> String {
  args
  .map(arg => {
    let arg_name = safe_identifier(arg.name)
    let arg_name = if arg.optional { "\{arg_name}?" } else { arg_name }
    let arg_decl = match arg.type_ {
      ArgMbtType::Self => "\{arg_name} : Self"
      ArgMbtType::Interface(t)
      | ArgMbtType::Union(t, _)
      | ArgMbtType::Other(t) => "\{arg_name} : \{t}"
    }
    match arg.default_value {
      Some(dv) => "\{arg_decl} = \{dv}"
      None => arg_decl
    }
  })
  .join(", \n")
}

///|
fn func_call_args(args : Array[MethodArg]) -> String {
  args
  .map(arg => {
    let arg_name = safe_identifier(arg.name)
    if (arg.type_ is Union(_) && arg.optional && arg.default_value is Some(_)) ||
      (arg.type_ is Union(_) && !arg.optional) {
      "\{arg_name}.to_js()"
    } else if arg.type_ is Union(_) && arg.optional && arg.default_value is None {
      "match \{arg_name} {\nSome(v) => v.to_js()\nNone => JsValue::undefined()\n},"
    } else if arg.optional && arg.default_value is None {
      "opt_to_js(\{arg_name})"
    } else {
      "TJsValue::to_js(\{arg_name})"
    }
  })
  .join(", ")
}
