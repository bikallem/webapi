// Do not edit. This file is generated.
// MoonBit type: ReadableWritablePair
// Specifications: streams.idl

///|
/// [ReadableWritablePair](https://developer.mozilla.org/en-US/docs/Web/API/ReadableWritablePair)
#external
pub type ReadableWritablePair

///|
pub impl TJsValue for ReadableWritablePair with to_js(
  self : ReadableWritablePair,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableWritablePair with from_js_any(value : JsAny) -> ReadableWritablePair = "%identity"

///|
pub fn ReadableWritablePair::new(
  readable : &TReadableStream,
  writable : &TWritableStream,
) -> ReadableWritablePair {
  readable_writable_pair_ffi(
    TJsValue::to_js(readable),
    TJsValue::to_js(writable),
  )
}

///|
pub fn ReadableWritablePair::empty() -> ReadableWritablePair {
  readable_writable_pair_empty_ffi()
}
