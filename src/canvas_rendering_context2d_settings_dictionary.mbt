///|
#external
pub type CanvasRenderingContext2DSettings

///|
pub impl TJsValue for CanvasRenderingContext2DSettings with to_js(
  self : CanvasRenderingContext2DSettings,
) -> JsValue = "%identity"

///|
extern "js" fn canvas_rendering_context2d_settings_ffi(
  alpha : JsValue,
  desynchronized : JsValue,
  color_space : JsValue,
  color_type : JsValue,
  will_read_frequently : JsValue,
) -> CanvasRenderingContext2DSettings =
  #|(alpha, desynchronized, colorSpace, colorType, willReadFrequently) => {
  #|  const obj = {};
  #|  if (alpha !== undefined) obj.alpha = alpha;
  #|  if (desynchronized !== undefined) obj.desynchronized = desynchronized;
  #|  if (colorSpace !== undefined) obj.colorSpace = colorSpace;
  #|  if (colorType !== undefined) obj.colorType = colorType;
  #|  if (willReadFrequently !== undefined) obj.willReadFrequently = willReadFrequently;
  #|  return obj;
  #|}

///|
pub fn CanvasRenderingContext2DSettings::new(
  alpha? : Bool = true,
  desynchronized? : Bool = false,
  color_space? : PredefinedColorSpace = PredefinedColorSpace::Srgb,
  color_type? : CanvasColorType = CanvasColorType::Unorm8,
  will_read_frequently? : Bool = false,
) -> CanvasRenderingContext2DSettings {
  canvas_rendering_context2d_settings_ffi(
    TJsValue::to_js(alpha),
    TJsValue::to_js(desynchronized),
    TJsValue::to_js(color_space),
    TJsValue::to_js(color_type),
    TJsValue::to_js(will_read_frequently),
  )
}

///|
extern "js" fn canvas_rendering_context2d_settings_empty_ffi() -> CanvasRenderingContext2DSettings = "() => {}"

///|
pub fn CanvasRenderingContext2DSettings::empty() -> CanvasRenderingContext2DSettings {
  canvas_rendering_context2d_settings_empty_ffi()
}
