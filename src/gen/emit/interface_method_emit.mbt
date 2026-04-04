///|
/// Trait for emitting interface methods.
trait InterfaceMethodEmit: ToJson + Debug {
  decl_emit(self : Self) -> Code // Generate method declaration code
  impl_emit(self : Self) -> Code // Generate method implementation code (no FFI)
  ffi_emit_js(self : Self) -> Code // Generate JS FFI declaration
  ffi_emit_wasm(self : Self, module_name : String) -> Code // Generate wasm-gc FFI declaration
  convenience_decl_emit(self : Self) -> Code = _ // Generate convenience trait declaration for optional interface returns
  convenience_impl_emit(self : Self) -> Code = _ // Generate convenience default trait impl for optional interface returns
}

///|
impl InterfaceMethodEmit with convenience_decl_emit(_self) -> Code {
  Code("")
}

///|
impl InterfaceMethodEmit with convenience_impl_emit(_self) -> Code {
  Code("")
}

//============================ Regular Method Emit ============================

///|
/// Regular trait method emission.
struct RegularMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  method_name : String // Emitted MoonBit method name, eg "fill_2" for overloads
  webidl_name : String // Original WebIDL method name, eg "fill"
  return_type : @type_mapping.MethodReturn
  args : Array[@type_mapping.MethodArg]
} derive(Debug, ToJson)

///|
impl InterfaceMethodEmit for RegularMethodEmit with decl_emit(
  self : RegularMethodEmit,
) -> Code {
  let args = trait_method_decl_args(self.args)
  let name = maybe_opt_name(
    @type_mapping.safe_identifier(self.method_name),
    self.return_type,
  )
  Code("  \{name}(\{args}) -> \{self.return_type.type_name()} = _")
}

///|
fn RegularMethodEmit::ffi_name(self : RegularMethodEmit) -> String {
  make_ffi_name(self.interface_name, self.method_name)
}

///|
fn RegularMethodEmit::ffi_argnames(self : RegularMethodEmit) -> Array[String] {
  make_ffi_argnames(self.args)
}

///|
impl InterfaceMethodEmit for RegularMethodEmit with ffi_emit_js(
  self : RegularMethodEmit,
) -> Code {
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.ffi_argnames()
  let ffi_args = make_ffi_args(ffi_argnames)
  let ffi_js_call_args = make_js_call_args(self.args[1:])

  emit_js_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=self.return_type.is_void(),
    is_enum=self.return_type.type_.is_enum(),
    "obj.\{self.webidl_name}(\{ffi_js_call_args})",
  )
}

///|
impl InterfaceMethodEmit for RegularMethodEmit with ffi_emit_wasm(
  self : RegularMethodEmit,
  module_name : String,
) -> Code {
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.ffi_argnames()
  let ffi_args = make_ffi_args(ffi_argnames)

  emit_wasm_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=self.return_type.is_void(),
    is_string=is_string_type(self.return_type.type_),
    is_enum=self.return_type.type_.is_enum(),
    is_valid_stub=is_wasm_valid_stub_type(self.return_type.type_),
    module_name,
    self.method_name,
  )
}

///|
impl InterfaceMethodEmit for RegularMethodEmit with impl_emit(
  self : RegularMethodEmit,
) -> Code {
  emit_trait_method_impl(
    self.interface_name,
    self.webidl_name,
    self.method_name,
    self.args,
    self.return_type,
    self.ffi_name(),
  )
}

///|
impl InterfaceMethodEmit for RegularMethodEmit with convenience_decl_emit(
  self : RegularMethodEmit,
) -> Code {
  convenience_decl_code(self.return_type, self.args, self.method_name)
}

///|
impl InterfaceMethodEmit for RegularMethodEmit with convenience_impl_emit(
  self : RegularMethodEmit,
) -> Code {
  convenience_impl_code(
    self.return_type,
    self.args,
    self.interface_name,
    self.method_name,
    "self.",
    1,
  )
}

//============================ Static Method Emit =================================

///|
struct StaticMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  js_name : String // Name used in JS FFI bodies, eg. "console" (may differ from interface_name)
  method_name : String // Emitted MoonBit method name, eg "fill_2" for overloads
  webidl_name : String // Original WebIDL method name, eg "fill"
  return_type : @type_mapping.MethodReturn
  args : Array[@type_mapping.MethodArg]
} derive(Debug, ToJson)

///|
impl InterfaceMethodEmit for StaticMethodEmit with decl_emit(
  _self : StaticMethodEmit,
) -> Code {
  Code("") // Static methods are not included in trait declarations
}

///|
fn StaticMethodEmit::ffi_name(self : StaticMethodEmit) -> String {
  make_ffi_name(self.interface_name, self.method_name)
}

///|
impl InterfaceMethodEmit for StaticMethodEmit with ffi_emit_js(
  self : StaticMethodEmit,
) -> Code {
  let ffi_name = self.ffi_name()
  let ffi_argnames = make_ffi_argnames(self.args)
  let ffi_args = make_ffi_args(ffi_argnames)
  let ffi_js_args = make_js_call_args(self.args[:])

  emit_js_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=self.return_type.is_void(),
    is_enum=self.return_type.type_.is_enum(),
    "\{self.js_name}.\{self.webidl_name}(\{ffi_js_args})",
  )
}

///|
impl InterfaceMethodEmit for StaticMethodEmit with ffi_emit_wasm(
  self : StaticMethodEmit,
  module_name : String,
) -> Code {
  let ffi_name = self.ffi_name()
  let ffi_argnames = make_ffi_argnames(self.args)
  let ffi_args = make_ffi_args(ffi_argnames)

  emit_wasm_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=self.return_type.is_void(),
    is_string=is_string_type(self.return_type.type_),
    is_enum=self.return_type.type_.is_enum(),
    is_valid_stub=is_wasm_valid_stub_type(self.return_type.type_),
    module_name,
    self.method_name,
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
  let mdn_url = mdn_member_url(trait_name, self.webidl_name)
  code.write_string("/// [\{trait_name}.\{self.webidl_name}](\{mdn_url})\n")

  // Emit static method implementation
  let method_args = trait_method_impl_args(self.args)
  let method_name = maybe_opt_name(
    @type_mapping.safe_identifier(self.method_name),
    self.return_type,
  )
  let call_args = func_call_args(self.args)
  code.write_string(
    "pub fn \{trait_name}::\{method_name}(\{method_args}) -> \{self.return_type.type_name()} {\n",
  )
  emit_method_body(code, ffi_name, call_args, self.return_type)
  Code(code.to_string())
}

///|
impl InterfaceMethodEmit for StaticMethodEmit with convenience_impl_emit(
  self : StaticMethodEmit,
) -> Code {
  convenience_impl_code(
    self.return_type,
    self.args,
    self.interface_name,
    self.method_name,
    "\{self.interface_name}::",
    0,
    is_static=true,
  )
}

//============================ Attribute Get Method Emit ==========================

///|
struct AttributeGetMethodEmit {
  interface_name : String // Name of the interface this method belongs to, eg. Document
  original_name : String // Original attribute name from IDL, eg "title"
  return_type : String
  is_enum_type : Bool // Whether the return type is an enum (needs string conversion on wasm-gc)
  is_valid_wasm_stub : Bool // Whether the return type can be used directly as a wasm-gc import return
} derive(Debug, ToJson)

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
  make_ffi_name(self.interface_name, self.original_name)
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
    is_enum=self.is_enum_type,
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
    is_string=is_string_type_name(self.return_type),
    is_enum=self.is_enum_type,
    is_valid_stub=self.is_valid_wasm_stub,
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
    let helper = optional_return_helper(ret_type_str)
    code.write_string("  \{ffi_name}(TJsValue::to_js(self)).\{helper}()\n")
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
} derive(Debug, ToJson)

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
  make_ffi_name(self.interface_name, "set_\{self.original_name}")
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
  is_enum_type : Bool // Whether the return type is an enum (needs string conversion on wasm-gc)
  is_valid_wasm_stub : Bool // Whether the return type can be used directly as a wasm-gc import return
} derive(Debug, ToJson)

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
  make_ffi_name(self.interface_name, self.original_name)
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
    is_enum=self.is_enum_type,
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
    is_string=is_string_type_name(self.return_type),
    is_enum=self.is_enum_type,
    is_valid_stub=self.is_valid_wasm_stub,
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
    let helper = optional_return_helper(ret_type_str)
    code.write_string("  \{ffi_name}().\{helper}()\n")
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
} derive(Debug, ToJson)

///|
impl InterfaceMethodEmit for SpecialOperationMethodEmit with decl_emit(
  self : SpecialOperationMethodEmit,
) -> Code {
  let args = trait_method_decl_args(self.args)
  let name = maybe_opt_name(
    @type_mapping.safe_identifier(self.original_name),
    self.return_type,
  )
  Code("  \{name}(\{args}) -> \{self.return_type.type_name()} = _")
}

///|
fn SpecialOperationMethodEmit::ffi_name(
  self : SpecialOperationMethodEmit,
) -> String {
  make_ffi_name(self.interface_name, self.original_name)
}

///|
fn SpecialOperationMethodEmit::ffi_argnames(
  self : SpecialOperationMethodEmit,
) -> Array[String] {
  make_ffi_argnames(self.args)
}

///|
impl InterfaceMethodEmit for SpecialOperationMethodEmit with ffi_emit_js(
  self : SpecialOperationMethodEmit,
) -> Code {
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.ffi_argnames()
  let ffi_args = make_ffi_args(ffi_argnames)

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
    is_void=self.return_type.is_void(),
    is_enum=self.return_type.type_.is_enum(),
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
  let ffi_args = make_ffi_args(ffi_argnames)

  emit_wasm_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=self.return_type.is_void(),
    is_string=is_string_type(self.return_type.type_),
    is_enum=self.return_type.type_.is_enum(),
    is_valid_stub=is_wasm_valid_stub_type(self.return_type.type_),
    module_name,
    self.original_name,
  )
}

///|
impl InterfaceMethodEmit for SpecialOperationMethodEmit with impl_emit(
  self : SpecialOperationMethodEmit,
) -> Code {
  emit_trait_method_impl(
    self.interface_name,
    self.original_name,
    self.original_name,
    self.args,
    self.return_type,
    self.ffi_name(),
  )
}

///|
impl InterfaceMethodEmit for SpecialOperationMethodEmit with convenience_decl_emit(
  self : SpecialOperationMethodEmit,
) -> Code {
  convenience_decl_code(self.return_type, self.args, self.original_name)
}

///|
impl InterfaceMethodEmit for SpecialOperationMethodEmit with convenience_impl_emit(
  self : SpecialOperationMethodEmit,
) -> Code {
  convenience_impl_code(
    self.return_type,
    self.args,
    self.interface_name,
    self.original_name,
    "self.",
    1,
  )
}
