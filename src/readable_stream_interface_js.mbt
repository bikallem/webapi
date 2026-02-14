///|
extern "js" fn readable_stream_new_ffi(
  underlying_source : JsValue,
  strategy : JsValue,
) -> ReadableStream = "(underlying_source, strategy) => new ReadableStream(underlying_source, strategy)"

///|
extern "js" fn readable_stream_from_ffi_js(async_iterable : JsValue) -> JsValue = "(async_iterable) => ReadableStream.from(async_iterable)"

///|
fn readable_stream_from_ffi(async_iterable : JsValue) -> ReadableStream {
  readable_stream_from_ffi_js(async_iterable).unsafe_cast()
}

///|
extern "js" fn readable_stream_locked_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.locked"

///|
fn readable_stream_locked_ffi(obj : JsValue) -> Bool {
  readable_stream_locked_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn readable_stream_cancel_ffi_js(
  obj : JsValue,
  reason : JsValue,
) -> JsValue = "(obj, reason) => obj.cancel(reason)"

///|
fn readable_stream_cancel_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_cancel_ffi_js(obj, reason).unsafe_cast()
}

///|
extern "js" fn readable_stream_get_reader_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getReader(options)"

///|
fn readable_stream_get_reader_ffi(
  obj : JsValue,
  options : JsValue,
) -> ReadableStreamReader {
  readable_stream_get_reader_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn readable_stream_pipe_through_ffi_js(
  obj : JsValue,
  transform : JsValue,
  options : JsValue,
) -> JsValue = "(obj, transform, options) => obj.pipeThrough(transform, options)"

///|
fn readable_stream_pipe_through_ffi(
  obj : JsValue,
  transform : JsValue,
  options : JsValue,
) -> ReadableStream {
  readable_stream_pipe_through_ffi_js(obj, transform, options).unsafe_cast()
}

///|
extern "js" fn readable_stream_pipe_to_ffi_js(
  obj : JsValue,
  destination : JsValue,
  options : JsValue,
) -> JsValue = "(obj, destination, options) => obj.pipeTo(destination, options)"

///|
fn readable_stream_pipe_to_ffi(
  obj : JsValue,
  destination : JsValue,
  options : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_pipe_to_ffi_js(obj, destination, options).unsafe_cast()
}

///|
extern "js" fn readable_stream_tee_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tee()"

///|
fn readable_stream_tee_ffi(obj : JsValue) -> Array[ReadableStream] {
  readable_stream_tee_ffi_js(obj).unsafe_cast()
}
