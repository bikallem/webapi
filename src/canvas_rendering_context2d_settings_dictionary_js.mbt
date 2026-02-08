extern "js" fn canvas_rendering_context2d_settings_ffi(alpha: JsValue, desynchronized: JsValue, color_space: JsValue, color_type: JsValue, will_read_frequently: JsValue) -> CanvasRenderingContext2DSettings = 
#|(alpha, desynchronized, colorSpace, colorType, willReadFrequently) => {
#|  const obj = {};
#|  if (alpha !== undefined) obj.alpha = alpha;
#|  if (desynchronized !== undefined) obj.desynchronized = desynchronized;
#|  if (colorSpace !== undefined) obj.colorSpace = colorSpace;
#|  if (colorType !== undefined) obj.colorType = colorType;
#|  if (willReadFrequently !== undefined) obj.willReadFrequently = willReadFrequently;
#|  return obj;
#|}

extern "js" fn canvas_rendering_context2d_settings_empty_ffi() -> CanvasRenderingContext2DSettings = "() => {}"