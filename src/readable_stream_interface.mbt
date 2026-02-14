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
  strategy? : QueuingStrategy = QueuingStrategy::empty(),
) -> ReadableStream {
  readable_stream_new_ffi(
    opt_to_js(underlying_source),
    TJsValue::to_js(strategy),
  )
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
  options? : ReadableStreamGetReaderOptions = ReadableStreamGetReaderOptions::empty(),
) -> ReadableStreamReader {
  readable_stream_get_reader_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  )
}

///|
/// [ReadableStream.pipeThrough](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/pipeThrough)
impl TReadableStream with pipe_through(
  self : Self,
  transform : ReadableWritablePair,
  options? : StreamPipeOptions = StreamPipeOptions::empty(),
) -> ReadableStream {
  readable_stream_pipe_through_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(transform),
    TJsValue::to_js(options),
  )
}

///|
/// [ReadableStream.pipeTo](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/pipeTo)
impl TReadableStream with pipe_to(
  self : Self,
  destination : &TWritableStream,
  options? : StreamPipeOptions = StreamPipeOptions::empty(),
) -> JsPromise[JsValue] {
  readable_stream_pipe_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(destination),
    TJsValue::to_js(options),
  )
}

///|
/// [ReadableStream.tee](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/tee)
impl TReadableStream with tee(self : Self) -> Array[ReadableStream] {
  readable_stream_tee_ffi(TJsValue::to_js(self))
}
