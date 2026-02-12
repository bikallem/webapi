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
fn is_array_return(type_name : String) -> Bool {
  type_name.has_prefix("Array[")
}

///|
fn array_element_type(type_name : String) -> String {
  String::from_array(type_name.to_array()[6:type_name.length() - 1])
}

///|
/// Determine the conversion expression for array element type on wasm-gc.
/// externref types use unsafe_cast, String uses jsvalue_to_string.
fn array_element_convert(elem_type : String) -> String {
  if elem_type == "String" {
    "jsvalue_to_string"
  } else {
    "JsValue::unsafe_cast"
  }
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
  is_array~ : Bool = false,
  array_elem_convert~ : String = "",
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
  } else if is_array {
    // Array[T]: import as JsValue, iterate JS array to build MoonBit Array
    let raw_name = ffi_name + "_wasm"
    let call_fwd = ffi_argnames.join(", ")
    Code(
      "fn \{raw_name}(\{ffi_args}) -> JsValue = \"\{module_name}\" \"\{import_name}\"\n\n///|\nfn \{ffi_name}(\{ffi_args}) -> \{return_type_name} {\n  jsvalue_to_array(\{raw_name}(\{call_fwd}), \{array_elem_convert})\n}",
    )
  } else if is_valid_stub {
    // Valid stub type: declare import with actual MoonBit type directly
    Code(
      "fn \{ffi_name}(\{ffi_args}) -> \{return_type_name} = \"\{module_name}\" \"\{import_name}\"",
    )
  } else {
    // Invalid stub type: import as JsValue + unsafe_cast wrapper
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
  return_type_name~ : String = "",
) -> Unit {
  if optional_return {
    // Optional: FFI returns JsValue so we can check for null
    code.write_string("  let result = \{ffi_name}(\{call_args})\n")
    let convert = if is_array_return(return_type_name) {
      let elem = array_element_type(return_type_name)
      "jsvalue_to_array(result, \{array_element_convert(elem)})"
    } else if return_type_name == "String" {
      "jsvalue_to_string(result)"
    } else {
      "result.unsafe_cast()"
    }
    code.write_string(
      "  if JsValue::is_null(result) {\n    None\n  } else {\n    Some(\{convert})\n  }\n",
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
  let is_arr = is_array_return(ret_name)
  emit_wasm_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=ret_name == "Unit",
    is_string=is_string_return(self.return_type.type_),
    is_array=is_arr,
    array_elem_convert=if is_arr {
      array_element_convert(array_element_type(ret_name))
    } else {
      ""
    },
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
    return_type_name=ret_name,
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
  let is_arr = is_array_return(ret_name)
  emit_wasm_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=ret_name == "Unit",
    is_string=is_string_return(self.return_type.type_),
    is_array=is_arr,
    array_elem_convert=if is_arr {
      array_element_convert(array_element_type(ret_name))
    } else {
      ""
    },
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
    return_type_name=ret_name,
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
  let ret_type = if self.return_type.has_suffix("?") {
    String::from_array(self.return_type.to_array()[:self.return_type.length() - 1])
  } else {
    self.return_type
  }
  let is_arr = is_array_return(ret_type)
  emit_wasm_ffi_with_return(
    ffi_name,
    "obj: JsValue",
    ["obj"],
    self.return_type,
    is_optional=self.return_type.has_suffix("?"),
    is_void=false,
    is_string=self.return_type == "String",
    is_array=is_arr,
    array_elem_convert=if is_arr {
      array_element_convert(array_element_type(ret_type))
    } else {
      ""
    },
    is_valid_stub=not(is_arr),
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
    // Optional: FFI returns JsValue, need type-appropriate conversion
    let inner_type = String::from_array(ret_type_str.to_array()[:ret_type_str.length() - 1])
    if is_array_return(inner_type) {
      let elem = array_element_type(inner_type)
      code.write_string("  let result = \{ffi_name}(TJsValue::to_js(self))\n")
      code.write_string(
        "  if JsValue::is_null(result) {\n    None\n  } else {\n    Some(jsvalue_to_array(result, \{array_element_convert(elem)}))\n  }\n",
      )
    } else if inner_type == "String" {
      code.write_string("  let result = \{ffi_name}(TJsValue::to_js(self))\n")
      code.write_string(
        "  if JsValue::is_null(result) {\n    None\n  } else {\n    Some(jsvalue_to_string(result))\n  }\n",
      )
    } else {
      code.write_string("  \{ffi_name}(TJsValue::to_js(self)).unsafe_cast()\n")
    }
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
  let ret_type = if self.return_type.has_suffix("?") {
    String::from_array(self.return_type.to_array()[:self.return_type.length() - 1])
  } else {
    self.return_type
  }
  let is_arr = is_array_return(ret_type)
  emit_wasm_ffi_with_return(
    ffi_name,
    "",
    [],
    self.return_type,
    is_optional=self.return_type.has_suffix("?"),
    is_void=false,
    is_string=self.return_type == "String",
    is_array=is_arr,
    array_elem_convert=if is_arr {
      array_element_convert(array_element_type(ret_type))
    } else {
      ""
    },
    is_valid_stub=not(is_arr),
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
    let inner_type = String::from_array(ret_type_str.to_array()[:ret_type_str.length() - 1])
    if is_array_return(inner_type) {
      let elem = array_element_type(inner_type)
      code.write_string("  let result = \{ffi_name}()\n")
      code.write_string(
        "  if JsValue::is_null(result) {\n    None\n  } else {\n    Some(jsvalue_to_array(result, \{array_element_convert(elem)}))\n  }\n",
      )
    } else if inner_type == "String" {
      code.write_string("  let result = \{ffi_name}()\n")
      code.write_string(
        "  if JsValue::is_null(result) {\n    None\n  } else {\n    Some(jsvalue_to_string(result))\n  }\n",
      )
    } else {
      code.write_string("  \{ffi_name}().unsafe_cast()\n")
    }
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
  let is_arr = is_array_return(ret_name)
  emit_wasm_ffi_with_return(
    ffi_name,
    ffi_args,
    ffi_argnames,
    self.return_type.type_name(),
    is_optional=self.return_type.optional,
    is_void=ret_name == "Unit",
    is_string=is_string_return(self.return_type.type_),
    is_array=is_arr,
    array_elem_convert=if is_arr {
      array_element_convert(array_element_type(ret_name))
    } else {
      ""
    },
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
    return_type_name=ret_name,
  )
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
    if arg.variadic {
      // Extract inner type from "Array[X]" -> "X"
      let type_name = arg.type_.name()
      let chars = type_name.to_array()
      let inner_chars = chars[6:chars.length() - 1]
      let inner_type = String::from_array(inner_chars)
      if inner_type.has_prefix("&T") {
        // Union trait type: call the union trait's to_js method
        "TJsValue::to_js(\{arg_name}.map(fn(v : \{inner_type}) -> JsValue { v.to_js() }))"
      } else {
        // Non-union type: use TJsValue::to_js directly (avoids ambiguity)
        "TJsValue::to_js(\{arg_name}.map(fn(v) { TJsValue::to_js(v) }))"
      }
    } else if (
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
