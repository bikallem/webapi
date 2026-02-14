///|
fn readable_stream_read_result_ffi(
  value : JsValue,
  done : JsValue,
) -> ReadableStreamReadResult = "webapi_ReadableStreamReadResult" "new"

///|
fn readable_stream_read_result_empty_ffi() -> ReadableStreamReadResult = "webapi_Dictionary" "empty"

///|
fn readable_stream_read_result_get_value_ffi(obj : JsValue) -> JsValue = "webapi_ReadableStreamReadResult" "get_value"

///|
fn readable_stream_read_result_get_done_ffi(obj : JsValue) -> JsValue = "webapi_ReadableStreamReadResult" "get_done"
