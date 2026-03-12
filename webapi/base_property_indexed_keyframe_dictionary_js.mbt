extern "js" fn base_property_indexed_keyframe_ffi(offset: JsValue, easing: JsValue, composite: JsValue) -> BasePropertyIndexedKeyframe = 
#|(offset, easing, composite) => {
#|  const obj = {};
#|  if (offset !== undefined) obj.offset = offset;
#|  if (easing !== undefined) obj.easing = easing;
#|  if (composite !== undefined) obj.composite = composite;
#|  return obj;
#|}

extern "js" fn base_property_indexed_keyframe_empty_ffi() -> BasePropertyIndexedKeyframe = "() => {}"

extern "js" fn base_property_indexed_keyframe_get_offset_ffi(obj: JsValue) -> JsValue = "(obj) => obj.offset"

extern "js" fn base_property_indexed_keyframe_get_easing_ffi(obj: JsValue) -> JsValue = "(obj) => obj.easing"

extern "js" fn base_property_indexed_keyframe_get_composite_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composite"