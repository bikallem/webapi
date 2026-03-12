extern "js" fn optional_effect_timing_ffi(delay: JsValue, end_delay: JsValue, fill: JsValue, iteration_start: JsValue, iterations: JsValue, duration: JsValue, direction: JsValue, easing: JsValue) -> OptionalEffectTiming = 
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

extern "js" fn optional_effect_timing_empty_ffi() -> OptionalEffectTiming = "() => {}"

extern "js" fn optional_effect_timing_get_delay_ffi(obj: JsValue) -> JsValue = "(obj) => obj.delay"

extern "js" fn optional_effect_timing_get_end_delay_ffi(obj: JsValue) -> JsValue = "(obj) => obj.endDelay"

extern "js" fn optional_effect_timing_get_fill_ffi(obj: JsValue) -> JsValue = "(obj) => obj.fill"

extern "js" fn optional_effect_timing_get_iteration_start_ffi(obj: JsValue) -> JsValue = "(obj) => obj.iterationStart"

extern "js" fn optional_effect_timing_get_iterations_ffi(obj: JsValue) -> JsValue = "(obj) => obj.iterations"

extern "js" fn optional_effect_timing_get_duration_ffi(obj: JsValue) -> JsValue = "(obj) => obj.duration"

extern "js" fn optional_effect_timing_get_direction_ffi(obj: JsValue) -> JsValue = "(obj) => obj.direction"

extern "js" fn optional_effect_timing_get_easing_ffi(obj: JsValue) -> JsValue = "(obj) => obj.easing"