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

///|
#cfg(target="js")
extern "js" fn animation_effect_get_timing_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getTiming()"

///|
#cfg(target="js")
fn animation_effect_get_timing_ffi(obj : JsValue) -> EffectTiming {
  animation_effect_get_timing_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn animation_effect_get_computed_timing_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getComputedTiming()"

///|
#cfg(target="js")
fn animation_effect_get_computed_timing_ffi(
  obj : JsValue,
) -> ComputedEffectTiming {
  animation_effect_get_computed_timing_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn animation_effect_update_timing_ffi(
  obj : JsValue,
  timing : JsValue,
) -> Unit = "(obj, timing) => obj.updateTiming(timing)"

///|
#cfg(target="wasm-gc")
fn animation_effect_get_timing_ffi(obj : JsValue) -> EffectTiming = "webapi_AnimationEffect" "getTiming"

///|
#cfg(target="wasm-gc")
fn animation_effect_get_computed_timing_ffi(
  obj : JsValue,
) -> ComputedEffectTiming = "webapi_AnimationEffect" "getComputedTiming"

///|
#cfg(target="wasm-gc")
fn animation_effect_update_timing_ffi(obj : JsValue, timing : JsValue) -> Unit = "webapi_AnimationEffect" "updateTiming"
