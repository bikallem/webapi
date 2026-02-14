// Do not edit. This file is generated.
// MoonBit type: KeyframeAnimationOptions
// Specifications: web-animations.idl

///|
/// [KeyframeAnimationOptions](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeAnimationOptions)
#external
pub type KeyframeAnimationOptions

///|
pub impl TJsValue for KeyframeAnimationOptions with to_js(
  self : KeyframeAnimationOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for KeyframeAnimationOptions with from_js_any(value : JsAny) -> KeyframeAnimationOptions = "%identity"

///|
pub(open) trait TKeyframeAnimationOptionsNewDuration {
  to_js(self : Self) -> JsValue
}

///|
pub impl TKeyframeAnimationOptionsNewDuration for Double with to_js(
  self : Double,
) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TKeyframeAnimationOptionsNewDuration for String with to_js(
  self : String,
) -> JsValue = "%identity"

///|
pub fn KeyframeAnimationOptions::new(
  fill? : FillMode = FillMode::Auto,
  iteration_start? : Double = (0.0 : Double),
  iterations? : Double = (1.0 : Double),
  direction? : PlaybackDirection = PlaybackDirection::Normal,
  easing? : String = "linear",
  delay? : Double,
  end_delay? : Double,
  duration? : &TKeyframeAnimationOptionsNewDuration,
  composite? : CompositeOperation = CompositeOperation::Replace,
  pseudo_element? : CSSOMString,
  id? : String = "",
  timeline? : &TAnimationTimeline,
) -> KeyframeAnimationOptions {
  keyframe_animation_options_ffi(
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
    TJsValue::to_js(composite),
    opt_to_js(pseudo_element),
    TJsValue::to_js(id),
    opt_to_js(timeline),
  )
}

///|
pub fn KeyframeAnimationOptions::empty() -> KeyframeAnimationOptions {
  keyframe_animation_options_empty_ffi()
}

///|
pub(open) trait TKeyframeAnimationOptionsGetDuration {
  to_js(self : Self) -> JsValue
}

///|
pub impl TKeyframeAnimationOptionsGetDuration for Double with to_js(
  self : Double,
) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TKeyframeAnimationOptionsGetDuration for String with to_js(
  self : String,
) -> JsValue = "%identity"

///|
/// [KeyframeAnimationOptionsGetDuration](https://developer.mozilla.org/en-US/docs/Web/API/KeyframeAnimationOptionsGetDuration)
#external
pub type KeyframeAnimationOptionsGetDuration

///|
pub fn[T : TKeyframeAnimationOptionsGetDuration] KeyframeAnimationOptionsGetDuration::into(
  self : KeyframeAnimationOptionsGetDuration,
) -> T = "%identity"

///|
pub impl TKeyframeAnimationOptionsGetDuration for KeyframeAnimationOptionsGetDuration with to_js(
  self : KeyframeAnimationOptionsGetDuration,
) -> JsValue = "%identity"

///|
pub fn KeyframeAnimationOptions::fill(
  self : KeyframeAnimationOptions,
) -> FillMode? {
  let result = keyframe_animation_options_get_fill_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn KeyframeAnimationOptions::iteration_start(
  self : KeyframeAnimationOptions,
) -> Double? {
  let result = keyframe_animation_options_get_iteration_start_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyframeAnimationOptions::iterations(
  self : KeyframeAnimationOptions,
) -> Double? {
  let result = keyframe_animation_options_get_iterations_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyframeAnimationOptions::direction(
  self : KeyframeAnimationOptions,
) -> PlaybackDirection? {
  let result = keyframe_animation_options_get_direction_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn KeyframeAnimationOptions::easing(
  self : KeyframeAnimationOptions,
) -> String? {
  let result = keyframe_animation_options_get_easing_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyframeAnimationOptions::delay(
  self : KeyframeAnimationOptions,
) -> Double? {
  let result = keyframe_animation_options_get_delay_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyframeAnimationOptions::end_delay(
  self : KeyframeAnimationOptions,
) -> Double? {
  let result = keyframe_animation_options_get_end_delay_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyframeAnimationOptions::duration(
  self : KeyframeAnimationOptions,
) -> KeyframeAnimationOptionsGetDuration? {
  let result = keyframe_animation_options_get_duration_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn KeyframeAnimationOptions::composite(
  self : KeyframeAnimationOptions,
) -> CompositeOperation? {
  let result = keyframe_animation_options_get_composite_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn KeyframeAnimationOptions::pseudo_element(
  self : KeyframeAnimationOptions,
) -> CSSOMString? {
  let result = keyframe_animation_options_get_pseudo_element_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn KeyframeAnimationOptions::id(self : KeyframeAnimationOptions) -> String? {
  let result = keyframe_animation_options_get_id_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn KeyframeAnimationOptions::timeline(
  self : KeyframeAnimationOptions,
) -> AnimationTimeline? {
  let result = keyframe_animation_options_get_timeline_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
