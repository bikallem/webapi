// Do not edit. This file is generated.
// MoonBit type: ComputedEffectTiming
// Specifications: web-animations.idl

/// [ComputedEffectTiming](https://developer.mozilla.org/en-US/docs/Web/API/ComputedEffectTiming)
#external
pub type ComputedEffectTiming

pub impl TJsValue for ComputedEffectTiming with to_js(self: ComputedEffectTiming) -> JsValue = "%identity"

pub impl FromJsAny for ComputedEffectTiming with from_js_any(value : JsAny) -> ComputedEffectTiming = "%identity"

pub(open) trait TComputedEffectTimingNewDuration : TJsValue {}

pub impl TComputedEffectTimingNewDuration for Double

pub impl TComputedEffectTimingNewDuration for String

pub fn ComputedEffectTiming::new(fill? : FillMode, 
iteration_start? : Double, 
iterations? : Double, 
direction? : PlaybackDirection, 
easing? : String, 
delay? : Double, 
end_delay? : Double, 
duration? : &TComputedEffectTimingNewDuration, 
progress? : Double, 
current_iteration? : Double) -> ComputedEffectTiming {
  computed_effect_timing_ffi(opt_to_js(fill), opt_to_js(iteration_start), opt_to_js(iterations), opt_to_js(direction), opt_to_js(easing), opt_to_js(delay), opt_to_js(end_delay), match duration {
Some(v) => v.to_js()
None => JsValue::undefined()
}, opt_to_js(progress), opt_to_js(current_iteration))
}

pub fn ComputedEffectTiming::empty() -> ComputedEffectTiming { computed_effect_timing_empty_ffi() }

pub(open) trait TComputedEffectTimingGetDuration : TJsValue {}

pub impl TComputedEffectTimingGetDuration for Double

pub impl TComputedEffectTimingGetDuration for String

#external
pub type ComputedEffectTimingGetDuration

pub impl TJsValue for ComputedEffectTimingGetDuration with to_js(self: ComputedEffectTimingGetDuration) -> JsValue = "%identity"

pub impl FromJsAny for ComputedEffectTimingGetDuration with from_js_any(value : JsAny) -> ComputedEffectTimingGetDuration = "%identity"

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TComputedEffectTimingGetDuration + FromJsAny] ComputedEffectTimingGetDuration::into(self : ComputedEffectTimingGetDuration) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TComputedEffectTimingGetDuration + FromJsAny] ComputedEffectTimingGetDuration::unsafe_into(self : ComputedEffectTimingGetDuration) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TComputedEffectTimingGetDuration] ComputedEffectTimingGetDuration::from(value : T) -> ComputedEffectTimingGetDuration = "%identity"

pub impl TComputedEffectTimingGetDuration for ComputedEffectTimingGetDuration

pub fn ComputedEffectTiming::fill(self : ComputedEffectTiming) -> FillMode? {
  computed_effect_timing_get_fill_ffi(TJsValue::to_js(self)).to_option()
}

pub fn ComputedEffectTiming::iteration_start(self : ComputedEffectTiming) -> Double? {
  computed_effect_timing_get_iteration_start_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ComputedEffectTiming::iterations(self : ComputedEffectTiming) -> Double? {
  computed_effect_timing_get_iterations_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ComputedEffectTiming::direction(self : ComputedEffectTiming) -> PlaybackDirection? {
  computed_effect_timing_get_direction_ffi(TJsValue::to_js(self)).to_option()
}

pub fn ComputedEffectTiming::easing(self : ComputedEffectTiming) -> String? {
  computed_effect_timing_get_easing_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ComputedEffectTiming::delay(self : ComputedEffectTiming) -> Double? {
  computed_effect_timing_get_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ComputedEffectTiming::end_delay(self : ComputedEffectTiming) -> Double? {
  computed_effect_timing_get_end_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ComputedEffectTiming::duration(self : ComputedEffectTiming) -> ComputedEffectTimingGetDuration? {
  computed_effect_timing_get_duration_ffi(TJsValue::to_js(self)).to_option()
}

pub fn ComputedEffectTiming::progress(self : ComputedEffectTiming) -> Double? {
  computed_effect_timing_get_progress_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ComputedEffectTiming::current_iteration(self : ComputedEffectTiming) -> Double? {
  computed_effect_timing_get_current_iteration_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn computed_effect_timing_ffi(fill: JsValue, iteration_start: JsValue, iterations: JsValue, direction: JsValue, easing: JsValue, delay: JsValue, end_delay: JsValue, duration: JsValue, progress: JsValue, current_iteration: JsValue) -> ComputedEffectTiming = 
#|(fill, iterationStart, iterations, direction, easing, delay, endDelay, duration, progress, currentIteration) => {
#|  const obj = {};
#|  if (fill !== undefined) obj.fill = fill;
#|  if (iterationStart !== undefined) obj.iterationStart = iterationStart;
#|  if (iterations !== undefined) obj.iterations = iterations;
#|  if (direction !== undefined) obj.direction = direction;
#|  if (easing !== undefined) obj.easing = easing;
#|  if (delay !== undefined) obj.delay = delay;
#|  if (endDelay !== undefined) obj.endDelay = endDelay;
#|  if (duration !== undefined) obj.duration = duration;
#|  if (progress !== undefined) obj.progress = progress;
#|  if (currentIteration !== undefined) obj.currentIteration = currentIteration;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn computed_effect_timing_empty_ffi() -> ComputedEffectTiming = "() => {}"

#cfg(target="js")
extern "js" fn computed_effect_timing_get_fill_ffi(obj: JsValue) -> JsValue = "(obj) => obj.fill"

#cfg(target="js")
extern "js" fn computed_effect_timing_get_iteration_start_ffi(obj: JsValue) -> JsValue = "(obj) => obj.iterationStart"

#cfg(target="js")
extern "js" fn computed_effect_timing_get_iterations_ffi(obj: JsValue) -> JsValue = "(obj) => obj.iterations"

#cfg(target="js")
extern "js" fn computed_effect_timing_get_direction_ffi(obj: JsValue) -> JsValue = "(obj) => obj.direction"

#cfg(target="js")
extern "js" fn computed_effect_timing_get_easing_ffi(obj: JsValue) -> JsValue = "(obj) => obj.easing"

#cfg(target="js")
extern "js" fn computed_effect_timing_get_delay_ffi(obj: JsValue) -> JsValue = "(obj) => obj.delay"

#cfg(target="js")
extern "js" fn computed_effect_timing_get_end_delay_ffi(obj: JsValue) -> JsValue = "(obj) => obj.endDelay"

#cfg(target="js")
extern "js" fn computed_effect_timing_get_duration_ffi(obj: JsValue) -> JsValue = "(obj) => obj.duration"

#cfg(target="js")
extern "js" fn computed_effect_timing_get_progress_ffi(obj: JsValue) -> JsValue = "(obj) => obj.progress"

#cfg(target="js")
extern "js" fn computed_effect_timing_get_current_iteration_ffi(obj: JsValue) -> JsValue = "(obj) => obj.currentIteration"

#cfg(target="wasm-gc")
fn computed_effect_timing_ffi(fill: JsValue, iteration_start: JsValue, iterations: JsValue, direction: JsValue, easing: JsValue, delay: JsValue, end_delay: JsValue, duration: JsValue, progress: JsValue, current_iteration: JsValue) -> ComputedEffectTiming = "webapi_ComputedEffectTiming" "new"

#cfg(target="wasm-gc")
fn computed_effect_timing_empty_ffi() -> ComputedEffectTiming = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn computed_effect_timing_get_fill_ffi(obj: JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_fill"

#cfg(target="wasm-gc")
fn computed_effect_timing_get_iteration_start_ffi(obj: JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_iterationStart"

#cfg(target="wasm-gc")
fn computed_effect_timing_get_iterations_ffi(obj: JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_iterations"

#cfg(target="wasm-gc")
fn computed_effect_timing_get_direction_ffi(obj: JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_direction"

#cfg(target="wasm-gc")
fn computed_effect_timing_get_easing_ffi(obj: JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_easing"

#cfg(target="wasm-gc")
fn computed_effect_timing_get_delay_ffi(obj: JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_delay"

#cfg(target="wasm-gc")
fn computed_effect_timing_get_end_delay_ffi(obj: JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_endDelay"

#cfg(target="wasm-gc")
fn computed_effect_timing_get_duration_ffi(obj: JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_duration"

#cfg(target="wasm-gc")
fn computed_effect_timing_get_progress_ffi(obj: JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_progress"

#cfg(target="wasm-gc")
fn computed_effect_timing_get_current_iteration_ffi(obj: JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_currentIteration"