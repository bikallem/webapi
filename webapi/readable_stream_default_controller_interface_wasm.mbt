fn readable_stream_default_controller_desired_size_ffi(obj: JsValue) -> Double = "webapi_ReadableStreamDefaultController" "get_desiredSize"

fn readable_stream_default_controller_close_ffi(obj: JsValue) -> Unit = "webapi_ReadableStreamDefaultController" "close"

fn readable_stream_default_controller_enqueue_ffi(obj: JsValue, chunk: JsValue) -> Unit = "webapi_ReadableStreamDefaultController" "enqueue"

fn readable_stream_default_controller_error_ffi(obj: JsValue, e: JsValue) -> Unit = "webapi_ReadableStreamDefaultController" "error"