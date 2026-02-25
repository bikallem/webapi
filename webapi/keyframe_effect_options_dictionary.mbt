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
  fill? : FillMode = FillMode::Auto,
  iteration_start? : Double = (0.0 : Double),
  iterations? : Double = (1.0 : Double),
  direction? : PlaybackDirection = PlaybackDirection::Normal,
  easing? : String = "linear",
  delay? : Double,
  end_delay? : Double,
  duration? : &TKeyframeEffectOptionsNewDuration,
  composite? : CompositeOperation = CompositeOperation::Replace,
  pseudo_element? : CSSOMString,
) -> KeyframeEffectOptions {
  keyframe_effect_options_ffi(
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
#external
pub type KeyframeEffectOptionsGetDuration

///|
pub impl TJsValue for KeyframeEffectOptionsGetDuration with to_js(
  self : KeyframeEffectOptionsGetDuration,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for KeyframeEffectOptionsGetDuration with from_js_any(
  value : JsAny,
) -> KeyframeEffectOptionsGetDuration = "%identity"

///|
pub fn[T : TKeyframeEffectOptionsGetDuration + FromJsAny] KeyframeEffectOptionsGetDuration::into(
  self : KeyframeEffectOptionsGetDuration,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TKeyframeEffectOptionsGetDuration] KeyframeEffectOptionsGetDuration::from(
  value : T,
) -> KeyframeEffectOptionsGetDuration = "%identity"

///|
pub impl TKeyframeEffectOptionsGetDuration for KeyframeEffectOptionsGetDuration with to_js(
  self : KeyframeEffectOptionsGetDuration,
) -> JsValue = "%identity"

///|
pub fn KeyframeEffectOptions::fill(self : KeyframeEffectOptions) -> FillMode? {
  keyframe_effect_options_get_fill_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeEffectOptions::iteration_start(
  self : KeyframeEffectOptions,
) -> Double? {
  keyframe_effect_options_get_iteration_start_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeEffectOptions::iterations(
  self : KeyframeEffectOptions,
) -> Double? {
  keyframe_effect_options_get_iterations_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeEffectOptions::direction(
  self : KeyframeEffectOptions,
) -> PlaybackDirection? {
  keyframe_effect_options_get_direction_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeEffectOptions::easing(self : KeyframeEffectOptions) -> String? {
  keyframe_effect_options_get_easing_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeEffectOptions::delay(self : KeyframeEffectOptions) -> Double? {
  keyframe_effect_options_get_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeEffectOptions::end_delay(
  self : KeyframeEffectOptions,
) -> Double? {
  keyframe_effect_options_get_end_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeEffectOptions::duration(
  self : KeyframeEffectOptions,
) -> KeyframeEffectOptionsGetDuration? {
  keyframe_effect_options_get_duration_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeEffectOptions::composite(
  self : KeyframeEffectOptions,
) -> CompositeOperation? {
  keyframe_effect_options_get_composite_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeEffectOptions::pseudo_element(
  self : KeyframeEffectOptions,
) -> CSSOMString? {
  keyframe_effect_options_get_pseudo_element_ffi(TJsValue::to_js(self)).to_option()
}
