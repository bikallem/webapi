///|
extern "js" fn computed_effect_timing_ffi(
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  direction : JsValue,
  easing : JsValue,
  progress : JsValue,
  current_iteration : JsValue,
) -> ComputedEffectTiming =
  #|(fill, iterationStart, iterations, direction, easing, progress, currentIteration) => {
  #|  const obj = {};
  #|  if (fill !== undefined) obj.fill = fill;
  #|  if (iterationStart !== undefined) obj.iterationStart = iterationStart;
  #|  if (iterations !== undefined) obj.iterations = iterations;
  #|  if (direction !== undefined) obj.direction = direction;
  #|  if (easing !== undefined) obj.easing = easing;
  #|  if (progress !== undefined) obj.progress = progress;
  #|  if (currentIteration !== undefined) obj.currentIteration = currentIteration;
  #|  return obj;
  #|}

///|
extern "js" fn computed_effect_timing_empty_ffi() -> ComputedEffectTiming = "() => {}"

///|
extern "js" fn computed_effect_timing_get_fill_ffi(obj : JsValue) -> JsValue = "(obj) => obj.fill"

///|
extern "js" fn computed_effect_timing_get_iteration_start_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.iterationStart"

///|
extern "js" fn computed_effect_timing_get_iterations_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.iterations"

///|
extern "js" fn computed_effect_timing_get_direction_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.direction"

///|
extern "js" fn computed_effect_timing_get_easing_ffi(obj : JsValue) -> JsValue = "(obj) => obj.easing"

///|
extern "js" fn computed_effect_timing_get_progress_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.progress"

///|
extern "js" fn computed_effect_timing_get_current_iteration_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.currentIteration"
