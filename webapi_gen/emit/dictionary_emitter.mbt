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
  let code = mbt_code_gen(emits)
  inspect(
    code,
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
  // Shared should have wrapper, no extern "js"
  inspect(multi.shared.contains("extern \"js\""), content="false")
  inspect(multi.shared.contains("pub fn SimpleDict::new("), content="true")
  inspect(multi.shared.contains("pub fn SimpleDict::empty()"), content="true")
  // JS FFI should have extern "js"
  inspect(multi.js_ffi.contains("extern \"js\""), content="true")
  // Wasm FFI should have wasm imports
  inspect(
    multi.wasm_ffi.contains("\"webapi_SimpleDict\" \"new\""),
    content="true",
  )
  inspect(
    multi.wasm_ffi.contains("\"webapi_Dictionary\" \"empty\""),
    content="true",
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
  let code = mbt_code_gen(emits)
  inspect(code.contains("},,"), content="false")
}
