extern "js" fn readable_stream_byob_request_view_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.view"

///|
fn readable_stream_byob_request_view_ffi(obj: JsValue) -> ArrayBufferView {
  readable_stream_byob_request_view_ffi_js(obj).unsafe_cast()
}

extern "js" fn readable_stream_byob_request_respond_ffi(obj: JsValue, bytes_written: JsValue) -> Unit = "(obj, bytes_written) => obj.respond(bytes_written)"

extern "js" fn readable_stream_byob_request_respond_with_new_view_ffi(obj: JsValue, view: JsValue) -> Unit = "(obj, view) => obj.respondWithNewView(view)"