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
pub(open) trait TBodyInit: TJsValue {}

///|
pub fn[T : TBodyInit + FromJsAny] BodyInit::into(self : BodyInit) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TBodyInit] BodyInit::from(value : T) -> BodyInit = "%identity"

///|
pub impl TBodyInit for BodyInit

///|
pub impl TBodyInit for ReadableStream

///|
pub impl TBodyInit for XMLHttpRequestBodyInit
