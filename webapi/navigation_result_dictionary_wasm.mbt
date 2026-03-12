///|
fn navigation_result_ffi(
  committed : JsValue,
  finished : JsValue,
) -> NavigationResult = "webapi_NavigationResult" "new"

///|
fn navigation_result_empty_ffi() -> NavigationResult = "webapi_Dictionary" "empty"

///|
fn navigation_result_get_committed_ffi(obj : JsValue) -> JsValue = "webapi_NavigationResult" "get_committed"

///|
fn navigation_result_get_finished_ffi(obj : JsValue) -> JsValue = "webapi_NavigationResult" "get_finished"
