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
