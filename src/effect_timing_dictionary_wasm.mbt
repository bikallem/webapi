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

///|
fn effect_timing_get_fill_ffi(obj : JsValue) -> JsValue = "webapi_EffectTiming" "get_fill"

///|
fn effect_timing_get_iteration_start_ffi(obj : JsValue) -> JsValue = "webapi_EffectTiming" "get_iterationStart"

///|
fn effect_timing_get_iterations_ffi(obj : JsValue) -> JsValue = "webapi_EffectTiming" "get_iterations"

///|
fn effect_timing_get_direction_ffi(obj : JsValue) -> JsValue = "webapi_EffectTiming" "get_direction"

///|
fn effect_timing_get_easing_ffi(obj : JsValue) -> JsValue = "webapi_EffectTiming" "get_easing"
