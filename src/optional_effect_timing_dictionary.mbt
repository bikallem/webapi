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
pub(open) trait TOptionalEffectTimingNewDuration {
  to_js(self : Self) -> JsValue
}

///|
pub impl TOptionalEffectTimingNewDuration for Double with to_js(self : Double) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TOptionalEffectTimingNewDuration for String with to_js(self : String) -> JsValue = "%identity"

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
pub(open) trait TOptionalEffectTimingGetDuration {
  to_js(self : Self) -> JsValue
}

///|
pub impl TOptionalEffectTimingGetDuration for Double with to_js(self : Double) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TOptionalEffectTimingGetDuration for String with to_js(self : String) -> JsValue = "%identity"

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
pub impl TOptionalEffectTimingGetDuration for OptionalEffectTimingGetDuration with to_js(
  self : OptionalEffectTimingGetDuration,
) -> JsValue = "%identity"

///|
pub fn OptionalEffectTiming::delay(self : OptionalEffectTiming) -> Double? {
  let result = optional_effect_timing_get_delay_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn OptionalEffectTiming::end_delay(self : OptionalEffectTiming) -> Double? {
  let result = optional_effect_timing_get_end_delay_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn OptionalEffectTiming::fill(self : OptionalEffectTiming) -> FillMode? {
  let result = optional_effect_timing_get_fill_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn OptionalEffectTiming::iteration_start(
  self : OptionalEffectTiming,
) -> Double? {
  let result = optional_effect_timing_get_iteration_start_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn OptionalEffectTiming::iterations(self : OptionalEffectTiming) -> Double? {
  let result = optional_effect_timing_get_iterations_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn OptionalEffectTiming::duration(
  self : OptionalEffectTiming,
) -> OptionalEffectTimingGetDuration? {
  let result = optional_effect_timing_get_duration_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn OptionalEffectTiming::direction(
  self : OptionalEffectTiming,
) -> PlaybackDirection? {
  let result = optional_effect_timing_get_direction_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn OptionalEffectTiming::easing(self : OptionalEffectTiming) -> String? {
  let result = optional_effect_timing_get_easing_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
