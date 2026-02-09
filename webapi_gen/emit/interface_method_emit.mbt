///|
/// Trait for emitting interface methods.
trait InterfaceMethodEmit: ToJson + Show {
  decl_emit(self : Self) -> Code // Generate method declaration code
  impl_emit(self : Self) -> Code // Generate method implementation code (no FFI)
  ffi_emit_js(self : Self) -> Code // Generate JS FFI declaration
  ffi_emit_wasm(self : Self, module_name : String) -> Code // Generate wasm-gc FFI declaration
}

///|
/// Other types that are valid as wasm-gc import return types.
/// These are all externref (#external) types or Unit.
let wasm_valid_other_types : Array[String] = [
  "JsValue", "Unit", "JsUndefined",
  // Typed arrays — all #external types
   "Uint8Array", "Uint8ClampedArray", "Int8Array", "Uint16Array", "Int16Array", "Uint32Array",
  "Int32Array", "Float16Array", "Float32Array", "Float64Array", "BigInt64Array",
  "BigUint64Array",
  // Buffer types — #external
   "DataView", "ArrayBuffer", "SharedArrayBuffer",
]

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
      wasm_valid_other_types.contains(name)
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
/// Emit wasm-gc FFI declaration with return-type dispatch.
/// Handles the four cases: void/optional, String, valid stub type, or JsValue wrapper.
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
    // Use jsvalue_to_string wrapper: externref → String? → unwrap → String.
    let raw_name = ffi_name + "_wasm"
    let call_fwd = ffi_argnames.join(", ")
    Code(
      "fn \{raw_name}(\{ffi_args}) -> JsValue = \"\{module_name}\" \"\{import_name}\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> String {\n  jsvalue_to_string(\{raw_name}(\{call_fwd}))\n}",
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
  let ffi_js_decl_args = ffi_argnames.join(", ")
  let ffi_js_call_args = ffi_argnames[1:].join(", ")
  let ret_name = self.return_type.type_.name()
  let needs_wrapper = not(self.return_type.optional) && ret_name != "Unit"
  if needs_wrapper {
    let raw_name = ffi_name + "_js"
    let call_fwd = ffi_argnames.join(", ")
    let ret_type = self.return_type.type_name()
    Code(
      "extern \"js\" fn \{raw_name}(\{ffi_args}) -> JsValue = \"(\{ffi_js_decl_args}) => obj.\{self.original_name}(\{ffi_js_call_args})\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> \{ret_type} {\n  \{raw_name}(\{call_fwd}).unsafe_cast()\n}",
    )
  } else {
    let ffi_ret_type = if ret_name == "Unit" { "Unit" } else { "JsValue" }
    Code(
      "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{ffi_ret_type} = \"(\{ffi_js_decl_args}) => obj.\{self.original_name}(\{ffi_js_call_args})\"",
    )
  }
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
  let trait_name = self.interface_name
  let ffi_name = self.ffi_name()
  let ffi_argnames = self.args.map(arg => arg.name)
  let ffi_args = ffi_argnames.map(name => "\{name}: JsValue").join(", ")
  let ffi_js_args = ffi_argnames.join(", ")
  let ret_name = self.return_type.type_.name()
  let needs_wrapper = not(self.return_type.optional) && ret_name != "Unit"
  if needs_wrapper {
    let raw_name = ffi_name + "_js"
    let call_fwd = ffi_argnames.join(", ")
    let ret_type = self.return_type.type_name()
    Code(
      "extern \"js\" fn \{raw_name}(\{ffi_args}) -> JsValue = \"(\{ffi_js_args}) => \{trait_name}.\{self.original_name}(\{ffi_js_args})\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> \{ret_type} {\n  \{raw_name}(\{call_fwd}).unsafe_cast()\n}",
    )
  } else {
    let ffi_ret_type = if ret_name == "Unit" { "Unit" } else { "JsValue" }
    Code(
      "extern \"js\" fn \{ffi_name}(\{ffi_args}) -> \{ffi_ret_type} = \"(\{ffi_js_args}) => \{trait_name}.\{self.original_name}(\{ffi_js_args})\"",
    )
  }
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
  let ffi_name = self.ffi_name()
  if self.return_type.has_suffix("?") {
    // Optional: return JsValue directly for null-checking via unsafe_cast
    Code(
      "extern \"js\" fn \{ffi_name}(obj: JsValue) -> JsValue = \"(obj) => obj.\{self.original_name}\"",
    )
  } else {
    // Non-optional: wrapper converts JsValue to actual type
    let raw_name = ffi_name + "_js"
    Code(
      "extern \"js\" fn \{raw_name}(obj: JsValue) -> JsValue = \"(obj) => obj.\{self.original_name}\"\n\n///|\nfn \{ffi_name}(obj: JsValue) -> \{self.return_type} {\n  \{raw_name}(obj).unsafe_cast()\n}",
    )
  }
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
  if self.return_type.has_suffix("?") {
    Code(
      "extern \"js\" fn \{ffi_name}() -> JsValue = \"() => \{trait_name}.\{self.original_name}\"",
    )
  } else {
    let raw_name = ffi_name + "_js"
    Code(
      "extern \"js\" fn \{raw_name}() -> JsValue = \"() => \{trait_name}.\{self.original_name}\"\n\n///|\nfn \{ffi_name}() -> \{self.return_type} {\n  \{raw_name}().unsafe_cast()\n}",
    )
  }
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
