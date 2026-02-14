// Do not edit. This file is generated.
// MoonBit type: StructuredSerializeOptions
// Specifications: html.idl

///|
/// [StructuredSerializeOptions](https://developer.mozilla.org/en-US/docs/Web/API/StructuredSerializeOptions)
#external
pub type StructuredSerializeOptions

///|
pub impl TJsValue for StructuredSerializeOptions with to_js(
  self : StructuredSerializeOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for StructuredSerializeOptions with from_js_any(
  value : JsAny,
) -> StructuredSerializeOptions = "%identity"

///|
pub fn StructuredSerializeOptions::new(
  transfer? : Array[JsValue] = [],
) -> StructuredSerializeOptions {
  structured_serialize_options_ffi(TJsValue::to_js(transfer))
}

///|
pub fn StructuredSerializeOptions::empty() -> StructuredSerializeOptions {
  structured_serialize_options_empty_ffi()
}
