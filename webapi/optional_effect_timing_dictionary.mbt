// Do not edit. This file is generated.
// MoonBit type: OptionalEffectTiming
// Specifications: web-animations.idl

///|
/// [OptionalEffectTiming](https://developer.mozilla.org/en-US/docs/Web/API/OptionalEffectTiming)
#external
pub type OptionalEffectTiming

///|
pub impl TJsValue for OptionalEffectTiming with to_js(
  self : OptionalEffectTiming,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for OptionalEffectTiming with from_js_any(value : JsAny) -> OptionalEffectTiming = "%identity"

///|
pub(open) trait TOptionalEffectTimingNewDuration: TJsValue {}

///|
pub impl TOptionalEffectTimingNewDuration for Double

///|
pub impl TOptionalEffectTimingNewDuration for String

///|
pub fn OptionalEffectTiming::new(
  delay? : Double,
  end_delay? : Double,
  fill? : FillMode,
  iteration_start? : Double,
  iterations? : Double,
  duration? : &TOptionalEffectTimingNewDuration,
  direction? : PlaybackDirection,
  easing? : String,
) -> OptionalEffectTiming {
  optional_effect_timing_ffi(
    opt_to_js(delay),
    opt_to_js(end_delay),
    opt_to_js(fill),
    opt_to_js(iteration_start),
    opt_to_js(iterations),
    match duration {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(direction),
    opt_to_js(easing),
  )
}

///|
pub fn OptionalEffectTiming::empty() -> OptionalEffectTiming {
  optional_effect_timing_empty_ffi()
}

///|
pub(open) trait TOptionalEffectTimingGetDuration: TJsValue {}

///|
pub impl TOptionalEffectTimingGetDuration for Double

///|
pub impl TOptionalEffectTimingGetDuration for String

///|
#external
pub type OptionalEffectTimingGetDuration

///|
pub impl TJsValue for OptionalEffectTimingGetDuration with to_js(
  self : OptionalEffectTimingGetDuration,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for OptionalEffectTimingGetDuration with from_js_any(
  value : JsAny,
) -> OptionalEffectTimingGetDuration = "%identity"

///|
pub fn[T : TOptionalEffectTimingGetDuration + FromJsAny] OptionalEffectTimingGetDuration::into(
  self : OptionalEffectTimingGetDuration,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TOptionalEffectTimingGetDuration] OptionalEffectTimingGetDuration::from(
  value : T,
) -> OptionalEffectTimingGetDuration = "%identity"

///|
pub impl TOptionalEffectTimingGetDuration for OptionalEffectTimingGetDuration

///|
pub fn OptionalEffectTiming::delay(self : OptionalEffectTiming) -> Double? {
  optional_effect_timing_get_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn OptionalEffectTiming::end_delay(self : OptionalEffectTiming) -> Double? {
  optional_effect_timing_get_end_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn OptionalEffectTiming::fill(self : OptionalEffectTiming) -> FillMode? {
  optional_effect_timing_get_fill_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn OptionalEffectTiming::iteration_start(
  self : OptionalEffectTiming,
) -> Double? {
  optional_effect_timing_get_iteration_start_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn OptionalEffectTiming::iterations(self : OptionalEffectTiming) -> Double? {
  optional_effect_timing_get_iterations_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn OptionalEffectTiming::duration(
  self : OptionalEffectTiming,
) -> OptionalEffectTimingGetDuration? {
  optional_effect_timing_get_duration_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn OptionalEffectTiming::direction(
  self : OptionalEffectTiming,
) -> PlaybackDirection? {
  optional_effect_timing_get_direction_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn OptionalEffectTiming::easing(self : OptionalEffectTiming) -> String? {
  optional_effect_timing_get_easing_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn optional_effect_timing_ffi(
  delay : JsValue,
  end_delay : JsValue,
  fill : JsValue,
  iteration_start : JsValue,
  iterations : JsValue,
  duration : JsValue,
  direction : JsValue,
  easing : JsValue,
) -> OptionalEffectTiming =
  #|(delay, endDelay, fill, iterationStart, iterations, duration, direction, easing) => {
  #|  const obj = {};
  #|  if (delay !== undefined) obj.delay = delay;
  #|  if (endDelay !== undefined) obj.endDelay = endDelay;
  #|  if (fill !== undefined) obj.fill = fill;
  #|  if (iterationStart !== undefined) obj.iterationStart = iterationStart;
  #|  if (iterations !== undefined) obj.iterations = iterations;
  #|  if (duration !== undefined) obj.duration = duration;
  #|  if (direction !== undefined) obj.direction = direction;
  #|  if (easing !== undefined) obj.easing = easing;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn optional_effect_timing_empty_ffi() -> OptionalEffectTiming = "() => {}"

///|
#cfg(target="js")
extern "js" fn optional_effect_timing_get_delay_ffi(obj : JsValue) -> JsValue = "(obj) => obj.delay"

///|
#cfg(target="js")
extern "js" fn optional_effect_timing_get_end_delay_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.endDelay"

///|
#cfg(target="js")
extern "js" fn optional_effect_timing_get_fill_ffi(obj : JsValue) -> JsValue = "(obj) => obj.fill"

///|
#cfg(target="js")
extern "js" fn optional_effect_timing_get_iteration_start_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.iterationStart"

///|
#cfg(target="js")
extern "js" fn optional_effect_timing_get_iterations_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.iterations"

///|
#cfg(target="js")
extern "js" fn optional_effect_timing_get_duration_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.duration"

///|
#cfg(target="js")
extern "js" fn optional_effect_timing_get_direction_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.direction"

///|
#cfg(target="js")
extern "js" fn optional_effect_timing_get_easing_ffi(obj : JsValue) -> JsValue = "(obj) => obj.easing"

///|
#cfg(target="wasm-gc")
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
#cfg(target="wasm-gc")
fn optional_effect_timing_empty_ffi() -> OptionalEffectTiming = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn optional_effect_timing_get_delay_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_delay"

///|
#cfg(target="wasm-gc")
fn optional_effect_timing_get_end_delay_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_endDelay"

///|
#cfg(target="wasm-gc")
fn optional_effect_timing_get_fill_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_fill"

///|
#cfg(target="wasm-gc")
fn optional_effect_timing_get_iteration_start_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_iterationStart"

///|
#cfg(target="wasm-gc")
fn optional_effect_timing_get_iterations_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_iterations"

///|
#cfg(target="wasm-gc")
fn optional_effect_timing_get_duration_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_duration"

///|
#cfg(target="wasm-gc")
fn optional_effect_timing_get_direction_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_direction"

///|
#cfg(target="wasm-gc")
fn optional_effect_timing_get_easing_ffi(obj : JsValue) -> JsValue = "webapi_OptionalEffectTiming" "get_easing"
