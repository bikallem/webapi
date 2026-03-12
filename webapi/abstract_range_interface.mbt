// Do not edit. This file is generated.
// MoonBit type: AbstractRange
// Specifications: dom.idl

/// [AbstractRange](https://developer.mozilla.org/en-US/docs/Web/API/AbstractRange)
#external
pub type AbstractRange

pub impl TJsValue for AbstractRange with to_js(self: AbstractRange) -> JsValue = "%identity"

pub impl FromJsAny for AbstractRange with from_js_any(value : JsAny) -> AbstractRange = "%identity"

pub fn[T: TAbstractRange] AbstractRange::into(self : AbstractRange) -> T = "%identity"

pub impl TAbstractRange for AbstractRange

/// [AbstractRange](https://developer.mozilla.org/en-US/docs/Web/API/AbstractRange) interface.
pub trait TAbstractRange: TJsValue {
  start_container(self : Self) -> Node = _
  start_offset(self : Self) -> UInt = _
  end_container(self : Self) -> Node = _
  end_offset(self : Self) -> UInt = _
  collapsed(self : Self) -> Bool = _
}

/// [AbstractRange.startContainer](https://developer.mozilla.org/en-US/docs/Web/API/AbstractRange/startContainer)
impl TAbstractRange with start_container(self : Self) -> Node {
  abstract_range_start_container_ffi(TJsValue::to_js(self))
}

/// [AbstractRange.startOffset](https://developer.mozilla.org/en-US/docs/Web/API/AbstractRange/startOffset)
impl TAbstractRange with start_offset(self : Self) -> UInt {
  abstract_range_start_offset_ffi(TJsValue::to_js(self))
}

/// [AbstractRange.endContainer](https://developer.mozilla.org/en-US/docs/Web/API/AbstractRange/endContainer)
impl TAbstractRange with end_container(self : Self) -> Node {
  abstract_range_end_container_ffi(TJsValue::to_js(self))
}

/// [AbstractRange.endOffset](https://developer.mozilla.org/en-US/docs/Web/API/AbstractRange/endOffset)
impl TAbstractRange with end_offset(self : Self) -> UInt {
  abstract_range_end_offset_ffi(TJsValue::to_js(self))
}

/// [AbstractRange.collapsed](https://developer.mozilla.org/en-US/docs/Web/API/AbstractRange/collapsed)
impl TAbstractRange with collapsed(self : Self) -> Bool {
  abstract_range_collapsed_ffi(TJsValue::to_js(self))
}