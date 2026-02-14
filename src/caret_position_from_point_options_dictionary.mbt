// Do not edit. This file is generated.
// MoonBit type: CaretPositionFromPointOptions
// Specifications: cssom-view.idl

///|
/// [CaretPositionFromPointOptions](https://developer.mozilla.org/en-US/docs/Web/API/CaretPositionFromPointOptions)
#external
pub type CaretPositionFromPointOptions

///|
pub impl TJsValue for CaretPositionFromPointOptions with to_js(
  self : CaretPositionFromPointOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CaretPositionFromPointOptions with from_js_any(
  value : JsAny,
) -> CaretPositionFromPointOptions = "%identity"

///|
pub fn CaretPositionFromPointOptions::new(
  shadow_roots? : Array[ShadowRoot] = [],
) -> CaretPositionFromPointOptions {
  caret_position_from_point_options_ffi(TJsValue::to_js(shadow_roots))
}

///|
pub fn CaretPositionFromPointOptions::empty() -> CaretPositionFromPointOptions {
  caret_position_from_point_options_empty_ffi()
}

///|
pub fn CaretPositionFromPointOptions::shadow_roots(
  self : CaretPositionFromPointOptions,
) -> Array[ShadowRoot]? {
  let result = caret_position_from_point_options_get_shadow_roots_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
