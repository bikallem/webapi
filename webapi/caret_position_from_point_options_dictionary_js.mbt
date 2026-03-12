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
extern "js" fn caret_position_from_point_options_empty_ffi() -> CaretPositionFromPointOptions = "() => {}"

///|
extern "js" fn caret_position_from_point_options_get_shadow_roots_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.shadowRoots"
