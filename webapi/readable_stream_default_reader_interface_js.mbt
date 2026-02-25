///|
extern "js" fn readable_stream_default_reader_new_ffi(
  stream : JsValue,
) -> ReadableStreamDefaultReader = "(stream) => new ReadableStreamDefaultReader(stream)"

///|
extern "js" fn readable_stream_default_reader_read_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.read()"

///|
fn readable_stream_default_reader_read_ffi(
  obj : JsValue,
) -> JsPromise[ReadableStreamReadResult] {
  readable_stream_default_reader_read_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn readable_stream_default_reader_release_lock_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.releaseLock()"

///|
extern "js" fn readable_stream_default_reader_closed_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.closed"

///|
fn readable_stream_default_reader_closed_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_default_reader_closed_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn readable_stream_default_reader_cancel_ffi_js(
  obj : JsValue,
  reason : JsValue,
) -> JsValue = "(obj, reason) => obj.cancel(reason)"

///|
fn readable_stream_default_reader_cancel_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_default_reader_cancel_ffi_js(obj, reason).unsafe_cast()
}
