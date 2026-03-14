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
pub(open) trait TReadableStreamReader: TJsValue {}

///|
pub fn[T : TReadableStreamReader + FromJsAny] ReadableStreamReader::into(
  self : ReadableStreamReader,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TReadableStreamReader] ReadableStreamReader::from(
  value : T,
) -> ReadableStreamReader = "%identity"

///|
pub impl TReadableStreamReader for ReadableStreamReader

///|
pub impl TReadableStreamReader for ReadableStreamDefaultReader

///|
pub impl TReadableStreamReader for ReadableStreamBYOBReader
