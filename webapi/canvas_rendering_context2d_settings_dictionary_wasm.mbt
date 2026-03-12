///|
fn canvas_rendering_context2d_settings_ffi(
  alpha : JsValue,
  desynchronized : JsValue,
  color_space : JsValue,
  color_type : JsValue,
  will_read_frequently : JsValue,
) -> CanvasRenderingContext2DSettings = "webapi_CanvasRenderingContext2DSettings" "new"

///|
fn canvas_rendering_context2d_settings_empty_ffi() -> CanvasRenderingContext2DSettings = "webapi_Dictionary" "empty"

///|
fn canvas_rendering_context2d_settings_get_alpha_ffi(obj : JsValue) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_alpha"

///|
fn canvas_rendering_context2d_settings_get_desynchronized_ffi(
  obj : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_desynchronized"

///|
fn canvas_rendering_context2d_settings_get_color_space_ffi(
  obj : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_colorSpace"

///|
fn canvas_rendering_context2d_settings_get_color_type_ffi(
  obj : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_colorType"

///|
fn canvas_rendering_context2d_settings_get_will_read_frequently_ffi(
  obj : JsValue,
) -> JsValue = "webapi_CanvasRenderingContext2DSettings" "get_willReadFrequently"
