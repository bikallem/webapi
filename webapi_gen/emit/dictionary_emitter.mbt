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
  let filename = Filename("\{snake_case(name)}_dictionary.mbt")
  let dict = self.idl.dictionaries[name]
  let emits = [Emit::External(dict.name), Emit::ImplTJsValue(dict.name)]
  let (args, arg_emits) = method_args(
    dict.members.map(mem => (
      mem.name,
      mem.type_,
      !mem.required,
      mem.default_value,
    )),
    dict.name,
    "new",
    self.type_registry,
  )
  emits.push_iter(arg_emits.iter())
  emits.push(Emit::DictionaryCreate(dict.name, args)) // empty constructor
  emits.push(Emit::EmptyMethod(dict.name))
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
    definition: @parser.Enum({ name: "PredefinedColorSpace", values: ["srgb"] }),
  }
  let canvas_color_type_enum = @parser.DefinitionExtendedAttributes::{
    extended_attributes: [],
    definition: @parser.Enum({ name: "CanvasColorType", values: ["unorm8"] }),
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
      #|#external
      #|pub type CanvasRenderingContext2DSettings
      #|
      #|pub impl TJsValue for CanvasRenderingContext2DSettings with to_js(self: CanvasRenderingContext2DSettings) -> JsValue = "%identity"
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
      #|pub fn CanvasRenderingContext2DSettings::new(alpha? : Bool = true, 
      #|desynchronized? : Bool = false, 
      #|color_space? : PredefinedColorSpace = PredefinedColorSpace::Srgb, 
      #|color_type? : CanvasColorType = CanvasColorType::Unorm8, 
      #|will_read_frequently? : Bool = false) -> CanvasRenderingContext2DSettings {
      #|  canvas_rendering_context2d_settings_ffi(TJsValue::to_js(alpha), TJsValue::to_js(desynchronized), TJsValue::to_js(color_space), TJsValue::to_js(color_type), TJsValue::to_js(will_read_frequently))
      #|}
      #|
      #|extern "js" fn canvas_rendering_context2d_settings_empty_ffi() -> CanvasRenderingContext2DSettings = "() => {}"
      #|
      #|pub fn CanvasRenderingContext2DSettings::empty() -> CanvasRenderingContext2DSettings { canvas_rendering_context2d_settings_empty_ffi() }
    ),
  )
}
