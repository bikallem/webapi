///|
fn optional_effect_timing_ffi(
  delay : JsValue,
  end_delay : JsValue,
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  duration : JsValue,
  direction : JsValue,
  easing : JsValue,
) -> OptionalEffectTiming = "webapi_OptionalEffectTiming" "new"

///|
fn optional_effect_timing_empty_ffi() -> OptionalEffectTiming = "webapi_Dictionary" "empty"
