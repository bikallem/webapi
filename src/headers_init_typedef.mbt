// Do not edit. This file is generated.
// MoonBit type: HeadersInit
// Specifications: fetch.idl

///|
/// [HeadersInit](https://developer.mozilla.org/en-US/docs/Web/API/HeadersInit)
#external
pub type HeadersInit

///|
pub impl TJsValue for HeadersInit with to_js(self : HeadersInit) -> JsValue = "%identity"

///|
pub(open) trait THeadersInit {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : THeadersInit] HeadersInit::into(self : HeadersInit) -> T = "%identity"

///|
pub impl THeadersInit for Array[Array[String]] with to_js(
  self : Array[Array[String]],
) -> JsValue = "%identity"

///|
pub impl THeadersInit for JsValue with to_js(self : JsValue) -> JsValue = "%identity"
