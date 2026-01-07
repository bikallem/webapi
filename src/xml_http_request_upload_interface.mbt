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
pub fn[T : TXMLHttpRequestUpload] XMLHttpRequestUpload::into(
  self : XMLHttpRequestUpload,
) -> T = "%identity"

///|
pub impl TXMLHttpRequestUpload for XMLHttpRequestUpload

///|
pub impl TXMLHttpRequestEventTarget for XMLHttpRequestUpload

///|
pub impl TEventTarget for XMLHttpRequestUpload

///|
/// [XMLHttpRequestUpload](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload) interface.
pub trait TXMLHttpRequestUpload: TXMLHttpRequestEventTarget {}
