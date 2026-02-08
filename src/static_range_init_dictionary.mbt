// Do not edit. This file is generated.
// MoonBit type: StaticRangeInit
// Specifications: dom.idl

///|
/// [StaticRangeInit](https://developer.mozilla.org/en-US/docs/Web/API/StaticRangeInit)
#external
pub type StaticRangeInit

///|
pub impl TJsValue for StaticRangeInit with to_js(self : StaticRangeInit) -> JsValue = "%identity"

///|
pub fn StaticRangeInit::new(
  start_container : &TNode,
  start_offset : UInt,
  end_container : &TNode,
  end_offset : UInt,
) -> StaticRangeInit {
  static_range_init_ffi(
    TJsValue::to_js(start_container),
    TJsValue::to_js(start_offset),
    TJsValue::to_js(end_container),
    TJsValue::to_js(end_offset),
  )
}

///|
pub fn StaticRangeInit::empty() -> StaticRangeInit {
  static_range_init_empty_ffi()
}
