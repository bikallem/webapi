///|
fn keyframe_animation_options_ffi(
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  direction : JsValue,
  easing : JsValue,
  composite : JsValue,
  pseudo_element : JsValue,
  id : JsValue,
  timeline : JsValue,
) -> KeyframeAnimationOptions = "webapi_KeyframeAnimationOptions" "new"

///|
fn keyframe_animation_options_empty_ffi() -> KeyframeAnimationOptions = "webapi_Dictionary" "empty"
