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

extern "js" fn canvas_rendering_context2d_settings_get_alpha_ffi(obj: JsValue) -> JsValue = "(obj) => obj.alpha"

extern "js" fn canvas_rendering_context2d_settings_get_desynchronized_ffi(obj: JsValue) -> JsValue = "(obj) => obj.desynchronized"

extern "js" fn canvas_rendering_context2d_settings_get_color_space_ffi(obj: JsValue) -> JsValue = "(obj) => obj.colorSpace"

extern "js" fn canvas_rendering_context2d_settings_get_color_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.colorType"

extern "js" fn canvas_rendering_context2d_settings_get_will_read_frequently_ffi(obj: JsValue) -> JsValue = "(obj) => obj.willReadFrequently"