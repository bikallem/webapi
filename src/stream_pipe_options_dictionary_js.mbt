///|
extern "js" fn stream_pipe_options_ffi(
  prevent_close : JsValue,
  prevent_abort : JsValue,
  prevent_cancel : JsValue,
  signal : JsValue,
) -> StreamPipeOptions =
  #|(preventClose, preventAbort, preventCancel, signal) => {
  #|  const obj = {};
  #|  if (preventClose !== undefined) obj.preventClose = preventClose;
  #|  if (preventAbort !== undefined) obj.preventAbort = preventAbort;
  #|  if (preventCancel !== undefined) obj.preventCancel = preventCancel;
  #|  if (signal !== undefined) obj.signal = signal;
  #|  return obj;
  #|}

///|
extern "js" fn stream_pipe_options_empty_ffi() -> StreamPipeOptions = "() => {}"
