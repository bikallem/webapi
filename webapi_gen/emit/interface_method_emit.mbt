///|
/// Trait for emitting interface methods.
trait InterfaceMethodEmit: ToJson + Show {
  decl_emit(self : Self) -> Code // Generate method declaration code
  impl_emit(self : Self) -> Code // Generate method implementation code (no FFI)
  ffi_emit_js(self : Self) -> Code // Generate JS FFI declaration
  ffi_emit_wasm(self : Self, module_name : String) -> Code // Generate wasm-gc FFI declaration
}

///|
/// Emits the method body: either a direct FFI call or a null-checking wrapper.
fn emit_method_body(
  code : StringBuilder,
  ffi_name : String,
  call_args : String,
  optional_return : Bool,
  void_return~ : Bool = false,
) -> Unit {
  if optional_return {
    code
    ..write_string("  let result = \{ffi_name}(\{call_args})\n")
    .write_string(
      "  if JsValue::is_null(result) {\n    None\n  } else {\n    Some(result.unsafe_cast())\n  }\n",
    )
  } else if void_return {
    code.write_string("  \{ffi_name}(\{call_args})\n")
  } else {
    code.write_string("  \{ffi_name}(\{call_args}).unsafe_cast()\n")
  }
  code.write_string("}")
}

//============================ Regular Method Emit ============================

///|
/// Regular trait method emission.
struct RegularMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  original_name : String // Original method name from IDL, eg "getElementById"
  return_type : @type_mapping.MethodReturn
  args : Array[@type_mapping.MethodArg]
} derive(Show, ToJson)

///|
impl InterfaceMethodEmit for RegularMethodEmit with decl_emit(
  self : RegularMethodEmit,
) -> Code {
  let args = trait_method_decl_args(self.args)
  Code(
    "  \{@type_mapping.safe_identifier(self.original_name)}(\{args}) -> \{self.return_type.type_name()} = _",
  )
}

///|
fn RegularMethodEmit::ffi_name(self : RegularMethodEmit) -> String {
  "\{@type_mapping.snake_case(self.interface_name)}_\{@type_mapping.snake_case(self.original_name)}_ffi"
}

///|
fn RegularMethodEmit::ffi_ret_type(self : RegularMethodEmit) -> String {
  // Always return JsValue for non-void returns.
  // This ensures wasm-gc compatibility (Array[T], function types etc. aren't valid stub types).
  // The shared wrapper uses .unsafe_cast() to convert back to the actual type.
  let type_name = self.return_type.type_.name()
  if type_name == "Unit" {
    "Unit"
  } else {
    "JsValue"
  }
}

///|
fn RegularMethodEmit::ffi_argnames(self : RegularMethodEmit) -> Array[String] {
  self.args.map(arg => {
    match arg.type_ {
      @type_mapping.ArgMbtType::Self => "obj"
      _ => arg.name
    }
  })
}

///|
impl InterfaceMethodEmit for RegularMethodEmit with ffi_emit_js(
  self : RegularMethodEmit,
) -> Code {
  let ffi_ret_type = self.ffi_ret_type()
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.ffi_argnames()
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  let ffi_js_decl_args = ffi_argnames.join(", ")
  let ffi_js_call_args = ffi_argnames[1:].join(", ")
  Code(
    "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{ffi_ret_type} = \"(\{ffi_js_decl_args}) => obj.\{self.original_name}(\{ffi_js_call_args})\"",
  )
}

///|
impl InterfaceMethodEmit for RegularMethodEmit with ffi_emit_wasm(
  self : RegularMethodEmit,
  module_name : String,
) -> Code {
  let ffi_ret_type = self.ffi_ret_type()
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.ffi_argnames()
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  Code(
    "fn \{ffi_name}(\{ffi_args}) -> \{ffi_ret_type} = \"\{module_name}\" \"\{self.original_name}\"",
  )
}

///|
impl InterfaceMethodEmit for RegularMethodEmit with impl_emit(
  self : RegularMethodEmit,
) -> Code {
  let trait_name = self.interface_name
  let ffi_name = self.ffi_name()
  let code = StringBuilder::new()

  // Emit MDN documentation comment
  let mdn_url = mdn_member_url(trait_name, self.original_name)
  code.write_string("/// [\{trait_name}.\{self.original_name}](\{mdn_url})\n")

  // Emit default trait method implementation
  let method_args = trait_method_impl_args(self.args)
  let method_name = @type_mapping.safe_identifier(self.original_name)
  let call_args = func_call_args(self.args)
  code.write_string(
    "impl T\{trait_name} with \{method_name}(\{method_args}) -> \{self.return_type.type_name()} {\n",
  )
  emit_method_body(
    code,
    ffi_name,
    call_args,
    self.return_type.optional,
    void_return=self.return_type.type_.name() == "Unit",
  )
  Code(code.to_string())
}

//============================ Static Method Emit =================================

///|
struct StaticMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  original_name : String // Original method name from IDL, eg "createElement"
  return_type : @type_mapping.MethodReturn
  args : Array[@type_mapping.MethodArg]
} derive(Show, ToJson)

///|
impl InterfaceMethodEmit for StaticMethodEmit with decl_emit(
  _self : StaticMethodEmit,
) -> Code {
  Code("") // Static methods are not included in trait declarations
}

///|
fn StaticMethodEmit::ffi_name(self : StaticMethodEmit) -> String {
  "\{@type_mapping.snake_case(self.interface_name)}_\{@type_mapping.snake_case(self.original_name)}_ffi"
}

///|
fn StaticMethodEmit::ffi_ret_type(self : StaticMethodEmit) -> String {
  let type_name = self.return_type.type_.name()
  if type_name == "Unit" {
    "Unit"
  } else {
    "JsValue"
  }
}

///|
impl InterfaceMethodEmit for StaticMethodEmit with ffi_emit_js(
  self : StaticMethodEmit,
) -> Code {
  let ffi_ret_type = self.ffi_ret_type()
  let trait_name = self.interface_name
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.args.map(arg => arg.name)
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  let ffi_js_args = ffi_argnames.join(", ")
  Code(
    "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{ffi_ret_type} = \"(\{ffi_js_args}) => \{trait_name}.\{self.original_name}(\{ffi_js_args})\"",
  )
}

///|
impl InterfaceMethodEmit for StaticMethodEmit with ffi_emit_wasm(
  self : StaticMethodEmit,
  module_name : String,
) -> Code {
  let ffi_ret_type = self.ffi_ret_type()
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.args.map(arg => arg.name)
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  Code(
    "fn \{ffi_name}(\{ffi_args}) -> \{ffi_ret_type} = \"\{module_name}\" \"\{self.original_name}\"",
  )
}

///|
impl InterfaceMethodEmit for StaticMethodEmit with impl_emit(
  self : StaticMethodEmit,
) -> Code {
  let trait_name = self.interface_name
  let ffi_name = self.ffi_name()
  let code = StringBuilder::new()

  // Emit MDN documentation comment
  let mdn_url = mdn_member_url(trait_name, self.original_name)
  code.write_string("/// [\{trait_name}.\{self.original_name}](\{mdn_url})\n")

  // Emit static method implementation
  let method_args = trait_method_impl_args(self.args)
  let method_name = @type_mapping.safe_identifier(self.original_name)
  let call_args = func_call_args(self.args)
  code.write_string(
    "pub fn \{trait_name}::\{method_name}(\{method_args}) -> \{self.return_type.type_name()} {\n",
  )
  emit_method_body(
    code,
    ffi_name,
    call_args,
    self.return_type.optional,
    void_return=self.return_type.type_.name() == "Unit",
  )
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
    "  \{@type_mapping.safe_identifier(self.original_name)}(self : Self) -> \{self.return_type} = _",
  )
}

///|
fn AttributeGetMethodEmit::ffi_name(self : AttributeGetMethodEmit) -> String {
  "\{@type_mapping.snake_case(self.interface_name)}_\{@type_mapping.snake_case(self.original_name)}_ffi"
}

///|
impl InterfaceMethodEmit for AttributeGetMethodEmit with ffi_emit_js(
  self : AttributeGetMethodEmit,
) -> Code {
  let ffi_name = self.ffi_name()
  Code(
    "extern \"js\" fn \{ffi_name}(obj: JsValue) -> JsValue = \"(obj) => obj.\{self.original_name}\"",
  )
}

///|
impl InterfaceMethodEmit for AttributeGetMethodEmit with ffi_emit_wasm(
  self : AttributeGetMethodEmit,
  module_name : String,
) -> Code {
  let ffi_name = self.ffi_name()
  Code(
    "fn \{ffi_name}(obj: JsValue) -> JsValue = \"\{module_name}\" \"get_\{self.original_name}\"",
  )
}

///|
impl InterfaceMethodEmit for AttributeGetMethodEmit with impl_emit(
  self : AttributeGetMethodEmit,
) -> Code {
  let ret_type_str = self.return_type
  let trait_name = self.interface_name
  let ffi_name = self.ffi_name()
  let code = StringBuilder::new()

  // Emit MDN documentation comment
  let mdn_url = mdn_member_url(trait_name, self.original_name)
  code.write_string("/// [\{trait_name}.\{self.original_name}](\{mdn_url})\n")

  // Emit default trait method implementation
  let method_name = @type_mapping.safe_identifier(self.original_name)
  code
  ..write_string(
    "impl T\{trait_name} with \{method_name}(self : Self) -> \{ret_type_str} {\n",
  )
  ..write_string("  \{ffi_name}(TJsValue::to_js(self)).unsafe_cast()\n")
  .write_string("}")
  Code(code.to_string())
}

//============================ Attribute Set Method Emit ==========================

///|
struct AttributeSetMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  original_name : String // Original attribute name from IDL, eg "title"
  args : Array[@type_mapping.MethodArg]
} derive(Show, ToJson)

///|
impl InterfaceMethodEmit for AttributeSetMethodEmit with decl_emit(
  self : AttributeSetMethodEmit,
) -> Code {
  let args = trait_method_decl_args(self.args)
  Code(
    "  set_\{@type_mapping.safe_identifier(self.original_name)}(\{args}) -> Unit = _",
  )
}

///|
fn AttributeSetMethodEmit::ffi_name(self : AttributeSetMethodEmit) -> String {
  "\{@type_mapping.snake_case(self.interface_name)}_set_\{@type_mapping.snake_case(self.original_name)}_ffi"
}

///|
impl InterfaceMethodEmit for AttributeSetMethodEmit with ffi_emit_js(
  self : AttributeSetMethodEmit,
) -> Code {
  let ffi_name = self.ffi_name()
  let arg_name = @type_mapping.safe_identifier(self.original_name)
  Code(
    "extern \"js\" fn \{ffi_name}(obj: JsValue, \{arg_name}: JsValue) -> Unit = \"(obj, \{self.original_name}) => { obj.\{self.original_name} = \{self.original_name}; }\"",
  )
}

///|
impl InterfaceMethodEmit for AttributeSetMethodEmit with ffi_emit_wasm(
  self : AttributeSetMethodEmit,
  module_name : String,
) -> Code {
  let ffi_name = self.ffi_name()
  let arg_name = @type_mapping.safe_identifier(self.original_name)
  Code(
    "fn \{ffi_name}(obj: JsValue, \{arg_name}: JsValue) -> Unit = \"\{module_name}\" \"set_\{self.original_name}\"",
  )
}

///|
impl InterfaceMethodEmit for AttributeSetMethodEmit with impl_emit(
  self : AttributeSetMethodEmit,
) -> Code {
  let trait_name = self.interface_name
  let ffi_name = self.ffi_name()
  let code = StringBuilder::new()

  // Emit MDN documentation comment
  let mdn_url = mdn_member_url(trait_name, self.original_name)
  code.write_string("/// [\{trait_name}.\{self.original_name}](\{mdn_url})\n")

  // Emit default trait method implementation
  let method_name = @type_mapping.safe_identifier(self.original_name)
  let method_args = trait_method_impl_args(self.args)
  let call_args = func_call_args(self.args)
  code
  ..write_string(
    "impl T\{trait_name} with set_\{method_name}(\{method_args}) -> Unit {\n",
  )
  ..write_string("  \{ffi_name}(\{call_args})\n")
  .write_string("}")
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
fn StaticAttributeGetMethodEmit::ffi_name(
  self : StaticAttributeGetMethodEmit,
) -> String {
  "\{@type_mapping.snake_case(self.interface_name)}_\{@type_mapping.snake_case(self.original_name)}_ffi"
}

///|
impl InterfaceMethodEmit for StaticAttributeGetMethodEmit with ffi_emit_js(
  self : StaticAttributeGetMethodEmit,
) -> Code {
  let trait_name = self.interface_name
  let ffi_name = self.ffi_name()
  Code(
    "extern \"js\" fn \{ffi_name}() -> JsValue = \"() => \{trait_name}.\{self.original_name}\"",
  )
}

///|
impl InterfaceMethodEmit for StaticAttributeGetMethodEmit with ffi_emit_wasm(
  self : StaticAttributeGetMethodEmit,
  module_name : String,
) -> Code {
  let ffi_name = self.ffi_name()
  Code(
    "fn \{ffi_name}() -> JsValue = \"\{module_name}\" \"get_\{self.original_name}\"",
  )
}

///|
impl InterfaceMethodEmit for StaticAttributeGetMethodEmit with impl_emit(
  self : StaticAttributeGetMethodEmit,
) -> Code {
  let ret_type_str = self.return_type
  let trait_name = self.interface_name
  let ffi_name = self.ffi_name()
  let code = StringBuilder::new()

  // Emit MDN documentation comment
  let mdn_url = mdn_member_url(trait_name, self.original_name)
  code.write_string("/// [\{trait_name}.\{self.original_name}](\{mdn_url})\n")

  // Emit static attribute getter implementation
  let method_name = @type_mapping.safe_identifier(self.original_name)
  code
  ..write_string(
    "pub fn \{trait_name}::\{method_name}() -> \{ret_type_str} {\n",
  )
  ..write_string("  \{ffi_name}().unsafe_cast()\n")
  .write_string("}")
  Code(code.to_string())
}

//============================ Method Emit Helpers ============================

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
fn func_call_args(args : Array[@type_mapping.MethodArg]) -> String {
  args
  .map(arg => {
    let arg_name = @type_mapping.safe_identifier(arg.name)
    if (
        arg.type_ is @type_mapping.Union(_) &&
        arg.optional &&
        arg.default_value is Some(_)
      ) ||
      (arg.type_ is @type_mapping.Union(_) && !arg.optional) {
      "\{arg_name}.to_js()"
    } else if arg.type_ is @type_mapping.Union(_) &&
      arg.optional &&
      arg.default_value is None {
      "match \{arg_name} {\nSome(v) => v.to_js()\nNone => JsValue::undefined()\n},"
    } else if arg.optional && arg.default_value is None {
      "opt_to_js(\{arg_name})"
    } else {
      "TJsValue::to_js(\{arg_name})"
    }
  })
  .join(", ")
}
