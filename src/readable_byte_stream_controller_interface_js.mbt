///|
extern "js" fn readable_byte_stream_controller_byob_request_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.byobRequest"

///|
fn readable_byte_stream_controller_byob_request_ffi(
  obj : JsValue,
) -> ReadableStreamBYOBRequest {
  readable_byte_stream_controller_byob_request_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn readable_byte_stream_controller_desired_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.desiredSize"

///|
fn readable_byte_stream_controller_desired_size_ffi(obj : JsValue) -> Double {
  readable_byte_stream_controller_desired_size_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn readable_byte_stream_controller_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
extern "js" fn readable_byte_stream_controller_enqueue_ffi(
  obj : JsValue,
  chunk : JsValue,
) -> Unit = "(obj, chunk) => obj.enqueue(chunk)"

///|
extern "js" fn readable_byte_stream_controller_error_ffi(
  obj : JsValue,
  e : JsValue,
) -> Unit = "(obj, e) => obj.error(e)"
