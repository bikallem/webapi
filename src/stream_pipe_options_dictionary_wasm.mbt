///|
fn stream_pipe_options_ffi(
  prevent_close : JsValue,
  prevent_abort : JsValue,
  prevent_cancel : JsValue,
  signal : JsValue,
) -> StreamPipeOptions = "webapi_StreamPipeOptions" "new"

///|
fn stream_pipe_options_empty_ffi() -> StreamPipeOptions = "webapi_Dictionary" "empty"
