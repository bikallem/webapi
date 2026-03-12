// Do not edit. This file is generated.
// MoonBit type: DocumentTimeline
// Specifications: web-animations.idl

///|
/// [DocumentTimeline](https://developer.mozilla.org/en-US/docs/Web/API/DocumentTimeline)
#external
pub type DocumentTimeline

///|
pub impl TJsValue for DocumentTimeline with to_js(self : DocumentTimeline) -> JsValue = "%identity"

///|
pub impl FromJsAny for DocumentTimeline with from_js_any(value : JsAny) -> DocumentTimeline = "%identity"

///|
pub fn[T : TDocumentTimeline] DocumentTimeline::into(
  self : DocumentTimeline,
) -> T = "%identity"

///|
pub impl TDocumentTimeline for DocumentTimeline

///|
pub impl TAnimationTimeline for DocumentTimeline

///|
pub fn DocumentTimeline::new(
  options? : DocumentTimelineOptions,
) -> DocumentTimeline {
  document_timeline_new_ffi(opt_to_js(options))
}

///|
/// [DocumentTimeline](https://developer.mozilla.org/en-US/docs/Web/API/DocumentTimeline) interface.
pub trait TDocumentTimeline: TAnimationTimeline {}
