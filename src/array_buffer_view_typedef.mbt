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
pub(open) trait TArrayBufferView {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TArrayBufferView] ArrayBufferView::into(self : ArrayBufferView) -> T = "%identity"

///|
pub impl TArrayBufferView for ArrayBufferView with to_js(self : ArrayBufferView) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for Int8Array with to_js(self : Int8Array) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for Int16Array with to_js(self : Int16Array) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for Int32Array with to_js(self : Int32Array) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for Uint8Array with to_js(self : Uint8Array) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for Uint16Array with to_js(self : Uint16Array) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for Uint32Array with to_js(self : Uint32Array) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for Uint8ClampedArray with to_js(
  self : Uint8ClampedArray,
) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for BigInt64Array with to_js(self : BigInt64Array) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for BigUint64Array with to_js(self : BigUint64Array) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for Float16Array with to_js(self : Float16Array) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for Float32Array with to_js(self : Float32Array) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for Float64Array with to_js(self : Float64Array) -> JsValue = "%identity"

///|
pub impl TArrayBufferView for DataView with to_js(self : DataView) -> JsValue = "%identity"
