///|
fn readable_stream_default_reader_new_ffi(
  stream : JsValue,
) -> ReadableStreamDefaultReader = "webapi_ReadableStreamDefaultReader" "new"

///|
fn readable_stream_default_reader_read_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ReadableStreamDefaultReader" "read"

///|
fn readable_stream_default_reader_read_ffi(
  obj : JsValue,
) -> JsPromise[ReadableStreamReadResult] {
  readable_stream_default_reader_read_ffi_wasm(obj).unsafe_cast()
}

///|
fn readable_stream_default_reader_release_lock_ffi(obj : JsValue) -> Unit = "webapi_ReadableStreamDefaultReader" "releaseLock"

///|
fn readable_stream_default_reader_closed_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ReadableStreamDefaultReader" "get_closed"

///|
fn readable_stream_default_reader_closed_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_default_reader_closed_ffi_wasm(obj).unsafe_cast()
}

///|
fn readable_stream_default_reader_cancel_ffi_wasm(
  obj : JsValue,
  reason : JsValue,
) -> JsValue = "webapi_ReadableStreamDefaultReader" "cancel"

///|
fn readable_stream_default_reader_cancel_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_default_reader_cancel_ffi_wasm(obj, reason).unsafe_cast()
}
