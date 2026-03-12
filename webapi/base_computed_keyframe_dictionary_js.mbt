///|
extern "js" fn base_computed_keyframe_ffi(
  offset : JsValue,
  computed_offset : JsValue,
  easing : JsValue,
  composite : JsValue,
) -> BaseComputedKeyframe =
  #|(offset, computedOffset, easing, composite) => {
  #|  const obj = {};
  #|  if (offset !== undefined) obj.offset = offset;
  #|  if (computedOffset !== undefined) obj.computedOffset = computedOffset;
  #|  if (easing !== undefined) obj.easing = easing;
  #|  if (composite !== undefined) obj.composite = composite;
  #|  return obj;
  #|}

///|
extern "js" fn base_computed_keyframe_empty_ffi() -> BaseComputedKeyframe = "() => {}"

///|
extern "js" fn base_computed_keyframe_get_offset_ffi(obj : JsValue) -> JsValue = "(obj) => obj.offset"

///|
extern "js" fn base_computed_keyframe_get_computed_offset_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.computedOffset"

///|
extern "js" fn base_computed_keyframe_get_easing_ffi(obj : JsValue) -> JsValue = "(obj) => obj.easing"

///|
extern "js" fn base_computed_keyframe_get_composite_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composite"
