// Do not edit. This file is generated.
// MoonBit type: KeyframeEffectOptions
// Specifications: web-animations.idl

///|
/// [KeyframeEffectOptions](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffectOptions)
#external
pub type KeyframeEffectOptions

///|
pub impl TJsValue for KeyframeEffectOptions with to_js(
  self : KeyframeEffectOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for KeyframeEffectOptions with from_js_any(value : JsAny) -> KeyframeEffectOptions = "%identity"

///|
pub(open) trait TKeyframeEffectOptionsNewDuration {
  to_js(self : Self) -> JsValue
}

///|
pub impl TKeyframeEffectOptionsNewDuration for Double with to_js(self : Double) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TKeyframeEffectOptionsNewDuration for String with to_js(self : String) -> JsValue = "%identity"

///|
pub fn KeyframeEffectOptions::new(
  fill? : FillMode,
  iteration_start? : Double,
  iterations? : Double,
  direction? : PlaybackDirection,
  easing? : String,
  delay? : Double,
  end_delay? : Double,
  duration? : &TKeyframeEffectOptionsNewDuration,
  composite? : CompositeOperation,
  pseudo_element? : CSSOMString,
) -> KeyframeEffectOptions {
  keyframe_effect_options_ffi(
    opt_to_js(fill),
    opt_to_js(iteration_start),
    opt_to_js(iterations),
    opt_to_js(direction),
    opt_to_js(easing),
    opt_to_js(delay),
    opt_to_js(end_delay),
    match duration {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(composite),
    opt_to_js(pseudo_element),
  )
}

///|
pub fn KeyframeEffectOptions::empty() -> KeyframeEffectOptions {
  keyframe_effect_options_empty_ffi()
}

///|
pub(open) trait TKeyframeEffectOptionsGetDuration {
  to_js(self : Self) -> JsValue
}

///|
pub impl TKeyframeEffectOptionsGetDuration for Double with to_js(self : Double) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TKeyframeEffectOptionsGetDuration for String with to_js(self : String) -> JsValue = "%identity"

///|
/// [KeyframeEffectOptionsGetDuration](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeEffectOptionsGetDuration)
#external
pub type KeyframeEffectOptionsGetDuration

///|
pub fn[T : TKeyframeEffectOptionsGetDuration] KeyframeEffectOptionsGetDuration::into(
  self : KeyframeEffectOptionsGetDuration,
) -> T = "%identity"

///|
pub impl TKeyframeEffectOptionsGetDuration for KeyframeEffectOptionsGetDuration with to_js(
  self : KeyframeEffectOptionsGetDuration,
) -> JsValue = "%identity"

///|
pub fn KeyframeEffectOptions::fill(self : KeyframeEffectOptions) -> FillMode? {
  let result = keyframe_effect_options_get_fill_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn KeyframeEffectOptions::iteration_start(
  self : KeyframeEffectOptions,
) -> Double? {
  let result = keyframe_effect_options_get_iteration_start_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyframeEffectOptions::iterations(
  self : KeyframeEffectOptions,
) -> Double? {
  let result = keyframe_effect_options_get_iterations_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyframeEffectOptions::direction(
  self : KeyframeEffectOptions,
) -> PlaybackDirection? {
  let result = keyframe_effect_options_get_direction_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn KeyframeEffectOptions::easing(self : KeyframeEffectOptions) -> String? {
  let result = keyframe_effect_options_get_easing_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyframeEffectOptions::delay(self : KeyframeEffectOptions) -> Double? {
  let result = keyframe_effect_options_get_delay_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyframeEffectOptions::end_delay(
  self : KeyframeEffectOptions,
) -> Double? {
  let result = keyframe_effect_options_get_end_delay_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyframeEffectOptions::duration(
  self : KeyframeEffectOptions,
) -> KeyframeEffectOptionsGetDuration? {
  let result = keyframe_effect_options_get_duration_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn KeyframeEffectOptions::composite(
  self : KeyframeEffectOptions,
) -> CompositeOperation? {
  let result = keyframe_effect_options_get_composite_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn KeyframeEffectOptions::pseudo_element(
  self : KeyframeEffectOptions,
) -> CSSOMString? {
  let result = keyframe_effect_options_get_pseudo_element_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
