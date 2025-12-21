///|
#external
pub type CaretPositionFromPointOptions

///|
pub impl TJsValue for CaretPositionFromPointOptions with to_js(
  self : CaretPositionFromPointOptions,
) -> JsValue = "%identity"

///|
extern "js" fn caret_position_from_point_options_ffi(
  shadow_roots : JsValue,
) -> CaretPositionFromPointOptions =
  #|(shadowRoots) => {
  #|  const obj = {};
  #|  if (shadowRoots !== undefined) obj.shadowRoots = shadowRoots;
  #|  return obj;
  #|}

///|
pub fn CaretPositionFromPointOptions::new(
  shadow_roots? : Array[ShadowRoot] = [],
) -> CaretPositionFromPointOptions {
  caret_position_from_point_options_ffi(TJsValue::to_js(shadow_roots))
}

///|
extern "js" fn caret_position_from_point_options_empty_ffi() -> CaretPositionFromPointOptions = "() => {}"

///|
pub fn CaretPositionFromPointOptions::empty() -> CaretPositionFromPointOptions {
  caret_position_from_point_options_empty_ffi()
}
