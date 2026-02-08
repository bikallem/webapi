///|
fn abort_controller_new_ffi() -> AbortController = "webapi_AbortController" "new"

///|
fn abort_controller_signal_ffi(obj : JsValue) -> JsValue = "webapi_AbortController" "get_signal"

///|
fn abort_controller_abort_ffi(obj : JsValue, reason : JsValue) -> Unit = "webapi_AbortController" "abort"
