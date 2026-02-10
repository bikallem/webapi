///|
fn dom_rect_init_ffi(
  x : JsValue,
  y : JsValue,
  width : JsValue,
  height : JsValue,
) -> DOMRectInit = "webapi_DOMRectInit" "new"

///|
fn dom_rect_init_empty_ffi() -> DOMRectInit = "webapi_Dictionary" "empty"
