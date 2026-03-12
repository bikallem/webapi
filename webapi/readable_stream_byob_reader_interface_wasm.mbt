fn readable_stream_byob_reader_new_ffi(stream: JsValue) -> ReadableStreamBYOBReader = "webapi_ReadableStreamBYOBReader" "new"

fn readable_stream_byob_reader_read_ffi_wasm(obj: JsValue, view: JsValue, options: JsValue) -> JsValue = "webapi_ReadableStreamBYOBReader" "read"

///|
fn readable_stream_byob_reader_read_ffi(obj: JsValue, view: JsValue, options: JsValue) -> JsPromise[ReadableStreamReadResult] {
  readable_stream_byob_reader_read_ffi_wasm(obj, view, options).unsafe_cast()
}

fn readable_stream_byob_reader_release_lock_ffi(obj: JsValue) -> Unit = "webapi_ReadableStreamBYOBReader" "releaseLock"

fn readable_stream_byob_reader_closed_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ReadableStreamBYOBReader" "get_closed"

///|
fn readable_stream_byob_reader_closed_ffi(obj: JsValue) -> JsPromise[JsValue] {
  readable_stream_byob_reader_closed_ffi_wasm(obj).unsafe_cast()
}

fn readable_stream_byob_reader_cancel_ffi_wasm(obj: JsValue, reason: JsValue) -> JsValue = "webapi_ReadableStreamBYOBReader" "cancel"

///|
fn readable_stream_byob_reader_cancel_ffi(obj: JsValue, reason: JsValue) -> JsPromise[JsValue] {
  readable_stream_byob_reader_cancel_ffi_wasm(obj, reason).unsafe_cast()
}