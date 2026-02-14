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
pub fn KeyframeEffectOptions::new(
  fill? : FillMode = FillMode::Auto,
  iteration_start? : Double = (0.0 : Double),
  iterations? : Double = (1.0 : Double),
  direction? : PlaybackDirection = PlaybackDirection::Normal,
  easing? : String = "linear",
  composite? : CompositeOperation = CompositeOperation::Replace,
  pseudo_element? : CSSOMString = JsValue::null(),
) -> KeyframeEffectOptions {
  keyframe_effect_options_ffi(
    TJsValue::to_js(fill),
    TJsValue::to_js(iteration_start),
    TJsValue::to_js(iterations),
    TJsValue::to_js(direction),
    TJsValue::to_js(easing),
    TJsValue::to_js(composite),
    TJsValue::to_js(pseudo_element),
  )
}

///|
pub fn KeyframeEffectOptions::empty() -> KeyframeEffectOptions {
  keyframe_effect_options_empty_ffi()
}

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
