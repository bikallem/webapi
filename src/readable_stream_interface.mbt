// Do not edit. This file is generated.
// MoonBit type: ReadableStream
// Specifications: streams.idl

///|
/// [ReadableStream](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream)
#external
pub type ReadableStream

///|
pub impl TJsValue for ReadableStream with to_js(self : ReadableStream) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableStream with from_js_any(value : JsAny) -> ReadableStream = "%identity"

///|
pub fn[T : TReadableStream] ReadableStream::into(self : ReadableStream) -> T = "%identity"

///|
pub impl TReadableStream for ReadableStream

///|
pub fn ReadableStream::new(
  underlying_source? : JsValue,
  strategy? : QueuingStrategy,
) -> ReadableStream {
  readable_stream_new_ffi(opt_to_js(underlying_source), opt_to_js(strategy))
}

///|
/// [ReadableStream](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream) interface.
pub trait TReadableStream: TJsValue {
  locked(self : Self) -> Bool = _
  cancel(self : Self, reason? : JsValue) -> JsPromise[JsValue] = _
  get_reader(self : Self, options? : ReadableStreamGetReaderOptions) -> ReadableStreamReader = _
  pipe_through(
    self : Self,
    transform : ReadableWritablePair,
    options? : StreamPipeOptions,
  ) -> ReadableStream = _
  pipe_to(
    self : Self,
    destination : &TWritableStream,
    options? : StreamPipeOptions,
  ) -> JsPromise[JsValue] = _
  tee(self : Self) -> Array[ReadableStream] = _
}

///|
/// [ReadableStream.from](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/from)
pub fn ReadableStream::from(async_iterable : JsValue) -> ReadableStream {
  readable_stream_from_ffi(TJsValue::to_js(async_iterable))
}

///|
/// [ReadableStream.locked](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/locked)
impl TReadableStream with locked(self : Self) -> Bool {
  readable_stream_locked_ffi(TJsValue::to_js(self))
}

///|
/// [ReadableStream.cancel](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/cancel)
impl TReadableStream with cancel(self : Self, reason? : JsValue) -> JsPromise[
  JsValue,
] {
  readable_stream_cancel_ffi(TJsValue::to_js(self), opt_to_js(reason))
}

///|
/// [ReadableStream.getReader](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/getReader)
impl TReadableStream with get_reader(
  self : Self,
  options? : ReadableStreamGetReaderOptions,
) -> ReadableStreamReader {
  readable_stream_get_reader_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [ReadableStream.pipeThrough](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/pipeThrough)
impl TReadableStream with pipe_through(
  self : Self,
  transform : ReadableWritablePair,
  options? : StreamPipeOptions,
) -> ReadableStream {
  readable_stream_pipe_through_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(transform),
    opt_to_js(options),
  )
}

///|
/// [ReadableStream.pipeTo](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/pipeTo)
impl TReadableStream with pipe_to(
  self : Self,
  destination : &TWritableStream,
  options? : StreamPipeOptions,
) -> JsPromise[JsValue] {
  readable_stream_pipe_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(destination),
    opt_to_js(options),
  )
}

///|
/// [ReadableStream.tee](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/tee)
impl TReadableStream with tee(self : Self) -> Array[ReadableStream] {
  readable_stream_tee_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn readable_stream_new_ffi(
  underlying_source : JsValue,
  strategy : JsValue,
) -> ReadableStream = "(underlying_source, strategy) => new ReadableStream(underlying_source, strategy)"

///|
#cfg(target="js")
extern "js" fn readable_stream_from_ffi_js(async_iterable : JsValue) -> JsValue = "(async_iterable) => ReadableStream.from(async_iterable)"

///|
#cfg(target="js")
fn readable_stream_from_ffi(async_iterable : JsValue) -> ReadableStream {
  readable_stream_from_ffi_js(async_iterable).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_locked_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.locked"

///|
#cfg(target="js")
fn readable_stream_locked_ffi(obj : JsValue) -> Bool {
  readable_stream_locked_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_cancel_ffi_js(
  obj : JsValue,
  reason : JsValue,
) -> JsValue = "(obj, reason) => obj.cancel(reason)"

///|
#cfg(target="js")
fn readable_stream_cancel_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_cancel_ffi_js(obj, reason).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_get_reader_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getReader(options)"

///|
#cfg(target="js")
fn readable_stream_get_reader_ffi(
  obj : JsValue,
  options : JsValue,
) -> ReadableStreamReader {
  readable_stream_get_reader_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_pipe_through_ffi_js(
  obj : JsValue,
  transform : JsValue,
  options : JsValue,
) -> JsValue = "(obj, transform, options) => obj.pipeThrough(transform, options)"

///|
#cfg(target="js")
fn readable_stream_pipe_through_ffi(
  obj : JsValue,
  transform : JsValue,
  options : JsValue,
) -> ReadableStream {
  readable_stream_pipe_through_ffi_js(obj, transform, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_pipe_to_ffi_js(
  obj : JsValue,
  destination : JsValue,
  options : JsValue,
) -> JsValue = "(obj, destination, options) => obj.pipeTo(destination, options)"

///|
#cfg(target="js")
fn readable_stream_pipe_to_ffi(
  obj : JsValue,
  destination : JsValue,
  options : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_pipe_to_ffi_js(obj, destination, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_tee_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tee()"

///|
#cfg(target="js")
fn readable_stream_tee_ffi(obj : JsValue) -> Array[ReadableStream] {
  readable_stream_tee_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn readable_stream_new_ffi(
  underlying_source : JsValue,
  strategy : JsValue,
) -> ReadableStream = "webapi_ReadableStream" "new"

///|
#cfg(target="wasm-gc")
fn readable_stream_from_ffi(async_iterable : JsValue) -> ReadableStream = "webapi_ReadableStream" "from"

///|
#cfg(target="wasm-gc")
fn readable_stream_locked_ffi(obj : JsValue) -> Bool = "webapi_ReadableStream" "get_locked"

///|
#cfg(target="wasm-gc")
fn readable_stream_cancel_ffi_wasm(obj : JsValue, reason : JsValue) -> JsValue = "webapi_ReadableStream" "cancel"

///|
#cfg(target="wasm-gc")
fn readable_stream_cancel_ffi(
  obj : JsValue,
  reason : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_cancel_ffi_wasm(obj, reason).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn readable_stream_get_reader_ffi_wasm(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "webapi_ReadableStream" "getReader"

///|
#cfg(target="wasm-gc")
fn readable_stream_get_reader_ffi(
  obj : JsValue,
  options : JsValue,
) -> ReadableStreamReader {
  readable_stream_get_reader_ffi_wasm(obj, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn readable_stream_pipe_through_ffi(
  obj : JsValue,
  transform : JsValue,
  options : JsValue,
) -> ReadableStream = "webapi_ReadableStream" "pipeThrough"

///|
#cfg(target="wasm-gc")
fn readable_stream_pipe_to_ffi_wasm(
  obj : JsValue,
  destination : JsValue,
  options : JsValue,
) -> JsValue = "webapi_ReadableStream" "pipeTo"

///|
#cfg(target="wasm-gc")
fn readable_stream_pipe_to_ffi(
  obj : JsValue,
  destination : JsValue,
  options : JsValue,
) -> JsPromise[JsValue] {
  readable_stream_pipe_to_ffi_wasm(obj, destination, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn readable_stream_tee_ffi_wasm(obj : JsValue) -> JsArray = "webapi_ReadableStream" "tee"

///|
#cfg(target="wasm-gc")
fn readable_stream_tee_ffi(obj : JsValue) -> Array[ReadableStream] {
  readable_stream_tee_ffi_wasm(obj).to_array()
}
