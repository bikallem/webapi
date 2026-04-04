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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TDocumentTimeline] DocumentTimeline::into(
  self : DocumentTimeline,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TDocumentTimeline] DocumentTimeline::unsafe_into(
  self : DocumentTimeline,
) -> T = "%identity"

///|
pub impl HasConstructor for DocumentTimeline with constructor_name() {
  "DocumentTimeline"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDocumentTimeline + HasConstructor] DocumentTimeline::try_into(
  self : DocumentTimeline,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn document_timeline_new_ffi(options : JsValue) -> DocumentTimeline = "(options) => new DocumentTimeline(options)"

///|
#cfg(target="wasm-gc")
fn document_timeline_new_ffi(options : JsValue) -> DocumentTimeline = "webapi_DocumentTimeline" "new"
