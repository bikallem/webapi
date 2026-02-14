// Do not edit. This file is generated.
// MoonBit type: BodyInit
// Specifications: fetch.idl

///|
/// [BodyInit](https://developer.mozilla.org/en-US/docs/Web/API/BodyInit)
#external
pub type BodyInit

///|
pub impl TJsValue for BodyInit with to_js(self : BodyInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for BodyInit with from_js_any(value : JsAny) -> BodyInit = "%identity"

///|
pub(open) trait TBodyInit {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TBodyInit] BodyInit::into(self : BodyInit) -> T = "%identity"

///|
pub impl TBodyInit for BodyInit with to_js(self : BodyInit) -> JsValue = "%identity"

///|
pub impl TBodyInit for ReadableStream with to_js(self : ReadableStream) -> JsValue = "%identity"

///|
pub impl TBodyInit for XMLHttpRequestBodyInit with to_js(
  self : XMLHttpRequestBodyInit,
) -> JsValue = "%identity"
