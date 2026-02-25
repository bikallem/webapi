///|
fn animation_effect_get_timing_ffi(obj : JsValue) -> EffectTiming = "webapi_AnimationEffect" "getTiming"

///|
fn animation_effect_get_computed_timing_ffi(
  obj : JsValue,
) -> ComputedEffectTiming = "webapi_AnimationEffect" "getComputedTiming"

///|
fn animation_effect_update_timing_ffi(obj : JsValue, timing : JsValue) -> Unit = "webapi_AnimationEffect" "updateTiming"
