fn readable_stream_get_reader_options_ffi(mode: JsValue) -> ReadableStreamGetReaderOptions = "webapi_ReadableStreamGetReaderOptions" "new"

fn readable_stream_get_reader_options_empty_ffi() -> ReadableStreamGetReaderOptions = "webapi_Dictionary" "empty"

fn readable_stream_get_reader_options_get_mode_ffi(obj: JsValue) -> JsValue = "webapi_ReadableStreamGetReaderOptions" "get_mode"