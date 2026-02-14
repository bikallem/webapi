// Do not edit. This file is generated.
// MoonBit type: ReadableStreamBYOBReaderReadOptions
// Specifications: streams.idl

///|
/// [ReadableStreamBYOBReaderReadOptions](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReaderReadOptions)
#external
pub type ReadableStreamBYOBReaderReadOptions

///|
pub impl TJsValue for ReadableStreamBYOBReaderReadOptions with to_js(
  self : ReadableStreamBYOBReaderReadOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableStreamBYOBReaderReadOptions with from_js_any(
  value : JsAny,
) -> ReadableStreamBYOBReaderReadOptions = "%identity"

///|
pub fn ReadableStreamBYOBReaderReadOptions::new(
  min? : UInt64 = (1 : UInt64),
) -> ReadableStreamBYOBReaderReadOptions {
  readable_stream_byob_reader_read_options_ffi(TJsValue::to_js(min))
}

///|
pub fn ReadableStreamBYOBReaderReadOptions::empty() -> ReadableStreamBYOBReaderReadOptions {
  readable_stream_byob_reader_read_options_empty_ffi()
}
