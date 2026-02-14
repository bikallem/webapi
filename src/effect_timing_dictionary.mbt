// Do not edit. This file is generated.
// MoonBit type: EffectTiming
// Specifications: web-animations.idl

///|
/// [EffectTiming](https://developer.mozilla.org/en-US/docs/Web/API/EffectTiming)
#external
pub type EffectTiming

///|
pub impl TJsValue for EffectTiming with to_js(self : EffectTiming) -> JsValue = "%identity"

///|
pub impl FromJsAny for EffectTiming with from_js_any(value : JsAny) -> EffectTiming = "%identity"

///|
pub(open) trait TEffectTimingNewDuration {
  to_js(self : Self) -> JsValue
}

///|
pub impl TEffectTimingNewDuration for Double with to_js(self : Double) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TEffectTimingNewDuration for String with to_js(self : String) -> JsValue = "%identity"

///|
pub fn EffectTiming::new(
  fill? : FillMode = FillMode::Auto,
  iteration_start? : Double = (0.0 : Double),
  iterations? : Double = (1.0 : Double),
  direction? : PlaybackDirection = PlaybackDirection::Normal,
  easing? : String = "linear",
  delay? : Double,
  end_delay? : Double,
  duration? : &TEffectTimingNewDuration,
) -> EffectTiming {
  effect_timing_ffi(
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
  )
}

///|
pub fn EffectTiming::empty() -> EffectTiming {
  effect_timing_empty_ffi()
}

///|
pub(open) trait TEffectTimingGetDuration {
  to_js(self : Self) -> JsValue
}

///|
pub impl TEffectTimingGetDuration for Double with to_js(self : Double) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TEffectTimingGetDuration for String with to_js(self : String) -> JsValue = "%identity"

///|
/// [EffectTimingGetDuration](https://developer.mozilla.org/en-US/docs/Web/API/EffectTimingGetDuration)
#external
pub type EffectTimingGetDuration

///|
pub fn[T : TEffectTimingGetDuration] EffectTimingGetDuration::into(
  self : EffectTimingGetDuration,
) -> T = "%identity"

///|
pub impl TEffectTimingGetDuration for EffectTimingGetDuration with to_js(
  self : EffectTimingGetDuration,
) -> JsValue = "%identity"

///|
pub fn EffectTiming::fill(self : EffectTiming) -> FillMode? {
  let result = effect_timing_get_fill_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn EffectTiming::iteration_start(self : EffectTiming) -> Double? {
  let result = effect_timing_get_iteration_start_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EffectTiming::iterations(self : EffectTiming) -> Double? {
  let result = effect_timing_get_iterations_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EffectTiming::direction(self : EffectTiming) -> PlaybackDirection? {
  let result = effect_timing_get_direction_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn EffectTiming::easing(self : EffectTiming) -> String? {
  let result = effect_timing_get_easing_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EffectTiming::delay(self : EffectTiming) -> Double? {
  let result = effect_timing_get_delay_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EffectTiming::end_delay(self : EffectTiming) -> Double? {
  let result = effect_timing_get_end_delay_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn EffectTiming::duration(self : EffectTiming) -> EffectTimingGetDuration? {
  let result = effect_timing_get_duration_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
