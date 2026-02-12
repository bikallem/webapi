///|
/// Trait for emitting interface methods.
trait InterfaceMethodEmit: ToJson + Show {
  decl_emit(self : Self) -> Code // Generate method declaration code
  impl_emit(self : Self) -> Code // Generate method implementation code (no FFI)
  ffi_emit_js(self : Self) -> Code // Generate JS FFI declaration
  ffi_emit_wasm(self : Self, module_name : String) -> Code // Generate wasm-gc FFI declaration
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
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.ffi_argnames()
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  let ffi_js_call_args = self.args[1:]
    .map(fn(arg) {
      let name = js_safe(arg.name)
      if arg.variadic {
        "...\{name}"
      } else {
        name
      }
    })
    .join(", ")
  let ret_name = self.return_type.type_.name()
  emit_js_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=ret_name == "Unit",
    "obj.\{self.original_name}(\{ffi_js_call_args})",
  )
}

///|
impl InterfaceMethodEmit for RegularMethodEmit with ffi_emit_wasm(
  self : RegularMethodEmit,
  module_name : String,
) -> Code {
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.ffi_argnames()
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  let ret_name = self.return_type.type_.name()
  emit_wasm_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=ret_name == "Unit",
    is_string=is_string_return(self.return_type.type_),
    is_valid_stub=is_wasm_valid_stub_type(self.return_type.type_),
    module_name,
    self.original_name,
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
  let ret_name = self.return_type.type_.name()
  emit_method_body(
    code,
    ffi_name,
    call_args,
    self.return_type.optional,
    void_return=ret_name == "Unit",
  )
  Code(code.to_string())
}

//============================ Static Method Emit =================================

///|
struct StaticMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  js_name : String // Name used in JS FFI bodies, eg. "console" (may differ from interface_name)
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
impl InterfaceMethodEmit for StaticMethodEmit with ffi_emit_js(
  self : StaticMethodEmit,
) -> Code {
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.args.map(arg => arg.name)
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  let ffi_js_args = self.args
    .map(fn(arg) {
      let name = js_safe(arg.name)
      if arg.variadic {
        "...\{name}"
      } else {
        name
      }
    })
    .join(", ")
  let ret_name = self.return_type.type_.name()
  emit_js_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=ret_name == "Unit",
    "\{self.js_name}.\{self.original_name}(\{ffi_js_args})",
  )
}

///|
impl InterfaceMethodEmit for StaticMethodEmit with ffi_emit_wasm(
  self : StaticMethodEmit,
  module_name : String,
) -> Code {
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.args.map(arg => arg.name)
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  let ret_name = self.return_type.type_.name()
  emit_wasm_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=ret_name == "Unit",
    is_string=is_string_return(self.return_type.type_),
    is_valid_stub=is_wasm_valid_stub_type(self.return_type.type_),
    module_name,
    self.original_name,
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
  let ret_name = self.return_type.type_.name()
  emit_method_body(
    code,
    ffi_name,
    call_args,
    self.return_type.optional,
    void_return=ret_name == "Unit",
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
  emit_js_ffi_with_return(
    self.ffi_name(),
    "obj: JsValue",
    ["obj"],
    self.return_type,
    is_optional=self.return_type.has_suffix("?"),
    is_void=false,
    "obj.\{self.original_name}",
  )
}

///|
impl InterfaceMethodEmit for AttributeGetMethodEmit with ffi_emit_wasm(
  self : AttributeGetMethodEmit,
  module_name : String,
) -> Code {
  let ffi_name = self.ffi_name()
  emit_wasm_ffi_with_return(
    ffi_name,
    "obj: JsValue",
    ["obj"],
    self.return_type,
    is_optional=self.return_type.has_suffix("?"),
    is_void=false,
    is_string=self.return_type == "String",
    is_valid_stub=true, // Attribute getters always return valid types (non-parameterized)
    module_name,
    "get_\{self.original_name}",
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
  code.write_string(
    "impl T\{trait_name} with \{method_name}(self : Self) -> \{ret_type_str} {\n",
  )
  if ret_type_str.has_suffix("?") {
    // Optional: FFI returns JsValue, use unsafe_cast to convert to Option type
    code.write_string("  \{ffi_name}(TJsValue::to_js(self)).unsafe_cast()\n")
  } else {
    // Non-optional: FFI wrapper returns the correct type directly
    code.write_string("  \{ffi_name}(TJsValue::to_js(self))\n")
  }
  code.write_string("}")
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
  let js_arg_name = js_safe(self.original_name)
  Code(
    "extern \"js\" fn \{ffi_name}(obj: JsValue, \{arg_name}: JsValue) -> Unit = \"(obj, \{js_arg_name}) => { obj.\{self.original_name} = \{js_arg_name}; }\"",
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
  js_name : String // Name used in JS FFI bodies, eg. "console" (may differ from interface_name)
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
  emit_js_ffi_with_return(
    self.ffi_name(),
    "",
    [],
    self.return_type,
    is_optional=self.return_type.has_suffix("?"),
    is_void=false,
    "\{self.js_name}.\{self.original_name}",
  )
}

///|
impl InterfaceMethodEmit for StaticAttributeGetMethodEmit with ffi_emit_wasm(
  self : StaticAttributeGetMethodEmit,
  module_name : String,
) -> Code {
  let ffi_name = self.ffi_name()
  emit_wasm_ffi_with_return(
    ffi_name,
    "",
    [],
    self.return_type,
    is_optional=self.return_type.has_suffix("?"),
    is_void=false,
    is_string=self.return_type == "String",
    is_valid_stub=true, // Static attribute getters always return valid types
    module_name,
    "get_\{self.original_name}",
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
  code.write_string(
    "pub fn \{trait_name}::\{method_name}() -> \{ret_type_str} {\n",
  )
  if ret_type_str.has_suffix("?") {
    code.write_string("  \{ffi_name}().unsafe_cast()\n")
  } else {
    code.write_string("  \{ffi_name}()\n")
  }
  code.write_string("}")
  Code(code.to_string())
}

//============================ Special Operation Method Emit ====================

///|
/// Unnamed special operation (getter/setter/deleter) using bracket notation.
/// Named special operations reuse RegularMethodEmit since they're structurally identical.
struct SpecialOperationMethodEmit {
  interface_name : String
  original_name : String // synthetic: "get", "set", "delete_"
  return_type : @type_mapping.MethodReturn
  args : Array[@type_mapping.MethodArg]
  special : @parser.Special // Getter, Setter, Deleter
} derive(Show, ToJson)

///|
impl InterfaceMethodEmit for SpecialOperationMethodEmit with decl_emit(
  self : SpecialOperationMethodEmit,
) -> Code {
  let args = trait_method_decl_args(self.args)
  Code(
    "  \{@type_mapping.safe_identifier(self.original_name)}(\{args}) -> \{self.return_type.type_name()} = _",
  )
}

///|
fn SpecialOperationMethodEmit::ffi_name(
  self : SpecialOperationMethodEmit,
) -> String {
  "\{@type_mapping.snake_case(self.interface_name)}_\{@type_mapping.snake_case(self.original_name)}_ffi"
}

///|
fn SpecialOperationMethodEmit::ffi_argnames(
  self : SpecialOperationMethodEmit,
) -> Array[String] {
  self.args.map(arg => {
    match arg.type_ {
      @type_mapping.ArgMbtType::Self => "obj"
      _ => arg.name
    }
  })
}

///|
impl InterfaceMethodEmit for SpecialOperationMethodEmit with ffi_emit_js(
  self : SpecialOperationMethodEmit,
) -> Code {
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.ffi_argnames()
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  let ret_name = self.return_type.type_.name()
  // Build bracket-notation JS expression
  let js_expr = match self.special {
    Getter => "obj[\{ffi_argnames[1]}]"
    Setter => "{ obj[\{ffi_argnames[1]}] = \{ffi_argnames[2]}; }"
    Deleter => "{ delete obj[\{ffi_argnames[1]}]; }"
  }
  emit_js_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=ret_name == "Unit",
    js_expr,
  )
}

///|
impl InterfaceMethodEmit for SpecialOperationMethodEmit with ffi_emit_wasm(
  self : SpecialOperationMethodEmit,
  module_name : String,
) -> Code {
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.ffi_argnames()
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  let ret_name = self.return_type.type_.name()
  emit_wasm_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=ret_name == "Unit",
    is_string=is_string_return(self.return_type.type_),
    is_valid_stub=is_wasm_valid_stub_type(self.return_type.type_),
    module_name,
    self.original_name,
  )
}

///|
impl InterfaceMethodEmit for SpecialOperationMethodEmit with impl_emit(
  self : SpecialOperationMethodEmit,
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
  let ret_name = self.return_type.type_.name()
  emit_method_body(
    code,
    ffi_name,
    call_args,
    self.return_type.optional,
    void_return=ret_name == "Unit",
  )
  Code(code.to_string())
}
