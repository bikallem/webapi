extern "js" fn transform_stream_default_controller_desired_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.desiredSize"

///|
fn transform_stream_default_controller_desired_size_ffi(obj: JsValue) -> Double {
  transform_stream_default_controller_desired_size_ffi_js(obj).unsafe_cast()
}

extern "js" fn transform_stream_default_controller_enqueue_ffi(obj: JsValue, chunk: JsValue) -> Unit = "(obj, chunk) => obj.enqueue(chunk)"

extern "js" fn transform_stream_default_controller_error_ffi(obj: JsValue, reason: JsValue) -> Unit = "(obj, reason) => obj.error(reason)"

extern "js" fn transform_stream_default_controller_terminate_ffi(obj: JsValue) -> Unit = "(obj) => obj.terminate()"