///|
fn focus_options_ffi(
  prevent_scroll : JsValue,
  focus_visible : JsValue,
) -> FocusOptions = "webapi_FocusOptions" "new"

///|
fn focus_options_empty_ffi() -> FocusOptions = "webapi_Dictionary" "empty"
