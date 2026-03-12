///|
fn focus_options_ffi(
  prevent_scroll : JsValue,
  focus_visible : JsValue,
) -> FocusOptions = "webapi_FocusOptions" "new"

///|
fn focus_options_empty_ffi() -> FocusOptions = "webapi_Dictionary" "empty"

///|
fn focus_options_get_prevent_scroll_ffi(obj : JsValue) -> JsValue = "webapi_FocusOptions" "get_preventScroll"

///|
fn focus_options_get_focus_visible_ffi(obj : JsValue) -> JsValue = "webapi_FocusOptions" "get_focusVisible"
