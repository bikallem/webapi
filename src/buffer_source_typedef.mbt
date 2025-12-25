// Do not edit. This file is generated.
// MoonBit type: BufferSource
// Specifications: webidl.idl

///|
#external
pub type BufferSource

///|
pub impl TJsValue for BufferSource with to_js(self : BufferSource) -> JsValue = "%identity"

///|
pub(open) trait TBufferSource {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TBufferSource] BufferSource::into(self : BufferSource) -> T = "%identity"

///|
pub impl TBufferSource for ArrayBufferView with to_js(self : ArrayBufferView) -> JsValue = "%identity"

///|
pub impl TBufferSource for ArrayBuffer with to_js(self : ArrayBuffer) -> JsValue = "%identity"
