///|
fn readable_stream_byob_reader_read_options_ffi(
  min : JsValue,
) -> ReadableStreamBYOBReaderReadOptions = "webapi_ReadableStreamBYOBReaderReadOptions" "new"

///|
fn readable_stream_byob_reader_read_options_empty_ffi() -> ReadableStreamBYOBReaderReadOptions = "webapi_Dictionary" "empty"

///|
fn readable_stream_byob_reader_read_options_get_min_ffi(
  obj : JsValue,
) -> JsValue = "webapi_ReadableStreamBYOBReaderReadOptions" "get_min"
