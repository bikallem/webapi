///|
fn computed_effect_timing_ffi(
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  direction : JsValue,
  easing : JsValue,
  progress : JsValue,
  current_iteration : JsValue,
) -> ComputedEffectTiming = "webapi_ComputedEffectTiming" "new"

///|
fn computed_effect_timing_empty_ffi() -> ComputedEffectTiming = "webapi_Dictionary" "empty"
