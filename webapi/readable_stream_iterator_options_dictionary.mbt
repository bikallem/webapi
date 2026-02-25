// Do not edit. This file is generated.
// MoonBit type: ReadableStreamIteratorOptions
// Specifications: streams.idl

///|
/// [ReadableStreamIteratorOptions](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamIteratorOptions)
#external
pub type ReadableStreamIteratorOptions

///|
pub impl TJsValue for ReadableStreamIteratorOptions with to_js(
  self : ReadableStreamIteratorOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableStreamIteratorOptions with from_js_any(
  value : JsAny,
) -> ReadableStreamIteratorOptions = "%identity"

///|
pub fn ReadableStreamIteratorOptions::new(
  prevent_cancel? : Bool = false,
) -> ReadableStreamIteratorOptions {
  readable_stream_iterator_options_ffi(TJsValue::to_js(prevent_cancel))
}

///|
pub fn ReadableStreamIteratorOptions::empty() -> ReadableStreamIteratorOptions {
  readable_stream_iterator_options_empty_ffi()
}

///|
pub fn ReadableStreamIteratorOptions::prevent_cancel(
  self : ReadableStreamIteratorOptions,
) -> Bool? {
  readable_stream_iterator_options_get_prevent_cancel_ffi(TJsValue::to_js(self)).to_option_prim()
}
