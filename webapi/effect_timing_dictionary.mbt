// Do not edit. This file is generated.
// MoonBit type: EffectTiming
// Specifications: web-animations.idl

///|
/// [EffectTiming](https://developer.mozilla.org/en-US/docs/Web/API/EffectTiming)
#external
pub type EffectTiming

///|
pub impl TJsValue for EffectTiming with to_js(self : EffectTiming) -> JsValue = "%identity"

///|
pub impl FromJsAny for EffectTiming with from_js_any(value : JsAny) -> EffectTiming = "%identity"

///|
pub(open) trait TEffectTimingNewDuration: TJsValue {}

///|
pub impl TEffectTimingNewDuration for Double

///|
pub impl TEffectTimingNewDuration for String

///|
pub fn EffectTiming::new(
  fill? : FillMode,
  iteration_start? : Double,
  iterations? : Double,
  direction? : PlaybackDirection,
  easing? : String,
  delay? : Double,
  end_delay? : Double,
  duration? : &TEffectTimingNewDuration,
) -> EffectTiming {
  effect_timing_ffi(
    opt_to_js(fill),
    opt_to_js(iteration_start),
    opt_to_js(iterations),
    opt_to_js(direction),
    opt_to_js(easing),
    opt_to_js(delay),
    opt_to_js(end_delay),
    match duration {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
pub fn EffectTiming::empty() -> EffectTiming {
  effect_timing_empty_ffi()
}

///|
pub(open) trait TEffectTimingGetDuration: TJsValue {}

///|
pub impl TEffectTimingGetDuration for Double

///|
pub impl TEffectTimingGetDuration for String

///|
#external
pub type EffectTimingGetDuration

///|
pub impl TJsValue for EffectTimingGetDuration with to_js(
  self : EffectTimingGetDuration,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for EffectTimingGetDuration with from_js_any(value : JsAny) -> EffectTimingGetDuration = "%identity"

///|
pub fn[T : TEffectTimingGetDuration + FromJsAny] EffectTimingGetDuration::into(
  self : EffectTimingGetDuration,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TEffectTimingGetDuration] EffectTimingGetDuration::from(
  value : T,
) -> EffectTimingGetDuration = "%identity"

///|
pub impl TEffectTimingGetDuration for EffectTimingGetDuration

///|
pub fn EffectTiming::fill(self : EffectTiming) -> FillMode? {
  effect_timing_get_fill_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn EffectTiming::iteration_start(self : EffectTiming) -> Double? {
  effect_timing_get_iteration_start_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EffectTiming::iterations(self : EffectTiming) -> Double? {
  effect_timing_get_iterations_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EffectTiming::direction(self : EffectTiming) -> PlaybackDirection? {
  effect_timing_get_direction_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn EffectTiming::easing(self : EffectTiming) -> String? {
  effect_timing_get_easing_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EffectTiming::delay(self : EffectTiming) -> Double? {
  effect_timing_get_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EffectTiming::end_delay(self : EffectTiming) -> Double? {
  effect_timing_get_end_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn EffectTiming::duration(self : EffectTiming) -> EffectTimingGetDuration? {
  effect_timing_get_duration_ffi(TJsValue::to_js(self)).to_option()
}
