// Do not edit. This file is generated.
// MoonBit type: ReadableStreamGetReaderOptions
// Specifications: streams.idl

///|
/// [ReadableStreamGetReaderOptions](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamGetReaderOptions)
#external
pub type ReadableStreamGetReaderOptions

///|
pub impl TJsValue for ReadableStreamGetReaderOptions with to_js(
  self : ReadableStreamGetReaderOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableStreamGetReaderOptions with from_js_any(
  value : JsAny,
) -> ReadableStreamGetReaderOptions = "%identity"

///|
pub fn ReadableStreamGetReaderOptions::new(
  mode? : ReadableStreamReaderMode,
) -> ReadableStreamGetReaderOptions {
  readable_stream_get_reader_options_ffi(opt_to_js(mode))
}

///|
pub fn ReadableStreamGetReaderOptions::empty() -> ReadableStreamGetReaderOptions {
  readable_stream_get_reader_options_empty_ffi()
}
