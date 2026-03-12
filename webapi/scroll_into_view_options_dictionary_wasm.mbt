///|
fn scroll_into_view_options_ffi(
  behavior : JsValue,
  block : JsValue,
  inline : JsValue,
  container : JsValue,
) -> ScrollIntoViewOptions = "webapi_ScrollIntoViewOptions" "new"

///|
fn scroll_into_view_options_empty_ffi() -> ScrollIntoViewOptions = "webapi_Dictionary" "empty"

///|
fn scroll_into_view_options_get_behavior_ffi(obj : JsValue) -> JsValue = "webapi_ScrollIntoViewOptions" "get_behavior"

///|
fn scroll_into_view_options_get_block_ffi(obj : JsValue) -> JsValue = "webapi_ScrollIntoViewOptions" "get_block"

///|
fn scroll_into_view_options_get_inline_ffi(obj : JsValue) -> JsValue = "webapi_ScrollIntoViewOptions" "get_inline"

///|
fn scroll_into_view_options_get_container_ffi(obj : JsValue) -> JsValue = "webapi_ScrollIntoViewOptions" "get_container"
