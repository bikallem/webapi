// Do not edit. This file is generated.
// MoonBit type: ReadableStreamReader
// Specifications: streams.idl

///|
/// [ReadableStreamReader](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamReader)
#external
pub type ReadableStreamReader

///|
pub impl TJsValue for ReadableStreamReader with to_js(
  self : ReadableStreamReader,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableStreamReader with from_js_any(value : JsAny) -> ReadableStreamReader = "%identity"

///|
pub(open) trait TReadableStreamReader {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TReadableStreamReader] ReadableStreamReader::into(
  self : ReadableStreamReader,
) -> T = "%identity"

///|
pub impl TReadableStreamReader for ReadableStreamReader with to_js(
  self : ReadableStreamReader,
) -> JsValue = "%identity"

///|
pub impl TReadableStreamReader for ReadableStreamDefaultReader with to_js(
  self : ReadableStreamDefaultReader,
) -> JsValue = "%identity"

///|
pub impl TReadableStreamReader for ReadableStreamBYOBReader with to_js(
  self : ReadableStreamBYOBReader,
) -> JsValue = "%identity"
