///|
fn underlying_sink_start_callback_ffi(
  callback : (WritableStreamDefaultController) -> JsValue,
) -> UnderlyingSinkStartCallback = "webapi_UnderlyingSinkStartCallback" "new"
