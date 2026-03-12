///|
extern "js" fn animation_effect_get_timing_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.getTiming()"

///|
fn animation_effect_get_timing_ffi(obj : JsValue) -> EffectTiming {
  animation_effect_get_timing_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_effect_get_computed_timing_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getComputedTiming()"

///|
fn animation_effect_get_computed_timing_ffi(
  obj : JsValue,
) -> ComputedEffectTiming {
  animation_effect_get_computed_timing_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_effect_update_timing_ffi(
  obj : JsValue,
  timing : JsValue,
) -> Unit = "(obj, timing) => obj.updateTiming(timing)"
