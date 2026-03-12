///|
extern "js" fn underlying_sink_start_callback_ffi(
  callback : (WritableStreamDefaultController) -> JsValue,
) -> UnderlyingSinkStartCallback = "(callback) => callback"
