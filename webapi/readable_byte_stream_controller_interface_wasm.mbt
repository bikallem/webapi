///|
fn readable_byte_stream_controller_byob_request_ffi(
  obj : JsValue,
) -> ReadableStreamBYOBRequest = "webapi_ReadableByteStreamController" "get_byobRequest"

///|
fn readable_byte_stream_controller_desired_size_ffi(obj : JsValue) -> Double = "webapi_ReadableByteStreamController" "get_desiredSize"

///|
fn readable_byte_stream_controller_close_ffi(obj : JsValue) -> Unit = "webapi_ReadableByteStreamController" "close"

///|
fn readable_byte_stream_controller_enqueue_ffi(
  obj : JsValue,
  chunk : JsValue,
) -> Unit = "webapi_ReadableByteStreamController" "enqueue"

///|
fn readable_byte_stream_controller_error_ffi(
  obj : JsValue,
  e : JsValue,
) -> Unit = "webapi_ReadableByteStreamController" "error"
