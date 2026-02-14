///|
extern "js" fn effect_timing_ffi(
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  direction : JsValue,
  easing : JsValue,
) -> EffectTiming =
  #|(fill, iterationStart, iterations, direction, easing) => {
  #|  const obj = {};
  #|  if (fill !== undefined) obj.fill = fill;
  #|  if (iterationStart !== undefined) obj.iterationStart = iterationStart;
  #|  if (iterations !== undefined) obj.iterations = iterations;
  #|  if (direction !== undefined) obj.direction = direction;
  #|  if (easing !== undefined) obj.easing = easing;
  #|  return obj;
  #|}

///|
extern "js" fn effect_timing_empty_ffi() -> EffectTiming = "() => {}"

///|
extern "js" fn effect_timing_get_fill_ffi(obj : JsValue) -> JsValue = "(obj) => obj.fill"

///|
extern "js" fn effect_timing_get_iteration_start_ffi(obj : JsValue) -> JsValue = "(obj) => obj.iterationStart"

///|
extern "js" fn effect_timing_get_iterations_ffi(obj : JsValue) -> JsValue = "(obj) => obj.iterations"

///|
extern "js" fn effect_timing_get_direction_ffi(obj : JsValue) -> JsValue = "(obj) => obj.direction"

///|
extern "js" fn effect_timing_get_easing_ffi(obj : JsValue) -> JsValue = "(obj) => obj.easing"
