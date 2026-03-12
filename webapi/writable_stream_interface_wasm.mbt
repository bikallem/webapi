fn writable_stream_new_ffi(underlying_sink: JsValue, strategy: JsValue) -> WritableStream = "webapi_WritableStream" "new"

fn writable_stream_locked_ffi(obj: JsValue) -> Bool = "webapi_WritableStream" "get_locked"

fn writable_stream_abort_ffi_wasm(obj: JsValue, reason: JsValue) -> JsValue = "webapi_WritableStream" "abort"

///|
fn writable_stream_abort_ffi(obj: JsValue, reason: JsValue) -> JsPromise[JsValue] {
  writable_stream_abort_ffi_wasm(obj, reason).unsafe_cast()
}

fn writable_stream_close_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WritableStream" "close"

///|
fn writable_stream_close_ffi(obj: JsValue) -> JsPromise[JsValue] {
  writable_stream_close_ffi_wasm(obj).unsafe_cast()
}

fn writable_stream_get_writer_ffi(obj: JsValue) -> WritableStreamDefaultWriter = "webapi_WritableStream" "getWriter"