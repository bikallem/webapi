///|
fn base_keyframe_ffi(
  offset : JsValue,
  easing : JsValue,
  composite : JsValue,
) -> BaseKeyframe = "webapi_BaseKeyframe" "new"

///|
fn base_keyframe_empty_ffi() -> BaseKeyframe = "webapi_Dictionary" "empty"

///|
fn base_keyframe_get_offset_ffi(obj : JsValue) -> JsValue = "webapi_BaseKeyframe" "get_offset"

///|
fn base_keyframe_get_easing_ffi(obj : JsValue) -> JsValue = "webapi_BaseKeyframe" "get_easing"

///|
fn base_keyframe_get_composite_ffi(obj : JsValue) -> JsValue = "webapi_BaseKeyframe" "get_composite"
