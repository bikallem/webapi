///|
fn base_computed_keyframe_ffi(
  offset : JsValue,
  computed_offset : JsValue,
  easing : JsValue,
  composite : JsValue,
) -> BaseComputedKeyframe = "webapi_BaseComputedKeyframe" "new"

///|
fn base_computed_keyframe_empty_ffi() -> BaseComputedKeyframe = "webapi_Dictionary" "empty"
