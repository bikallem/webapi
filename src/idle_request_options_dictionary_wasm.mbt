///|
fn idle_request_options_ffi(timeout : JsValue) -> IdleRequestOptions = "webapi_IdleRequestOptions" "new"

///|
fn idle_request_options_empty_ffi() -> IdleRequestOptions = "webapi_Dictionary" "empty"

///|
fn idle_request_options_get_timeout_ffi(obj : JsValue) -> JsValue = "webapi_IdleRequestOptions" "get_timeout"
