///|
fn base_keyframe_ffi(
  offset : JsValue,
  easing : JsValue,
  composite : JsValue,
) -> BaseKeyframe = "webapi_BaseKeyframe" "new"

///|
fn base_keyframe_empty_ffi() -> BaseKeyframe = "webapi_Dictionary" "empty"
