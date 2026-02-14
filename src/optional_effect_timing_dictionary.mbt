// Do not edit. This file is generated.
// MoonBit type: OptionalEffectTiming
// Specifications: web-animations.idl

///|
/// [OptionalEffectTiming](https://developer.mozilla.org/en-US/docs/Web/API/OptionalEffectTiming)
#external
pub type OptionalEffectTiming

///|
pub impl TJsValue for OptionalEffectTiming with to_js(
  self : OptionalEffectTiming,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for OptionalEffectTiming with from_js_any(value : JsAny) -> OptionalEffectTiming = "%identity"

///|
pub(open) trait TOptionalEffectTimingNewDuration {
  to_js(self : Self) -> JsValue
}

///|
pub impl TOptionalEffectTimingNewDuration for Double with to_js(self : Double) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TOptionalEffectTimingNewDuration for String with to_js(self : String) -> JsValue = "%identity"

///|
pub fn OptionalEffectTiming::new(
  delay? : Double,
  end_delay? : Double,
  fill? : FillMode,
  iteration_start? : Double,
  iterations? : Double,
  duration? : &TOptionalEffectTimingNewDuration,
  direction? : PlaybackDirection,
  easing? : String,
) -> OptionalEffectTiming {
  optional_effect_timing_ffi(
    opt_to_js(delay),
    opt_to_js(end_delay),
    opt_to_js(fill),
    opt_to_js(iteration_start),
    opt_to_js(iterations),
    match duration {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(direction),
    opt_to_js(easing),
  )
}

///|
pub fn OptionalEffectTiming::empty() -> OptionalEffectTiming {
  optional_effect_timing_empty_ffi()
}
