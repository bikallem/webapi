///|
fn writable_stream_default_controller_signal_ffi(obj : JsValue) -> AbortSignal = "webapi_WritableStreamDefaultController" "get_signal"

///|
fn writable_stream_default_controller_error_ffi(
  obj : JsValue,
  e : JsValue,
) -> Unit = "webapi_WritableStreamDefaultController" "error"
