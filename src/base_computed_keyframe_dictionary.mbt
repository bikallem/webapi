// Do not edit. This file is generated.
// MoonBit type: BaseComputedKeyframe
// Specifications: web-animations.idl

///|
/// [BaseComputedKeyframe](https://developer.mozilla.org/en-US/docs/Web/API/BaseComputedKeyframe)
#external
pub type BaseComputedKeyframe

///|
pub impl TJsValue for BaseComputedKeyframe with to_js(
  self : BaseComputedKeyframe,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for BaseComputedKeyframe with from_js_any(value : JsAny) -> BaseComputedKeyframe = "%identity"

///|
pub fn BaseComputedKeyframe::new(
  offset? : Double,
  computed_offset? : Double,
  easing? : String = "linear",
  composite? : CompositeOperationOrAuto = CompositeOperationOrAuto::Auto,
) -> BaseComputedKeyframe {
  base_computed_keyframe_ffi(
    opt_to_js(offset),
    opt_to_js(computed_offset),
    TJsValue::to_js(easing),
    TJsValue::to_js(composite),
  )
}

///|
pub fn BaseComputedKeyframe::empty() -> BaseComputedKeyframe {
  base_computed_keyframe_empty_ffi()
}
