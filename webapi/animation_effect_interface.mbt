// Do not edit. This file is generated.
// MoonBit type: AnimationEffect
// Specifications: web-animations.idl

///|
/// [AnimationEffect](https://developer.mozilla.org/en-US/docs/Web/API/AnimationEffect)
#external
pub type AnimationEffect

///|
pub impl TJsValue for AnimationEffect with to_js(self : AnimationEffect) -> JsValue = "%identity"

///|
pub impl FromJsAny for AnimationEffect with from_js_any(value : JsAny) -> AnimationEffect = "%identity"

///|
pub fn[T : TAnimationEffect] AnimationEffect::into(self : AnimationEffect) -> T = "%identity"

///|
pub impl TAnimationEffect for AnimationEffect

///|
/// [AnimationEffect](https://developer.mozilla.org/en-US/docs/Web/API/AnimationEffect) interface.
pub trait TAnimationEffect: TJsValue {
  get_timing(self : Self) -> EffectTiming = _
  get_computed_timing(self : Self) -> ComputedEffectTiming = _
  update_timing(self : Self, timing? : OptionalEffectTiming) -> Unit = _
}

///|
/// [AnimationEffect.getTiming](https://developer.mozilla.org/en-US/docs/Web/API/AnimationEffect/getTiming)
impl TAnimationEffect with get_timing(self : Self) -> EffectTiming {
  animation_effect_get_timing_ffi(TJsValue::to_js(self))
}

///|
/// [AnimationEffect.getComputedTiming](https://developer.mozilla.org/en-US/docs/Web/API/AnimationEffect/getComputedTiming)
impl TAnimationEffect with get_computed_timing(self : Self) -> ComputedEffectTiming {
  animation_effect_get_computed_timing_ffi(TJsValue::to_js(self))
}

///|
/// [AnimationEffect.updateTiming](https://developer.mozilla.org/en-US/docs/Web/API/AnimationEffect/updateTiming)
impl TAnimationEffect with update_timing(
  self : Self,
  timing? : OptionalEffectTiming,
) -> Unit {
  animation_effect_update_timing_ffi(TJsValue::to_js(self), opt_to_js(timing))
}
