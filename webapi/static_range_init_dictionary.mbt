// Do not edit. This file is generated.
// MoonBit type: StaticRangeInit
// Specifications: dom.idl

/// [StaticRangeInit](https://developer.mozilla.org/en-US/docs/Web/API/StaticRangeInit)
#external
pub type StaticRangeInit

pub impl TJsValue for StaticRangeInit with to_js(self: StaticRangeInit) -> JsValue = "%identity"

pub impl FromJsAny for StaticRangeInit with from_js_any(value : JsAny) -> StaticRangeInit = "%identity"

pub fn StaticRangeInit::new(start_container : &TNode, 
start_offset : UInt, 
end_container : &TNode, 
end_offset : UInt) -> StaticRangeInit {
  static_range_init_ffi(TJsValue::to_js(start_container), TJsValue::to_js(start_offset), TJsValue::to_js(end_container), TJsValue::to_js(end_offset))
}

pub fn StaticRangeInit::empty() -> StaticRangeInit { static_range_init_empty_ffi() }

pub fn StaticRangeInit::start_container(self : StaticRangeInit) -> Node {
  static_range_init_get_start_container_ffi(TJsValue::to_js(self))
}

pub fn StaticRangeInit::start_offset(self : StaticRangeInit) -> UInt {
  static_range_init_get_start_offset_ffi(TJsValue::to_js(self))
}

pub fn StaticRangeInit::end_container(self : StaticRangeInit) -> Node {
  static_range_init_get_end_container_ffi(TJsValue::to_js(self))
}

pub fn StaticRangeInit::end_offset(self : StaticRangeInit) -> UInt {
  static_range_init_get_end_offset_ffi(TJsValue::to_js(self))
}