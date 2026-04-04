// Do not edit. This file is generated.
// MoonBit type: XMLHttpRequestUpload
// Specifications: xhr.idl

///|
/// [XMLHttpRequestUpload](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload)
#external
pub type XMLHttpRequestUpload

///|
pub impl TJsValue for XMLHttpRequestUpload with to_js(
  self : XMLHttpRequestUpload,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for XMLHttpRequestUpload with from_js_any(value : JsAny) -> XMLHttpRequestUpload = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TXMLHttpRequestUpload] XMLHttpRequestUpload::into(
  self : XMLHttpRequestUpload,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TXMLHttpRequestUpload] XMLHttpRequestUpload::unsafe_into(
  self : XMLHttpRequestUpload,
) -> T = "%identity"

///|
pub impl HasConstructor for XMLHttpRequestUpload with constructor_name() {
  "XMLHttpRequestUpload"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TXMLHttpRequestUpload + HasConstructor] XMLHttpRequestUpload::try_into(
  self : XMLHttpRequestUpload,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TXMLHttpRequestUpload for XMLHttpRequestUpload

///|
pub impl TXMLHttpRequestEventTarget for XMLHttpRequestUpload

///|
pub impl TEventTarget for XMLHttpRequestUpload

///|
/// [XMLHttpRequestUpload](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload) interface.
pub trait TXMLHttpRequestUpload: TXMLHttpRequestEventTarget {}
