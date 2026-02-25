///|
fn stream_pipe_options_ffi(
  prevent_close : JsValue,
  prevent_abort : JsValue,
  prevent_cancel : JsValue,
  signal : JsValue,
) -> StreamPipeOptions = "webapi_StreamPipeOptions" "new"

///|
fn stream_pipe_options_empty_ffi() -> StreamPipeOptions = "webapi_Dictionary" "empty"

///|
fn stream_pipe_options_get_prevent_close_ffi(obj : JsValue) -> JsValue = "webapi_StreamPipeOptions" "get_preventClose"

///|
fn stream_pipe_options_get_prevent_abort_ffi(obj : JsValue) -> JsValue = "webapi_StreamPipeOptions" "get_preventAbort"

///|
fn stream_pipe_options_get_prevent_cancel_ffi(obj : JsValue) -> JsValue = "webapi_StreamPipeOptions" "get_preventCancel"

///|
fn stream_pipe_options_get_signal_ffi(obj : JsValue) -> JsValue = "webapi_StreamPipeOptions" "get_signal"
