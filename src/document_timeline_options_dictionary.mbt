// Do not edit. This file is generated.
// MoonBit type: DocumentTimelineOptions
// Specifications: web-animations.idl

///|
/// [DocumentTimelineOptions](https://developer.mozilla.org/en-US/docs/Web/API/DocumentTimelineOptions)
#external
pub type DocumentTimelineOptions

///|
pub impl TJsValue for DocumentTimelineOptions with to_js(
  self : DocumentTimelineOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for DocumentTimelineOptions with from_js_any(value : JsAny) -> DocumentTimelineOptions = "%identity"

///|
pub fn DocumentTimelineOptions::new(
  origin_time? : DOMHighResTimeStamp = (0 : DOMHighResTimeStamp),
) -> DocumentTimelineOptions {
  document_timeline_options_ffi(TJsValue::to_js(origin_time))
}

///|
pub fn DocumentTimelineOptions::empty() -> DocumentTimelineOptions {
  document_timeline_options_empty_ffi()
}
