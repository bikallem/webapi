// Do not edit. This file is generated.
// MoonBit type: ReadableStreamBYOBReader
// Specifications: streams.idl

///|
/// [ReadableStreamBYOBReader](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader)
#external
pub type ReadableStreamBYOBReader

///|
pub impl TJsValue for ReadableStreamBYOBReader with to_js(
  self : ReadableStreamBYOBReader,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableStreamBYOBReader with from_js_any(value : JsAny) -> ReadableStreamBYOBReader = "%identity"

///|
pub fn[T : TReadableStreamBYOBReader] ReadableStreamBYOBReader::into(
  self : ReadableStreamBYOBReader,
) -> T = "%identity"

///|
pub impl TReadableStreamBYOBReader for ReadableStreamBYOBReader

///|
pub fn ReadableStreamBYOBReader::new(
  stream : &TReadableStream,
) -> ReadableStreamBYOBReader {
  readable_stream_byob_reader_new_ffi(TJsValue::to_js(stream))
}

///|
/// [ReadableStreamBYOBReader](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader) interface.
pub trait TReadableStreamBYOBReader: TJsValue {
  read(
    self : Self,
    view : &TArrayBufferView,
    options? : ReadableStreamBYOBReaderReadOptions,
  ) -> JsPromise[ReadableStreamReadResult] = _
  release_lock(self : Self) -> Unit = _
  closed(self : Self) -> JsPromise[JsValue] = _
  cancel(self : Self, reason? : JsValue) -> JsPromise[JsValue] = _
}

///|
/// [ReadableStreamBYOBReader.read](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader/read)
impl TReadableStreamBYOBReader with read(
  self : Self,
  view : &TArrayBufferView,
  options? : ReadableStreamBYOBReaderReadOptions = ReadableStreamBYOBReaderReadOptions::empty(),
) -> JsPromise[ReadableStreamReadResult] {
  readable_stream_byob_reader_read_ffi(
    TJsValue::to_js(self),
    view.to_js(),
    TJsValue::to_js(options),
  )
}

///|
/// [ReadableStreamBYOBReader.releaseLock](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader/releaseLock)
impl TReadableStreamBYOBReader with release_lock(self : Self) -> Unit {
  readable_stream_byob_reader_release_lock_ffi(TJsValue::to_js(self))
}

///|
/// [ReadableStreamBYOBReader.closed](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader/closed)
impl TReadableStreamBYOBReader with closed(self : Self) -> JsPromise[JsValue] {
  readable_stream_byob_reader_closed_ffi(TJsValue::to_js(self))
}

///|
/// [ReadableStreamBYOBReader.cancel](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader/cancel)
impl TReadableStreamBYOBReader with cancel(self : Self, reason? : JsValue) -> JsPromise[
  JsValue,
] {
  readable_stream_byob_reader_cancel_ffi(
    TJsValue::to_js(self),
    opt_to_js(reason),
  )
}
