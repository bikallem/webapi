fn writable_stream_default_writer_new_ffi(stream: JsValue) -> WritableStreamDefaultWriter = "webapi_WritableStreamDefaultWriter" "new"

fn writable_stream_default_writer_closed_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WritableStreamDefaultWriter" "get_closed"

///|
fn writable_stream_default_writer_closed_ffi(obj: JsValue) -> JsPromise[JsValue] {
  writable_stream_default_writer_closed_ffi_wasm(obj).unsafe_cast()
}

fn writable_stream_default_writer_desired_size_ffi(obj: JsValue) -> Double = "webapi_WritableStreamDefaultWriter" "get_desiredSize"

fn writable_stream_default_writer_ready_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WritableStreamDefaultWriter" "get_ready"

///|
fn writable_stream_default_writer_ready_ffi(obj: JsValue) -> JsPromise[JsValue] {
  writable_stream_default_writer_ready_ffi_wasm(obj).unsafe_cast()
}

fn writable_stream_default_writer_abort_ffi_wasm(obj: JsValue, reason: JsValue) -> JsValue = "webapi_WritableStreamDefaultWriter" "abort"

///|
fn writable_stream_default_writer_abort_ffi(obj: JsValue, reason: JsValue) -> JsPromise[JsValue] {
  writable_stream_default_writer_abort_ffi_wasm(obj, reason).unsafe_cast()
}

fn writable_stream_default_writer_close_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WritableStreamDefaultWriter" "close"

///|
fn writable_stream_default_writer_close_ffi(obj: JsValue) -> JsPromise[JsValue] {
  writable_stream_default_writer_close_ffi_wasm(obj).unsafe_cast()
}

fn writable_stream_default_writer_release_lock_ffi(obj: JsValue) -> Unit = "webapi_WritableStreamDefaultWriter" "releaseLock"

fn writable_stream_default_writer_write_ffi_wasm(obj: JsValue, chunk: JsValue) -> JsValue = "webapi_WritableStreamDefaultWriter" "write"

///|
fn writable_stream_default_writer_write_ffi(obj: JsValue, chunk: JsValue) -> JsPromise[JsValue] {
  writable_stream_default_writer_write_ffi_wasm(obj, chunk).unsafe_cast()
}