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
  shadow_roots? : Array[ShadowRoot],
) -> CaretPositionFromPointOptions {
  caret_position_from_point_options_ffi(opt_to_js(shadow_roots))
}

///|
pub fn CaretPositionFromPointOptions::empty() -> CaretPositionFromPointOptions {
  caret_position_from_point_options_empty_ffi()
}

///|
pub fn CaretPositionFromPointOptions::shadow_roots(
  self : CaretPositionFromPointOptions,
) -> Array[ShadowRoot]? {
  caret_position_from_point_options_get_shadow_roots_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn caret_position_from_point_options_ffi(
  shadow_roots : JsValue,
) -> CaretPositionFromPointOptions =
  #|(shadowRoots) => {
  #|  const obj = {};
  #|  if (shadowRoots !== undefined) obj.shadowRoots = shadowRoots;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn caret_position_from_point_options_empty_ffi() -> CaretPositionFromPointOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn caret_position_from_point_options_get_shadow_roots_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.shadowRoots"

///|
#cfg(target="wasm-gc")
fn caret_position_from_point_options_ffi(
  shadow_roots : JsValue,
) -> CaretPositionFromPointOptions = "webapi_CaretPositionFromPointOptions" "new"

///|
#cfg(target="wasm-gc")
fn caret_position_from_point_options_empty_ffi() -> CaretPositionFromPointOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn caret_position_from_point_options_get_shadow_roots_ffi(
  obj : JsValue,
) -> JsValue = "webapi_CaretPositionFromPointOptions" "get_shadowRoots"
