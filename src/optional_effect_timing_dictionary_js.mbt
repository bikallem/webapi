///|
extern "js" fn optional_effect_timing_ffi(
  delay : JsValue,
  end_delay : JsValue,
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  duration : JsValue,
  direction : JsValue,
  easing : JsValue,
) -> OptionalEffectTiming =
  #|(delay, endDelay, fill, iterationStart, iterations, duration, direction, easing) => {
  #|  const obj = {};
  #|  if (delay !== undefined) obj.delay = delay;
  #|  if (endDelay !== undefined) obj.endDelay = endDelay;
  #|  if (fill !== undefined) obj.fill = fill;
  #|  if (iterationStart !== undefined) obj.iterationStart = iterationStart;
  #|  if (iterations !== undefined) obj.iterations = iterations;
  #|  if (duration !== undefined) obj.duration = duration;
  #|  if (direction !== undefined) obj.direction = direction;
  #|  if (easing !== undefined) obj.easing = easing;
  #|  return obj;
  #|}

///|
extern "js" fn optional_effect_timing_empty_ffi() -> OptionalEffectTiming = "() => {}"
