// Do not edit. This file is generated.
// MoonBit type: BufferSource
// Specifications: webidl.idl

/// [BufferSource](https://developer.mozilla.org/en-US/docs/Web/API/BufferSource)
#external
pub type BufferSource

pub impl TJsValue for BufferSource with to_js(self: BufferSource) -> JsValue = "%identity"

pub impl FromJsAny for BufferSource with from_js_any(value : JsAny) -> BufferSource = "%identity"

pub(open) trait TBufferSource : TJsValue {}

pub fn[T : TBufferSource + FromJsAny] BufferSource::into(self : BufferSource) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TBufferSource] BufferSource::from(value : T) -> BufferSource = "%identity"

pub impl TBufferSource for BufferSource

pub impl TBufferSource for ArrayBufferView

pub impl TBufferSource for ArrayBuffer