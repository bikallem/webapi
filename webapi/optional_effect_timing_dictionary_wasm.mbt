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

///|
fn optional_effect_timing_get_delay_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_delay"

///|
fn optional_effect_timing_get_end_delay_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_endDelay"

///|
fn optional_effect_timing_get_fill_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_fill"

///|
fn optional_effect_timing_get_iteration_start_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_iterationStart"

///|
fn optional_effect_timing_get_iterations_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_iterations"

///|
fn optional_effect_timing_get_duration_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_duration"

///|
fn optional_effect_timing_get_direction_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_direction"

///|
fn optional_effect_timing_get_easing_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_easing"
