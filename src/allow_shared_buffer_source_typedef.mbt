// Do not edit. This file is generated.
// MoonBit type: AllowSharedBufferSource
// Specifications: webidl.idl

///|
/// [AllowSharedBufferSource](https://developer.mozilla.org/en-US/docs/Web/API/AllowSharedBufferSource)
#external
pub type AllowSharedBufferSource

///|
pub impl TJsValue for AllowSharedBufferSource with to_js(
  self : AllowSharedBufferSource,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for AllowSharedBufferSource with from_js_any(value : JsAny) -> AllowSharedBufferSource = "%identity"

///|
pub(open) trait TAllowSharedBufferSource: TJsValue {}

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TAllowSharedBufferSource + FromJsAny] AllowSharedBufferSource::into(
  self : AllowSharedBufferSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TAllowSharedBufferSource + FromJsAny] AllowSharedBufferSource::unsafe_into(
  self : AllowSharedBufferSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TAllowSharedBufferSource] AllowSharedBufferSource::from(
  value : T,
) -> AllowSharedBufferSource = "%identity"

///|
pub impl TAllowSharedBufferSource for AllowSharedBufferSource

///|
pub impl TAllowSharedBufferSource for ArrayBuffer

///|
pub impl TAllowSharedBufferSource for SharedArrayBuffer

///|
pub impl TAllowSharedBufferSource for ArrayBufferView
