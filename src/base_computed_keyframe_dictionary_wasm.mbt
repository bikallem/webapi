///|
fn base_computed_keyframe_ffi(
  offset : JsValue,
  computed_offset : JsValue,
  easing : JsValue,
  composite : JsValue,
) -> BaseComputedKeyframe = "webapi_BaseComputedKeyframe" "new"

///|
fn base_computed_keyframe_empty_ffi() -> BaseComputedKeyframe = "webapi_Dictionary" "empty"

///|
fn base_computed_keyframe_get_offset_ffi(obj : JsValue) -> JsValue = "webapi_BaseComputedKeyframe" "get_offset"

///|
fn base_computed_keyframe_get_computed_offset_ffi(obj : JsValue) -> JsValue = "webapi_BaseComputedKeyframe" "get_computedOffset"

///|
fn base_computed_keyframe_get_easing_ffi(obj : JsValue) -> JsValue = "webapi_BaseComputedKeyframe" "get_easing"

///|
fn base_computed_keyframe_get_composite_ffi(obj : JsValue) -> JsValue = "webapi_BaseComputedKeyframe" "get_composite"
