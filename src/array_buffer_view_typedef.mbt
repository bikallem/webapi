// Do not edit. This file is generated.
// MoonBit type: ArrayBufferView
// Specifications: webidl.idl

///|
/// [ArrayBufferView](https://developer.mozilla.org/en-US/docs/Web/API/ArrayBufferView)
#external
pub type ArrayBufferView

///|
pub impl TJsValue for ArrayBufferView with to_js(self : ArrayBufferView) -> JsValue = "%identity"

///|
pub impl FromJsAny for ArrayBufferView with from_js_any(value : JsAny) -> ArrayBufferView = "%identity"

///|
pub(open) trait TArrayBufferView: TJsValue {}

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TArrayBufferView + FromJsAny] ArrayBufferView::into(
  self : ArrayBufferView,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TArrayBufferView + FromJsAny] ArrayBufferView::unsafe_into(
  self : ArrayBufferView,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TArrayBufferView] ArrayBufferView::from(
  value : T,
) -> ArrayBufferView = "%identity"

///|
pub impl TArrayBufferView for ArrayBufferView

///|
pub impl TArrayBufferView for Int8Array

///|
pub impl TArrayBufferView for Int16Array

///|
pub impl TArrayBufferView for Int32Array

///|
pub impl TArrayBufferView for Uint8Array

///|
pub impl TArrayBufferView for Uint16Array

///|
pub impl TArrayBufferView for Uint32Array

///|
pub impl TArrayBufferView for Uint8ClampedArray

///|
pub impl TArrayBufferView for BigInt64Array

///|
pub impl TArrayBufferView for BigUint64Array

///|
pub impl TArrayBufferView for Float16Array

///|
pub impl TArrayBufferView for Float32Array

///|
pub impl TArrayBufferView for Float64Array

///|
pub impl TArrayBufferView for DataView
