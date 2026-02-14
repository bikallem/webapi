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

///|
fn computed_effect_timing_get_fill_ffi(obj : JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_fill"

///|
fn computed_effect_timing_get_iteration_start_ffi(obj : JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_iterationStart"

///|
fn computed_effect_timing_get_iterations_ffi(obj : JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_iterations"

///|
fn computed_effect_timing_get_direction_ffi(obj : JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_direction"

///|
fn computed_effect_timing_get_easing_ffi(obj : JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_easing"

///|
fn computed_effect_timing_get_progress_ffi(obj : JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_progress"

///|
fn computed_effect_timing_get_current_iteration_ffi(obj : JsValue) -> JsValue = "webapi_ComputedEffectTiming" "get_currentIteration"
