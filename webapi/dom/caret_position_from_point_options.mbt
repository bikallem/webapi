// Auto-generated MoonBit bindings for CaretPositionFromPointOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary CaretPositionFromPointOptions {
//   sequence<ShadowRoot> shadowRoots = [];
// };

///|
#external
pub type CaretPositionFromPointOptions

///|
pub impl TJsValue for CaretPositionFromPointOptions with to_js(self : CaretPositionFromPointOptions) -> JsValue = "%identity"

///|
fn caret_position_from_point_options_ffi(shadow_roots : JsValue) -> CaretPositionFromPointOptions = "webapi_CaretPositionFromPointOptions" "new"

///|
pub fn CaretPositionFromPointOptions::new(
  shadow_roots? : Array[JsValue] = []
) -> CaretPositionFromPointOptions {
  caret_position_from_point_options_ffi(TJsValue::to_js(shadow_roots))
}

///|
pub fn CaretPositionFromPointOptions::empty() -> CaretPositionFromPointOptions = "webapi_Dictionary" "empty"