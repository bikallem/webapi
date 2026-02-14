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
pub(open) trait TAllowSharedBufferSource {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TAllowSharedBufferSource] AllowSharedBufferSource::into(
  self : AllowSharedBufferSource,
) -> T = "%identity"

///|
pub impl TAllowSharedBufferSource for AllowSharedBufferSource with to_js(
  self : AllowSharedBufferSource,
) -> JsValue = "%identity"

///|
pub impl TAllowSharedBufferSource for ArrayBuffer with to_js(self : ArrayBuffer) -> JsValue = "%identity"

///|
pub impl TAllowSharedBufferSource for SharedArrayBuffer with to_js(
  self : SharedArrayBuffer,
) -> JsValue = "%identity"

///|
pub impl TAllowSharedBufferSource for ArrayBufferView with to_js(
  self : ArrayBufferView,
) -> JsValue = "%identity"
