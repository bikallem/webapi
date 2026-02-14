// Do not edit. This file is generated.
// MoonBit type: ComputedEffectTiming
// Specifications: web-animations.idl

///|
/// [ComputedEffectTiming](https://developer.mozilla.org/en-US/docs/Web/API/ComputedEffectTiming)
#external
pub type ComputedEffectTiming

///|
pub impl TJsValue for ComputedEffectTiming with to_js(
  self : ComputedEffectTiming,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ComputedEffectTiming with from_js_any(value : JsAny) -> ComputedEffectTiming = "%identity"

///|
pub(open) trait TComputedEffectTimingNewDuration {
  to_js(self : Self) -> JsValue
}

///|
pub impl TComputedEffectTimingNewDuration for Double with to_js(self : Double) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TComputedEffectTimingNewDuration for String with to_js(self : String) -> JsValue = "%identity"

///|
pub fn ComputedEffectTiming::new(
  fill? : FillMode = FillMode::Auto,
  iteration_start? : Double = (0.0 : Double),
  iterations? : Double = (1.0 : Double),
  direction? : PlaybackDirection = PlaybackDirection::Normal,
  easing? : String = "linear",
  delay? : Double,
  end_delay? : Double,
  duration? : &TComputedEffectTimingNewDuration,
  progress? : Double,
  current_iteration? : Double,
) -> ComputedEffectTiming {
  computed_effect_timing_ffi(
    TJsValue::to_js(fill),
    TJsValue::to_js(iteration_start),
    TJsValue::to_js(iterations),
    TJsValue::to_js(direction),
    TJsValue::to_js(easing),
    opt_to_js(delay),
    opt_to_js(end_delay),
    match duration {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(progress),
    opt_to_js(current_iteration),
  )
}

///|
pub fn ComputedEffectTiming::empty() -> ComputedEffectTiming {
  computed_effect_timing_empty_ffi()
}

///|
pub(open) trait TComputedEffectTimingGetDuration {
  to_js(self : Self) -> JsValue
}

///|
pub impl TComputedEffectTimingGetDuration for Double with to_js(self : Double) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TComputedEffectTimingGetDuration for String with to_js(self : String) -> JsValue = "%identity"

///|
/// [ComputedEffectTimingGetDuration](https://developer.mozilla.org/en-US/docs/Web/API/ComputedEffectTimingGetDuration)
#external
pub type ComputedEffectTimingGetDuration

///|
pub impl TJsValue for ComputedEffectTimingGetDuration with to_js(
  self : ComputedEffectTimingGetDuration,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ComputedEffectTimingGetDuration with from_js_any(
  value : JsAny,
) -> ComputedEffectTimingGetDuration = "%identity"

///|
pub fn[T : TComputedEffectTimingGetDuration] ComputedEffectTimingGetDuration::into(
  self : ComputedEffectTimingGetDuration,
) -> T = "%identity"

///|
pub impl TComputedEffectTimingGetDuration for ComputedEffectTimingGetDuration with to_js(
  self : ComputedEffectTimingGetDuration,
) -> JsValue = "%identity"

///|
pub fn ComputedEffectTiming::fill(self : ComputedEffectTiming) -> FillMode? {
  let result = computed_effect_timing_get_fill_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ComputedEffectTiming::iteration_start(
  self : ComputedEffectTiming,
) -> Double? {
  let result = computed_effect_timing_get_iteration_start_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ComputedEffectTiming::iterations(self : ComputedEffectTiming) -> Double? {
  let result = computed_effect_timing_get_iterations_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ComputedEffectTiming::direction(
  self : ComputedEffectTiming,
) -> PlaybackDirection? {
  let result = computed_effect_timing_get_direction_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ComputedEffectTiming::easing(self : ComputedEffectTiming) -> String? {
  let result = computed_effect_timing_get_easing_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ComputedEffectTiming::delay(self : ComputedEffectTiming) -> Double? {
  let result = computed_effect_timing_get_delay_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ComputedEffectTiming::end_delay(self : ComputedEffectTiming) -> Double? {
  let result = computed_effect_timing_get_end_delay_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ComputedEffectTiming::duration(
  self : ComputedEffectTiming,
) -> ComputedEffectTimingGetDuration? {
  let result = computed_effect_timing_get_duration_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ComputedEffectTiming::progress(self : ComputedEffectTiming) -> Double? {
  let result = computed_effect_timing_get_progress_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ComputedEffectTiming::current_iteration(
  self : ComputedEffectTiming,
) -> Double? {
  let result = computed_effect_timing_get_current_iteration_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
