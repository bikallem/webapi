fn readable_stream_iterator_options_ffi(prevent_cancel: JsValue) -> ReadableStreamIteratorOptions = "webapi_ReadableStreamIteratorOptions" "new"

fn readable_stream_iterator_options_empty_ffi() -> ReadableStreamIteratorOptions = "webapi_Dictionary" "empty"

fn readable_stream_iterator_options_get_prevent_cancel_ffi(obj: JsValue) -> JsValue = "webapi_ReadableStreamIteratorOptions" "get_preventCancel"