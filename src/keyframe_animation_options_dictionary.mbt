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
pub fn KeyframeAnimationOptions::new(
  fill? : FillMode = FillMode::Auto,
  iteration_start? : Double = (0.0 : Double),
  iterations? : Double = (1.0 : Double),
  direction? : PlaybackDirection = PlaybackDirection::Normal,
  easing? : String = "linear",
  composite? : CompositeOperation = CompositeOperation::Replace,
  pseudo_element? : CSSOMString = JsValue::null(),
  id? : String = "",
  timeline? : &TAnimationTimeline,
) -> KeyframeAnimationOptions {
  keyframe_animation_options_ffi(
    TJsValue::to_js(fill),
    TJsValue::to_js(iteration_start),
    TJsValue::to_js(iterations),
    TJsValue::to_js(direction),
    TJsValue::to_js(easing),
    TJsValue::to_js(composite),
    TJsValue::to_js(pseudo_element),
    TJsValue::to_js(id),
    opt_to_js(timeline),
  )
}

///|
pub fn KeyframeAnimationOptions::empty() -> KeyframeAnimationOptions {
  keyframe_animation_options_empty_ffi()
}
