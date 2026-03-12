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
pub(open) trait TKeyframeAnimationOptionsNewDuration: TJsValue {}

///|
pub impl TKeyframeAnimationOptionsNewDuration for Double

///|
pub impl TKeyframeAnimationOptionsNewDuration for String

///|
pub fn KeyframeAnimationOptions::new(
  fill? : FillMode,
  iteration_start? : Double,
  iterations? : Double,
  direction? : PlaybackDirection,
  easing? : String,
  delay? : Double,
  end_delay? : Double,
  duration? : &TKeyframeAnimationOptionsNewDuration,
  composite? : CompositeOperation,
  pseudo_element? : CSSOMString,
  id? : String,
  timeline? : &TAnimationTimeline,
) -> KeyframeAnimationOptions {
  keyframe_animation_options_ffi(
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
    opt_to_js(id),
    opt_to_js(timeline),
  )
}

///|
pub fn KeyframeAnimationOptions::empty() -> KeyframeAnimationOptions {
  keyframe_animation_options_empty_ffi()
}

///|
pub(open) trait TKeyframeAnimationOptionsGetDuration: TJsValue {}

///|
pub impl TKeyframeAnimationOptionsGetDuration for Double

///|
pub impl TKeyframeAnimationOptionsGetDuration for String

///|
#external
pub type KeyframeAnimationOptionsGetDuration

///|
pub impl TJsValue for KeyframeAnimationOptionsGetDuration with to_js(
  self : KeyframeAnimationOptionsGetDuration,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for KeyframeAnimationOptionsGetDuration with from_js_any(
  value : JsAny,
) -> KeyframeAnimationOptionsGetDuration = "%identity"

///|
pub fn[T : TKeyframeAnimationOptionsGetDuration + FromJsAny] KeyframeAnimationOptionsGetDuration::into(
  self : KeyframeAnimationOptionsGetDuration,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TKeyframeAnimationOptionsGetDuration] KeyframeAnimationOptionsGetDuration::from(
  value : T,
) -> KeyframeAnimationOptionsGetDuration = "%identity"

///|
pub impl TKeyframeAnimationOptionsGetDuration for KeyframeAnimationOptionsGetDuration

///|
pub fn KeyframeAnimationOptions::fill(
  self : KeyframeAnimationOptions,
) -> FillMode? {
  keyframe_animation_options_get_fill_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeAnimationOptions::iteration_start(
  self : KeyframeAnimationOptions,
) -> Double? {
  keyframe_animation_options_get_iteration_start_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeAnimationOptions::iterations(
  self : KeyframeAnimationOptions,
) -> Double? {
  keyframe_animation_options_get_iterations_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeAnimationOptions::direction(
  self : KeyframeAnimationOptions,
) -> PlaybackDirection? {
  keyframe_animation_options_get_direction_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeAnimationOptions::easing(
  self : KeyframeAnimationOptions,
) -> String? {
  keyframe_animation_options_get_easing_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeAnimationOptions::delay(
  self : KeyframeAnimationOptions,
) -> Double? {
  keyframe_animation_options_get_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeAnimationOptions::end_delay(
  self : KeyframeAnimationOptions,
) -> Double? {
  keyframe_animation_options_get_end_delay_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeAnimationOptions::duration(
  self : KeyframeAnimationOptions,
) -> KeyframeAnimationOptionsGetDuration? {
  keyframe_animation_options_get_duration_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeAnimationOptions::composite(
  self : KeyframeAnimationOptions,
) -> CompositeOperation? {
  keyframe_animation_options_get_composite_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeAnimationOptions::pseudo_element(
  self : KeyframeAnimationOptions,
) -> CSSOMString? {
  keyframe_animation_options_get_pseudo_element_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn KeyframeAnimationOptions::id(self : KeyframeAnimationOptions) -> String? {
  keyframe_animation_options_get_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn KeyframeAnimationOptions::timeline(
  self : KeyframeAnimationOptions,
) -> AnimationTimeline? {
  keyframe_animation_options_get_timeline_ffi(TJsValue::to_js(self)).to_option()
}
