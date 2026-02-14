///|
pub(all) struct DictionaryEmitter {
  idl : @flattened_idl.FlattenedIdl
  type_registry : @type_registry.TypeRegistry
}

///|
pub impl Emitter for DictionaryEmitter with emit(
  self : DictionaryEmitter,
  name : String,
) -> (Filename, Array[Emit]) {
  let filename = Filename("\{@type_mapping.snake_case(name)}_dictionary.mbt")
  let dict = self.idl.dictionaries[name]
  let emits = [
    Emit::FileHeader(TypeName(name), Specs(dict.specs)),
    Emit::External(dict.name),
    Emit::ImplTJsValue(dict.name),
    Emit::ImplFromJsAny(dict.name),
  ]
  let (args, arg_emits) = method_args(
    dict.members.map(mem => {
      (mem.name, mem.type_, !mem.required, mem.default_value, false)
    }),
    dict.name,
    "new",
    self.type_registry,
  )
  emits
  ..push_iter(arg_emits.iter())
  ..push(Emit::DictionaryCreate(dict.name, args)) // empty constructor
  .push(Emit::EmptyMethod(dict.name))
  // Emit property getters for each dictionary member
  let getter_args : Array[DictionaryGetterArg] = []
  for mem in dict.members {
    let (mbt_type, extra_emits) = arg_mbt_type(
      mem.type_,
      dict.name,
      "get",
      mem.name,
      self.type_registry,
    )
    emits.push_iter(extra_emits.iter())
    emit_union_return_type(mbt_type, emits)
    let return_type_name = mbt_type.name()
    getter_args.push(DictionaryGetterArg::{
      dict_name: dict.name,
      original_name: mem.name,
      return_type: return_type_name,
      is_optional: !mem.required,
      is_enum_type: is_enum_return(mbt_type),
      is_valid_wasm_stub: is_wasm_valid_stub_type(mbt_type),
      is_primitive: mbt_type is Primitive(_),
    })
  }
  emits.push(Emit::DictionaryGetter(dict.name, getter_args))
  (filename, emits)
}

///|
test "DictionaryEmitter generates MoonBit code for dictionary" {
  let idl =
    #|dictionary CanvasRenderingContext2DSettings {
    #|  boolean alpha = true;
    #|  boolean desynchronized = false;
    #|  PredefinedColorSpace colorSpace = "srgb";
    #|  CanvasColorType colorType = "unorm8";
    #|  boolean willReadFrequently = false;
    #|};
  let definitions = @parser.parse(idl)
  let predefined_color_space_enum = @parser.DefinitionExtendedAttributes::{
    extended_attributes: [],
    spec: None,
    definition: @parser.Enum({
      name: "PredefinedColorSpace",
      values: ["srgb"],
      spec: None,
    }),
  }
  let canvas_color_type_enum = @parser.DefinitionExtendedAttributes::{
    extended_attributes: [],
    spec: None,
    definition: @parser.Enum({
      name: "CanvasColorType",
      values: ["unorm8"],
      spec: None,
    }),
  }
  definitions.push(predefined_color_space_enum)
  definitions.push(canvas_color_type_enum)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let dictionary_emitter = DictionaryEmitter::{ idl: flattened, type_registry }
  let (_, emits) = dictionary_emitter.emit("CanvasRenderingContext2DSettings")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: CanvasRenderingContext2DSettings
      #|
      #|
      #|/// [CanvasRenderingContext2DSettings](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2DSettings)
      #|#external
      #|pub type CanvasRenderingContext2DSettings
      #|
      #|pub impl TJsValue for CanvasRenderingContext2DSettings with to_js(self: CanvasRenderingContext2DSettings) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for CanvasRenderingContext2DSettings with from_js_any(value : JsAny) -> CanvasRenderingContext2DSettings = "%identity"
      #|
      #|pub fn CanvasRenderingContext2DSettings::new(alpha? : Bool = true, 
      #|desynchronized? : Bool = false, 
      #|color_space? : PredefinedColorSpace = PredefinedColorSpace::Srgb, 
      #|color_type? : CanvasColorType = CanvasColorType::Unorm8, 
      #|will_read_frequently? : Bool = false) -> CanvasRenderingContext2DSettings {
      #|  canvas_rendering_context2d_settings_ffi(TJsValue::to_js(alpha), TJsValue::to_js(desynchronized), TJsValue::to_js(color_space), TJsValue::to_js(color_type), TJsValue::to_js(will_read_frequently))
      #|}
      #|
      #|pub fn CanvasRenderingContext2DSettings::empty() -> CanvasRenderingContext2DSettings { canvas_rendering_context2d_settings_empty_ffi() }
      #|
      #|pub fn CanvasRenderingContext2DSettings::alpha(self : CanvasRenderingContext2DSettings) -> Bool? {
      #|  let result = canvas_rendering_context2d_settings_get_alpha_ffi(TJsValue::to_js(self))
      #|  if JsValue::is_null(result) {
      #|    None
      #|  } else {
      #|    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
      #|  }
      #|}
      #|
      #|pub fn CanvasRenderingContext2DSettings::desynchronized(self : CanvasRenderingContext2DSettings) -> Bool? {
      #|  let result = canvas_rendering_context2d_settings_get_desynchronized_ffi(TJsValue::to_js(self))
      #|  if JsValue::is_null(result) {
      #|    None
      #|  } else {
      #|    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
      #|  }
      #|}
      #|
      #|pub fn CanvasRenderingContext2DSettings::color_space(self : CanvasRenderingContext2DSettings) -> PredefinedColorSpace? {
      #|  let result = canvas_rendering_context2d_settings_get_color_space_ffi(TJsValue::to_js(self))
      #|  if JsValue::is_null(result) {
      #|    None
      #|  } else {
      #|    Some(result.unsafe_cast())
      #|  }
      #|}
      #|
      #|pub fn CanvasRenderingContext2DSettings::color_type(self : CanvasRenderingContext2DSettings) -> CanvasColorType? {
      #|  let result = canvas_rendering_context2d_settings_get_color_type_ffi(TJsValue::to_js(self))
      #|  if JsValue::is_null(result) {
      #|    None
      #|  } else {
      #|    Some(result.unsafe_cast())
      #|  }
      #|}
      #|
      #|pub fn CanvasRenderingContext2DSettings::will_read_frequently(self : CanvasRenderingContext2DSettings) -> Bool? {
      #|  let result = canvas_rendering_context2d_settings_get_will_read_frequently_ffi(TJsValue::to_js(self))
      #|  if JsValue::is_null(result) {
      #|    None
      #|  } else {
      #|    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
      #|  }
      #|}
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn canvas_rendering_context2d_settings_ffi(alpha: JsValue, desynchronized: JsValue, color_space: JsValue, color_type: JsValue, will_read_frequently: JsValue) -> CanvasRenderingContext2DSettings = 
      #|#|(alpha, desynchronized, colorSpace, colorType, willReadFrequently) => {
      #|#|  const obj = {};
      #|#|  if (alpha !== undefined) obj.alpha = alpha;
      #|#|  if (desynchronized !== undefined) obj.desynchronized = desynchronized;
      #|#|  if (colorSpace !== undefined) obj.colorSpace = colorSpace;
      #|#|  if (colorType !== undefined) obj.colorType = colorType;
      #|#|  if (willReadFrequently !== undefined) obj.willReadFrequently = willReadFrequently;
      #|#|  return obj;
      #|#|}
      #|
      #|extern "js" fn canvas_rendering_context2d_settings_empty_ffi() -> CanvasRenderingContext2DSettings = "() => {}"
      #|
      #|extern "js" fn canvas_rendering_context2d_settings_get_alpha_ffi(obj: JsValue) -> JsValue = "(obj) => obj.alpha"
      #|
      #|extern "js" fn canvas_rendering_context2d_settings_get_desynchronized_ffi(obj: JsValue) -> JsValue = "(obj) => obj.desynchronized"
      #|
      #|extern "js" fn canvas_rendering_context2d_settings_get_color_space_ffi(obj: JsValue) -> JsValue = "(obj) => obj.colorSpace"
      #|
      #|extern "js" fn canvas_rendering_context2d_settings_get_color_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.colorType"
      #|
      #|extern "js" fn canvas_rendering_context2d_settings_get_will_read_frequently_ffi(obj: JsValue) -> JsValue = "(obj) => obj.willReadFrequently"
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn canvas_rendering_context2d_settings_ffi(alpha: JsValue, desynchronized: JsValue, color_space: JsValue, color_type: JsValue, will_read_frequently: JsValue) -> CanvasRenderingContext2DSettings = "webapi_CanvasRenderingContext2DSettings" "new"
      #|
      #|fn canvas_rendering_context2d_settings_empty_ffi() -> CanvasRenderingContext2DSettings = "webapi_Dictionary" "empty"
      #|
      #|fn canvas_rendering_context2d_settings_get_alpha_ffi(obj: JsValue) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_alpha"
      #|
      #|fn canvas_rendering_context2d_settings_get_desynchronized_ffi(obj: JsValue) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_desynchronized"
      #|
      #|fn canvas_rendering_context2d_settings_get_color_space_ffi(obj: JsValue) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_colorSpace"
      #|
      #|fn canvas_rendering_context2d_settings_get_color_type_ffi(obj: JsValue) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_colorType"
      #|
      #|fn canvas_rendering_context2d_settings_get_will_read_frequently_ffi(obj: JsValue) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_willReadFrequently"
    ),
  )
}

///|
test "DictionaryEmitter multi-target separates FFI" {
  let idl =
    #|dictionary SimpleDict {
    #|  DOMString name;
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let dictionary_emitter = DictionaryEmitter::{ idl: flattened, type_registry }
  let (_, emits) = dictionary_emitter.emit("SimpleDict")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: SimpleDict
      #|
      #|
      #|/// [SimpleDict](https://developer.mozilla.org/en-US/docs/Web/API/SimpleDict)
      #|#external
      #|pub type SimpleDict
      #|
      #|pub impl TJsValue for SimpleDict with to_js(self: SimpleDict) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for SimpleDict with from_js_any(value : JsAny) -> SimpleDict = "%identity"
      #|
      #|pub fn SimpleDict::new(name? : String) -> SimpleDict {
      #|  simple_dict_ffi(opt_to_js(name))
      #|}
      #|
      #|pub fn SimpleDict::empty() -> SimpleDict { simple_dict_empty_ffi() }
      #|
      #|pub fn SimpleDict::name(self : SimpleDict) -> String? {
      #|  let result = simple_dict_get_name_ffi(TJsValue::to_js(self))
      #|  if JsValue::is_null(result) {
      #|    None
      #|  } else {
      #|    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
      #|  }
      #|}
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn simple_dict_ffi(name: JsValue) -> SimpleDict = 
      #|#|(name) => {
      #|#|  const obj = {};
      #|#|  if (name !== undefined) obj.name = name;
      #|#|  return obj;
      #|#|}
      #|
      #|extern "js" fn simple_dict_empty_ffi() -> SimpleDict = "() => {}"
      #|
      #|extern "js" fn simple_dict_get_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn simple_dict_ffi(name: JsValue) -> SimpleDict = "webapi_SimpleDict" "new"
      #|
      #|fn simple_dict_empty_ffi() -> SimpleDict = "webapi_Dictionary" "empty"
      #|
      #|fn simple_dict_get_name_ffi(obj: JsValue) -> JsValue = "webapi_SimpleDict" "get_name"
    ),
  )
}

///|
test "DictionaryEmitter does not emit duplicate commas for optional union args" {
  let idl =
    #|dictionary TestDict {
    #|  (DOMString or long) headers;
    #|  DOMString method;
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let dictionary_emitter = DictionaryEmitter::{ idl: flattened, type_registry }
  let (_, emits) = dictionary_emitter.emit("TestDict")
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content=(
      #|// Do not edit. This file is generated.
      #|// MoonBit type: TestDict
      #|
      #|
      #|/// [TestDict](https://developer.mozilla.org/en-US/docs/Web/API/TestDict)
      #|#external
      #|pub type TestDict
      #|
      #|pub impl TJsValue for TestDict with to_js(self: TestDict) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for TestDict with from_js_any(value : JsAny) -> TestDict = "%identity"
      #|
      #|pub(open) trait TTestDictNewHeaders {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TTestDictNewHeaders for String with to_js(self : String) -> JsValue = "%identity"
      #|
      #|pub impl TTestDictNewHeaders for Int with to_js(self : Int) -> JsValue { TJsValue::to_js(self) }
      #|
      #|pub fn TestDict::new(headers? : &TTestDictNewHeaders, 
      #|method_? : String) -> TestDict {
      #|  test_dict_ffi(match headers {
      #|Some(v) => v.to_js()
      #|None => JsValue::undefined()
      #|}, opt_to_js(method_))
      #|}
      #|
      #|pub fn TestDict::empty() -> TestDict { test_dict_empty_ffi() }
      #|
      #|pub(open) trait TTestDictGetHeaders {
      #|  to_js(self : Self) -> JsValue
      #|}
      #|
      #|pub impl TTestDictGetHeaders for String with to_js(self : String) -> JsValue = "%identity"
      #|
      #|pub impl TTestDictGetHeaders for Int with to_js(self : Int) -> JsValue { TJsValue::to_js(self) }
      #|
      #|#external
      #|pub type TestDictGetHeaders
      #|
      #|pub impl TJsValue for TestDictGetHeaders with to_js(self: TestDictGetHeaders) -> JsValue = "%identity"
      #|
      #|pub impl FromJsAny for TestDictGetHeaders with from_js_any(value : JsAny) -> TestDictGetHeaders = "%identity"
      #|
      #|pub fn[T : TTestDictGetHeaders + FromJsAny] TestDictGetHeaders::into(self : TestDictGetHeaders) -> T {
      #|  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
      #|}
      #|
      #|pub fn[T : TTestDictGetHeaders] TestDictGetHeaders::from(value : T) -> TestDictGetHeaders = "%identity"
      #|
      #|pub impl TTestDictGetHeaders for TestDictGetHeaders with to_js(self : TestDictGetHeaders) -> JsValue = "%identity"
      #|
      #|pub fn TestDict::headers(self : TestDict) -> TestDictGetHeaders? {
      #|  let result = test_dict_get_headers_ffi(TJsValue::to_js(self))
      #|  if JsValue::is_null(result) {
      #|    None
      #|  } else {
      #|    Some(result.unsafe_cast())
      #|  }
      #|}
      #|
      #|pub fn TestDict::method_(self : TestDict) -> String? {
      #|  let result = test_dict_get_method_ffi(TJsValue::to_js(self))
      #|  if JsValue::is_null(result) {
      #|    None
      #|  } else {
      #|    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
      #|  }
      #|}
    ),
  )
  inspect(
    multi.js_ffi,
    content=(
      #|extern "js" fn test_dict_ffi(headers: JsValue, method_: JsValue) -> TestDict = 
      #|#|(headers, method) => {
      #|#|  const obj = {};
      #|#|  if (headers !== undefined) obj.headers = headers;
      #|#|  if (method !== undefined) obj.method = method;
      #|#|  return obj;
      #|#|}
      #|
      #|extern "js" fn test_dict_empty_ffi() -> TestDict = "() => {}"
      #|
      #|extern "js" fn test_dict_get_headers_ffi(obj: JsValue) -> JsValue = "(obj) => obj.headers"
      #|
      #|extern "js" fn test_dict_get_method_ffi(obj: JsValue) -> JsValue = "(obj) => obj.method"
    ),
  )
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn test_dict_ffi(headers: JsValue, method_: JsValue) -> TestDict = "webapi_TestDict" "new"
      #|
      #|fn test_dict_empty_ffi() -> TestDict = "webapi_Dictionary" "empty"
      #|
      #|fn test_dict_get_headers_ffi(obj: JsValue) -> JsValue = "webapi_TestDict" "get_headers"
      #|
      #|fn test_dict_get_method_ffi(obj: JsValue) -> JsValue = "webapi_TestDict" "get_method"
    ),
  )
}
