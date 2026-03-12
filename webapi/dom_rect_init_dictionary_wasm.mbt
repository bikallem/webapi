///|
fn dom_rect_init_ffi(
  x : JsValue,
  y : JsValue,
  width : JsValue,
  height : JsValue,
) -> DOMRectInit = "webapi_DOMRectInit" "new"

///|
fn dom_rect_init_empty_ffi() -> DOMRectInit = "webapi_Dictionary" "empty"

///|
fn dom_rect_init_get_x_ffi(obj : JsValue) -> JsValue = "webapi_DOMRectInit" "get_x"

///|
fn dom_rect_init_get_y_ffi(obj : JsValue) -> JsValue = "webapi_DOMRectInit" "get_y"

///|
fn dom_rect_init_get_width_ffi(obj : JsValue) -> JsValue = "webapi_DOMRectInit" "get_width"

///|
fn dom_rect_init_get_height_ffi(obj : JsValue) -> JsValue = "webapi_DOMRectInit" "get_height"
