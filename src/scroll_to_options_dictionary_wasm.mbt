///|
fn scroll_to_options_ffi(
  behavior : JsValue,
  left : JsValue,
  top : JsValue,
) -> ScrollToOptions = "webapi_ScrollToOptions" "new"

///|
fn scroll_to_options_empty_ffi() -> ScrollToOptions = "webapi_Dictionary" "empty"
