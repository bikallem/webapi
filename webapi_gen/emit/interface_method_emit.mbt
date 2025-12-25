///|
/// Trait for emitting interface methods.
trait InterfaceMethodEmit: ToJson + Show {
  decl_emit(self : Self) -> Code // Generate method declaration code  
  impl_emit(self : Self) -> Code // Generate method implementation code
}

//============================ Regular Method Emit ============================

///|
/// Regular trait method emission.
struct RegularMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  original_name : String // Original method name from IDL, eg "getElementById"
  return_type : String
  args : Array[MethodArg]
} derive(Show, ToJson)

///|
impl InterfaceMethodEmit for RegularMethodEmit with decl_emit(
  self : RegularMethodEmit,
) -> Code {
  let args = trait_method_decl_args(self.args)
  Code(
    "  \{safe_identifier(self.original_name)}(\{args}) -> \{self.return_type} = _",
  )
}

///|
impl InterfaceMethodEmit for RegularMethodEmit with impl_emit(
  self : RegularMethodEmit,
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

//============================ Static Method Emit =================================

///|
struct StaticMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  original_name : String // Original method name from IDL, eg "createElement"
  return_type : String
  args : Array[MethodArg]
} derive(Show, ToJson)

///|
impl InterfaceMethodEmit for StaticMethodEmit with decl_emit(
  _self : StaticMethodEmit,
) -> Code {
  Code("") // Static methods are not included in trait declarations
}

///|
impl InterfaceMethodEmit for StaticMethodEmit with impl_emit(
  self : StaticMethodEmit,
) -> Code {
  // Emit FFI function
  let ret_type_str = self.return_type
  let trait_name = self.interface_name
  let ffi_name = "\{snake_case(trait_name)}_\{snake_case(self.original_name)}_ffi"
  let ffi_argnames = self.args.map(arg => arg.name)
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  let ffi_js_args = ffi_argnames.join(", ")
  let code = StringBuilder::new()
  code
  ..write_string(
    "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{ret_type_str} = \"(\{ffi_js_args}) => \{trait_name}.\{self.original_name}(\{ffi_js_args})\"",
  )
  ..write_string("\n\n")

  // Emit static method implementation
  let method_args = trait_method_impl_args(self.args)
  let method_name = safe_identifier(self.original_name)
  let call_args = func_call_args(self.args)
  code
  ..write_string(
    "pub fn \{trait_name}::\{method_name}(\{method_args}) -> \{ret_type_str} {\n",
  )
  ..write_string("  \{ffi_name}(\{call_args})\n")
  ..write_string("}")
  Code(code.to_string())
}

//============================ Attribute Get Method Emit ==========================

///|
struct AttributeGetMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  original_name : String // Original attribute name from IDL, eg "title"
  return_type : String
} derive(Show, ToJson)

///|
impl InterfaceMethodEmit for AttributeGetMethodEmit with decl_emit(
  self : AttributeGetMethodEmit,
) -> Code {
  Code(
    "  \{safe_identifier(self.original_name)}(self : Self) -> \{self.return_type} = _",
  )
}

///|
impl InterfaceMethodEmit for AttributeGetMethodEmit with impl_emit(
  self : AttributeGetMethodEmit,
) -> Code {
  // Emit FFI function
  let ret_type_str = self.return_type
  let trait_name = self.interface_name
  let ffi_name = "\{snake_case(trait_name)}_\{snake_case(self.original_name)}_ffi"
  let code = StringBuilder::new()
  code
  ..write_string(
    "extern \"js\" fn \{ffi_name}(obj: JsValue) -> \{ret_type_str} = \"(obj) => obj.\{self.original_name}\"",
  )
  ..write_string("\n\n")

  // Emit default trait method implementation
  let method_name = safe_identifier(self.original_name)
  code
  ..write_string(
    "impl T\{trait_name} with \{method_name}(self : Self) -> \{ret_type_str} {\n",
  )
  ..write_string("  \{ffi_name}(TJsValue::to_js(self))\n")
  ..write_string("}")
  Code(code.to_string())
}

//============================ Attribute Set Method Emit ==========================

///|
struct AttributeSetMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  original_name : String // Original attribute name from IDL, eg "title"
  arg_type : String
} derive(Show, ToJson)

///|
impl InterfaceMethodEmit for AttributeSetMethodEmit with decl_emit(
  self : AttributeSetMethodEmit,
) -> Code {
  Code(
    "  set_\{safe_identifier(self.original_name)}(self : Self, \{safe_identifier(self.original_name)} : \{self.arg_type}) -> Unit = _",
  )
}

///|
impl InterfaceMethodEmit for AttributeSetMethodEmit with impl_emit(
  self : AttributeSetMethodEmit,
) -> Code {
  // Emit FFI function
  let trait_name = self.interface_name
  let ffi_name = "\{snake_case(trait_name)}_set_\{snake_case(self.original_name)}_ffi"
  let arg_name = safe_identifier(self.original_name)
  let code = StringBuilder::new()
  code
  ..write_string(
    "extern \"js\" fn \{ffi_name}(obj: JsValue, \{arg_name}: JsValue) -> Unit = \"(obj, \{self.original_name}) => { obj.\{self.original_name} = \{self.original_name}; }\"",
  )
  ..write_string("\n\n")

  // Emit default trait method implementation
  let method_name = safe_identifier(self.original_name)
  code
  ..write_string(
    "impl T\{trait_name} with set_\{method_name}(self : Self, \{arg_name} : \{self.arg_type}) -> Unit {\n",
  )
  ..write_string(
    "  \{ffi_name}(TJsValue::to_js(self), TJsValue::to_js(\{arg_name}))\n",
  )
  ..write_string("}")
  Code(code.to_string())
}

//============================ Static Attribute Get Method Emit ===================

///|
struct StaticAttributeGetMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  original_name : String // Original attribute name from IDL, eg "title"
  return_type : String
} derive(Show, ToJson)

///|
impl InterfaceMethodEmit for StaticAttributeGetMethodEmit with decl_emit(
  _self : StaticAttributeGetMethodEmit,
) -> Code {
  Code("") // Static attributes are not included in trait declarations
}

///|
impl InterfaceMethodEmit for StaticAttributeGetMethodEmit with impl_emit(
  self : StaticAttributeGetMethodEmit,
) -> Code {
  // Emit FFI function
  let ret_type_str = self.return_type
  let trait_name = self.interface_name
  let ffi_name = "\{snake_case(trait_name)}_\{snake_case(self.original_name)}_ffi"
  let code = StringBuilder::new()
  code
  ..write_string(
    "extern \"js\" fn \{ffi_name}() -> \{ret_type_str} = \"() => \{trait_name}.\{self.original_name}\"",
  )
  ..write_string("\n\n")

  // Emit static attribute getter implementation
  let method_name = safe_identifier(self.original_name)
  code
  ..write_string(
    "pub fn \{trait_name}::\{method_name}() -> \{ret_type_str} {\n",
  )
  ..write_string("  \{ffi_name}()\n")
  ..write_string("}")
  Code(code.to_string())
}

//============================ Method Emit Helpers ============================

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
