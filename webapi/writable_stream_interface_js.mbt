extern "js" fn writable_stream_new_ffi(underlying_sink: JsValue, strategy: JsValue) -> WritableStream = "(underlying_sink, strategy) => new WritableStream(underlying_sink, strategy)"

extern "js" fn writable_stream_locked_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.locked"

///|
fn writable_stream_locked_ffi(obj: JsValue) -> Bool {
  writable_stream_locked_ffi_js(obj).unsafe_cast()
}

extern "js" fn writable_stream_abort_ffi_js(obj: JsValue, reason: JsValue) -> JsValue = "(obj, reason) => obj.abort(reason)"

///|
fn writable_stream_abort_ffi(obj: JsValue, reason: JsValue) -> JsPromise[JsValue] {
  writable_stream_abort_ffi_js(obj, reason).unsafe_cast()
}

extern "js" fn writable_stream_close_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.close()"

///|
fn writable_stream_close_ffi(obj: JsValue) -> JsPromise[JsValue] {
  writable_stream_close_ffi_js(obj).unsafe_cast()
}

extern "js" fn writable_stream_get_writer_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getWriter()"

///|
fn writable_stream_get_writer_ffi(obj: JsValue) -> WritableStreamDefaultWriter {
  writable_stream_get_writer_ffi_js(obj).unsafe_cast()
}