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

///|
fn keyframe_animation_options_get_fill_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeAnimationOptions" "get_fill"

///|
fn keyframe_animation_options_get_iteration_start_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeAnimationOptions" "get_iterationStart"

///|
fn keyframe_animation_options_get_iterations_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeAnimationOptions" "get_iterations"

///|
fn keyframe_animation_options_get_direction_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeAnimationOptions" "get_direction"

///|
fn keyframe_animation_options_get_easing_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeAnimationOptions" "get_easing"

///|
fn keyframe_animation_options_get_composite_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeAnimationOptions" "get_composite"

///|
fn keyframe_animation_options_get_pseudo_element_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeAnimationOptions" "get_pseudoElement"

///|
fn keyframe_animation_options_get_id_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeAnimationOptions" "get_id"

///|
fn keyframe_animation_options_get_timeline_ffi(obj : JsValue) -> JsValue = "webapi_KeyframeAnimationOptions" "get_timeline"
