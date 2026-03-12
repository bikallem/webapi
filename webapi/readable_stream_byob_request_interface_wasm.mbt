fn readable_stream_byob_request_view_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ReadableStreamBYOBRequest" "get_view"

///|
fn readable_stream_byob_request_view_ffi(obj: JsValue) -> ArrayBufferView {
  readable_stream_byob_request_view_ffi_wasm(obj).unsafe_cast()
}

fn readable_stream_byob_request_respond_ffi(obj: JsValue, bytes_written: JsValue) -> Unit = "webapi_ReadableStreamBYOBRequest" "respond"

fn readable_stream_byob_request_respond_with_new_view_ffi(obj: JsValue, view: JsValue) -> Unit = "webapi_ReadableStreamBYOBRequest" "respondWithNewView"