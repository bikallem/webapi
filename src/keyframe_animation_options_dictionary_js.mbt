///|
extern "js" fn keyframe_animation_options_ffi(
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  direction : JsValue,
  easing : JsValue,
  composite : JsValue,
  pseudo_element : JsValue,
  id : JsValue,
  timeline : JsValue,
) -> KeyframeAnimationOptions =
  #|(fill, iterationStart, iterations, direction, easing, composite, pseudoElement, id, timeline) => {
  #|  const obj = {};
  #|  if (fill !== undefined) obj.fill = fill;
  #|  if (iterationStart !== undefined) obj.iterationStart = iterationStart;
  #|  if (iterations !== undefined) obj.iterations = iterations;
  #|  if (direction !== undefined) obj.direction = direction;
  #|  if (easing !== undefined) obj.easing = easing;
  #|  if (composite !== undefined) obj.composite = composite;
  #|  if (pseudoElement !== undefined) obj.pseudoElement = pseudoElement;
  #|  if (id !== undefined) obj.id = id;
  #|  if (timeline !== undefined) obj.timeline = timeline;
  #|  return obj;
  #|}

///|
extern "js" fn keyframe_animation_options_empty_ffi() -> KeyframeAnimationOptions = "() => {}"

///|
extern "js" fn keyframe_animation_options_get_fill_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.fill"

///|
extern "js" fn keyframe_animation_options_get_iteration_start_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.iterationStart"

///|
extern "js" fn keyframe_animation_options_get_iterations_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.iterations"

///|
extern "js" fn keyframe_animation_options_get_direction_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.direction"

///|
extern "js" fn keyframe_animation_options_get_easing_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.easing"

///|
extern "js" fn keyframe_animation_options_get_composite_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composite"

///|
extern "js" fn keyframe_animation_options_get_pseudo_element_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.pseudoElement"

///|
extern "js" fn keyframe_animation_options_get_id_ffi(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
extern "js" fn keyframe_animation_options_get_timeline_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.timeline"
