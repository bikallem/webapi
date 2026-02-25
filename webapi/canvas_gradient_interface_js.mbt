///|
extern "js" fn canvas_gradient_add_color_stop_ffi(
  obj : JsValue,
  offset : JsValue,
  color : JsValue,
) -> Unit = "(obj, offset, color) => obj.addColorStop(offset, color)"
