// Do not edit. This file is generated.
// MoonBit type: XMLHttpRequestBodyInit
// Specifications: fetch.idl

/// [XMLHttpRequestBodyInit](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestBodyInit)
#external
pub type XMLHttpRequestBodyInit

pub impl TJsValue for XMLHttpRequestBodyInit with to_js(self: XMLHttpRequestBodyInit) -> JsValue = "%identity"

pub impl FromJsAny for XMLHttpRequestBodyInit with from_js_any(value : JsAny) -> XMLHttpRequestBodyInit = "%identity"

pub(open) trait TXMLHttpRequestBodyInit : TJsValue {}

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TXMLHttpRequestBodyInit + FromJsAny] XMLHttpRequestBodyInit::into(self : XMLHttpRequestBodyInit) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TXMLHttpRequestBodyInit + FromJsAny] XMLHttpRequestBodyInit::unsafe_into(self : XMLHttpRequestBodyInit) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TXMLHttpRequestBodyInit] XMLHttpRequestBodyInit::from(value : T) -> XMLHttpRequestBodyInit = "%identity"

pub impl TXMLHttpRequestBodyInit for XMLHttpRequestBodyInit

pub impl TXMLHttpRequestBodyInit for Blob

pub impl TXMLHttpRequestBodyInit for BufferSource

pub impl TXMLHttpRequestBodyInit for FormData

pub impl TXMLHttpRequestBodyInit for URLSearchParams

pub impl TXMLHttpRequestBodyInit for String