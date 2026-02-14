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
pub fn EffectTiming::new(
  fill? : FillMode = FillMode::Auto,
  iteration_start? : Double = (0.0 : Double),
  iterations? : Double = (1.0 : Double),
  direction? : PlaybackDirection = PlaybackDirection::Normal,
  easing? : String = "linear",
) -> EffectTiming {
  effect_timing_ffi(
    TJsValue::to_js(fill),
    TJsValue::to_js(iteration_start),
    TJsValue::to_js(iterations),
    TJsValue::to_js(direction),
    TJsValue::to_js(easing),
  )
}

///|
pub fn EffectTiming::empty() -> EffectTiming {
  effect_timing_empty_ffi()
}
