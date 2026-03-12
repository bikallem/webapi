extern "js" fn stream_pipe_options_ffi(prevent_close: JsValue, prevent_abort: JsValue, prevent_cancel: JsValue, signal: JsValue) -> StreamPipeOptions = 
#|(preventClose, preventAbort, preventCancel, signal) => {
#|  const obj = {};
#|  if (preventClose !== undefined) obj.preventClose = preventClose;
#|  if (preventAbort !== undefined) obj.preventAbort = preventAbort;
#|  if (preventCancel !== undefined) obj.preventCancel = preventCancel;
#|  if (signal !== undefined) obj.signal = signal;
#|  return obj;
#|}

extern "js" fn stream_pipe_options_empty_ffi() -> StreamPipeOptions = "() => {}"

extern "js" fn stream_pipe_options_get_prevent_close_ffi(obj: JsValue) -> JsValue = "(obj) => obj.preventClose"

extern "js" fn stream_pipe_options_get_prevent_abort_ffi(obj: JsValue) -> JsValue = "(obj) => obj.preventAbort"

extern "js" fn stream_pipe_options_get_prevent_cancel_ffi(obj: JsValue) -> JsValue = "(obj) => obj.preventCancel"

extern "js" fn stream_pipe_options_get_signal_ffi(obj: JsValue) -> JsValue = "(obj) => obj.signal"