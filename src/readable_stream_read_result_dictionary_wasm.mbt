///|
fn readable_stream_read_result_ffi(
  value : JsValue,
  done : JsValue,
) -> ReadableStreamReadResult = "webapi_ReadableStreamReadResult" "new"

///|
fn readable_stream_read_result_empty_ffi() -> ReadableStreamReadResult = "webapi_Dictionary" "empty"
