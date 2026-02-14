///|
extern "js" fn writable_stream_default_writer_new_ffi(
  stream : JsValue,
) -> WritableStreamDefaultWriter = "(stream) => new WritableStreamDefaultWriter(stream)"

///|
extern "js" fn writable_stream_default_writer_closed_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.closed"

///|
fn writable_stream_default_writer_closed_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_closed_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn writable_stream_default_writer_desired_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.desiredSize"

///|
fn writable_stream_default_writer_desired_size_ffi(obj : JsValue) -> Double {
  writable_stream_default_writer_desired_size_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn writable_stream_default_writer_ready_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ready"

///|
fn writable_stream_default_writer_ready_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_ready_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn writable_stream_default_writer_abort_ffi_js(
  obj : JsValue,
  reason : JsValue,
) -> JsValue = "(obj, reason) => obj.abort(reason)"

///|
fn writable_stream_default_writer_abort_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_abort_ffi_js(obj, reason).unsafe_cast()
}

///|
extern "js" fn writable_stream_default_writer_close_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.close()"

///|
fn writable_stream_default_writer_close_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_close_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn writable_stream_default_writer_release_lock_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.releaseLock()"

///|
extern "js" fn writable_stream_default_writer_write_ffi_js(
  obj : JsValue,
  chunk : JsValue,
) -> JsValue = "(obj, chunk) => obj.write(chunk)"

///|
fn writable_stream_default_writer_write_ffi(
  obj : JsValue,
  chunk : JsValue,
) -> JsPromise[JsValue] {
  writable_stream_default_writer_write_ffi_js(obj, chunk).unsafe_cast()
}
