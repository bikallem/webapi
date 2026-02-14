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
pub fn ComputedEffectTiming::new(
  fill? : FillMode = FillMode::Auto,
  iteration_start? : Double = (0.0 : Double),
  iterations? : Double = (1.0 : Double),
  direction? : PlaybackDirection = PlaybackDirection::Normal,
  easing? : String = "linear",
  progress? : Double,
  current_iteration? : Double,
) -> ComputedEffectTiming {
  computed_effect_timing_ffi(
    TJsValue::to_js(fill),
    TJsValue::to_js(iteration_start),
    TJsValue::to_js(iterations),
    TJsValue::to_js(direction),
    TJsValue::to_js(easing),
    opt_to_js(progress),
    opt_to_js(current_iteration),
  )
}

///|
pub fn ComputedEffectTiming::empty() -> ComputedEffectTiming {
  computed_effect_timing_empty_ffi()
}

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
