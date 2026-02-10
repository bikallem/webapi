///|
fn navigation_navigate_options_ffi(
  info : JsValue,
  state : JsValue,
  history : JsValue,
) -> NavigationNavigateOptions = "webapi_NavigationNavigateOptions" "new"

///|
fn navigation_navigate_options_empty_ffi() -> NavigationNavigateOptions = "webapi_Dictionary" "empty"
