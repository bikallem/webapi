///|
fn effect_timing_ffi(
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  direction : JsValue,
  easing : JsValue,
) -> EffectTiming = "webapi_EffectTiming" "new"

///|
fn effect_timing_empty_ffi() -> EffectTiming = "webapi_Dictionary" "empty"
