// Do not edit. This file is generated.
// MoonBit type: EffectTiming
// Specifications: web-animations.idl

/// [EffectTiming](https://developer.mozilla.org/en-US/docs/Web/API/EffectTiming)
#external
pub type EffectTiming

pub impl TJsValue for EffectTiming with to_js(self: EffectTiming) -> JsValue = "%identity"

pub impl FromJsAny for EffectTiming with from_js_any(value : JsAny) -> EffectTiming = "%identity"

pub(open) trait TEffectTimingNewDuration : TJsValue {}

pub impl TEffectTimingNewDuration for Double

pub impl TEffectTimingNewDuration for String

pub fn EffectTiming::new(fill? : FillMode, 
iteration_start? : Double, 
iterations? : Double, 
direction? : PlaybackDirection, 
easing? : String, 
delay? : Double, 
end_delay? : Double, 
duration? : &TEffectTimingNewDuration) -> EffectTiming {
  effect_timing_ffi(opt_to_js(fill), opt_to_js(iteration_start), opt_to_js(iterations), opt_to_js(direction), opt_to_js(easing), opt_to_js(delay), opt_to_js(end_delay), match duration {
Some(v) => v.to_js()
None => JsValue::undefined()
})
}

pub fn EffectTiming::empty() -> EffectTiming { effect_timing_empty_ffi() }

pub(open) trait TEffectTimingGetDuration : TJsValue {}

pub impl TEffectTimingGetDuration for Double

pub impl TEffectTimingGetDuration for String

#external
pub type EffectTimingGetDuration

pub impl TJsValue for EffectTimingGetDuration with to_js(self: EffectTimingGetDuration) -> JsValue = "%identity"

pub impl FromJsAny for EffectTimingGetDuration with from_js_any(value : JsAny) -> EffectTimingGetDuration = "%identity"

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TEffectTimingGetDuration + FromJsAny] EffectTimingGetDuration::into(self : EffectTimingGetDuration) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TEffectTimingGetDuration + FromJsAny] EffectTimingGetDuration::unsafe_into(self : EffectTimingGetDuration) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TEffectTimingGetDuration] EffectTimingGetDuration::from(value : T) -> EffectTimingGetDuration = "%identity"

pub impl TEffectTimingGetDuration for EffectTimingGetDuration

pub fn EffectTiming::fill(self : EffectTiming) -> FillMode? {
  effect_timing_get_fill_ffi(TJsValue::to_js(self)).to_option()
}

pub fn EffectTiming::iteration_start(self : EffectTiming) -> Double? {
  effect_timing_get_iteration_start_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn EffectTiming::iterations(self : EffectTiming) -> Double? {
  effect_timing_get_iterations_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn EffectTiming::direction(self : EffectTiming) -> PlaybackDirection? {
  effect_timing_get_direction_ffi(TJsValue::to_js(self)).to_option()
}

pub fn EffectTiming::easing(self : EffectTiming) -> String? {
  effect_timing_get_easing_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn EffectTiming::delay(self : EffectTiming) -> Double? {
  effect_timing_get_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn EffectTiming::end_delay(self : EffectTiming) -> Double? {
  effect_timing_get_end_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn EffectTiming::duration(self : EffectTiming) -> EffectTimingGetDuration? {
  effect_timing_get_duration_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn effect_timing_ffi(fill: JsValue, iteration_start: JsValue, iterations: JsValue, direction: JsValue, easing: JsValue, delay: JsValue, end_delay: JsValue, duration: JsValue) -> EffectTiming = 
#|(fill, iterationStart, iterations, direction, easing, delay, endDelay, duration) => {
#|  const obj = {};
#|  if (fill !== undefined) obj.fill = fill;
#|  if (iterationStart !== undefined) obj.iterationStart = iterationStart;
#|  if (iterations !== undefined) obj.iterations = iterations;
#|  if (direction !== undefined) obj.direction = direction;
#|  if (easing !== undefined) obj.easing = easing;
#|  if (delay !== undefined) obj.delay = delay;
#|  if (endDelay !== undefined) obj.endDelay = endDelay;
#|  if (duration !== undefined) obj.duration = duration;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn effect_timing_empty_ffi() -> EffectTiming = "() => {}"

#cfg(target="js")
extern "js" fn effect_timing_get_fill_ffi(obj: JsValue) -> JsValue = "(obj) => obj.fill"

#cfg(target="js")
extern "js" fn effect_timing_get_iteration_start_ffi(obj: JsValue) -> JsValue = "(obj) => obj.iterationStart"

#cfg(target="js")
extern "js" fn effect_timing_get_iterations_ffi(obj: JsValue) -> JsValue = "(obj) => obj.iterations"

#cfg(target="js")
extern "js" fn effect_timing_get_direction_ffi(obj: JsValue) -> JsValue = "(obj) => obj.direction"

#cfg(target="js")
extern "js" fn effect_timing_get_easing_ffi(obj: JsValue) -> JsValue = "(obj) => obj.easing"

#cfg(target="js")
extern "js" fn effect_timing_get_delay_ffi(obj: JsValue) -> JsValue = "(obj) => obj.delay"

#cfg(target="js")
extern "js" fn effect_timing_get_end_delay_ffi(obj: JsValue) -> JsValue = "(obj) => obj.endDelay"

#cfg(target="js")
extern "js" fn effect_timing_get_duration_ffi(obj: JsValue) -> JsValue = "(obj) => obj.duration"

#cfg(target="wasm-gc")
fn effect_timing_ffi(fill: JsValue, iteration_start: JsValue, iterations: JsValue, direction: JsValue, easing: JsValue, delay: JsValue, end_delay: JsValue, duration: JsValue) -> EffectTiming = "webapi_EffectTiming" "new"

#cfg(target="wasm-gc")
fn effect_timing_empty_ffi() -> EffectTiming = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn effect_timing_get_fill_ffi(obj: JsValue) -> JsValue = "webapi_EffectTiming" "get_fill"

#cfg(target="wasm-gc")
fn effect_timing_get_iteration_start_ffi(obj: JsValue) -> JsValue = "webapi_EffectTiming" "get_iterationStart"

#cfg(target="wasm-gc")
fn effect_timing_get_iterations_ffi(obj: JsValue) -> JsValue = "webapi_EffectTiming" "get_iterations"

#cfg(target="wasm-gc")
fn effect_timing_get_direction_ffi(obj: JsValue) -> JsValue = "webapi_EffectTiming" "get_direction"

#cfg(target="wasm-gc")
fn effect_timing_get_easing_ffi(obj: JsValue) -> JsValue = "webapi_EffectTiming" "get_easing"

#cfg(target="wasm-gc")
fn effect_timing_get_delay_ffi(obj: JsValue) -> JsValue = "webapi_EffectTiming" "get_delay"

#cfg(target="wasm-gc")
fn effect_timing_get_end_delay_ffi(obj: JsValue) -> JsValue = "webapi_EffectTiming" "get_endDelay"

#cfg(target="wasm-gc")
fn effect_timing_get_duration_ffi(obj: JsValue) -> JsValue = "webapi_EffectTiming" "get_duration"