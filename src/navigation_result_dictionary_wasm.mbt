///|
fn navigation_result_ffi(
  committed : JsValue,
  finished : JsValue,
) -> NavigationResult = "webapi_NavigationResult" "new"

///|
fn navigation_result_empty_ffi() -> NavigationResult = "webapi_Dictionary" "empty"
