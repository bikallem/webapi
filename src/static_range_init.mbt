// Auto-generated MoonBit bindings for StaticRangeInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary StaticRangeInit {
//   required Node startContainer;
//   required unsigned long startOffset;
//   required Node endContainer;
//   required unsigned long endOffset;
// };

///|
#external
pub type StaticRangeInit

///|
pub impl TJsValue for StaticRangeInit with to_js(self : StaticRangeInit) -> JsValue = "%identity"

///|
fn static_range_init_ffi(
  start_container : JsValue,
  start_offset : JsValue,
  end_container : JsValue,
  end_offset : JsValue,
) -> StaticRangeInit = "webapi_StaticRangeInit" "new"

///|
pub fn StaticRangeInit::new(
  start_container : Node,
  start_offset : UInt,
  end_container : Node,
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
pub fn StaticRangeInit::empty() -> StaticRangeInit = "webapi_Dictionary" "empty"
