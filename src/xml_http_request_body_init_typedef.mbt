// Do not edit. This file is generated.
// MoonBit type: XMLHttpRequestBodyInit
// Specifications: fetch.idl

///|
#external
pub type XMLHttpRequestBodyInit

///|
pub impl TJsValue for XMLHttpRequestBodyInit with to_js(
  self : XMLHttpRequestBodyInit,
) -> JsValue = "%identity"

///|
pub(open) trait TXMLHttpRequestBodyInit {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TXMLHttpRequestBodyInit] XMLHttpRequestBodyInit::into(
  self : XMLHttpRequestBodyInit,
) -> T = "%identity"

///|
pub impl TXMLHttpRequestBodyInit for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub impl TXMLHttpRequestBodyInit for BufferSource with to_js(
  self : BufferSource,
) -> JsValue = "%identity"

///|
pub impl TXMLHttpRequestBodyInit for FormData with to_js(self : FormData) -> JsValue = "%identity"

///|
pub impl TXMLHttpRequestBodyInit for URLSearchParams with to_js(
  self : URLSearchParams,
) -> JsValue = "%identity"

///|
pub impl TXMLHttpRequestBodyInit for String with to_js(self : String) -> JsValue = "%identity"
