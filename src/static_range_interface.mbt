// Do not edit. This file is generated.
// MoonBit type: StaticRange
// Specifications: dom.idl

///|
/// [StaticRange](https://developer.mozilla.org/en-US/docs/Web/API/StaticRange)
#external
pub type StaticRange

///|
pub impl TJsValue for StaticRange with to_js(self : StaticRange) -> JsValue = "%identity"

///|
pub fn[T : TStaticRange] StaticRange::into(self : StaticRange) -> T = "%identity"

///|
pub impl TStaticRange for StaticRange

///|
pub impl TAbstractRange for StaticRange

///|
extern "js" fn static_range_new_ffi(init : JsValue) -> StaticRange = "(init) => new StaticRange(init)"

///|
pub fn StaticRange::new(init : StaticRangeInit) -> StaticRange {
  static_range_new_ffi(TJsValue::to_js(init))
}

///|
/// [StaticRange](https://developer.mozilla.org/en-US/docs/Web/API/StaticRange) interface.
pub trait TStaticRange: TAbstractRange {}
