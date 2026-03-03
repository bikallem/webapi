// Do not edit. This file is generated.
// MoonBit type: BaseKeyframe
// Specifications: web-animations.idl

///|
/// [BaseKeyframe](https://developer.mozilla.org/en-US/docs/Web/API/BaseKeyframe)
#external
pub type BaseKeyframe

///|
pub impl TJsValue for BaseKeyframe with to_js(self : BaseKeyframe) -> JsValue = "%identity"

///|
pub impl FromJsAny for BaseKeyframe with from_js_any(value : JsAny) -> BaseKeyframe = "%identity"

///|
pub fn BaseKeyframe::new(
  offset? : Double,
  easing? : String,
  composite? : CompositeOperationOrAuto,
) -> BaseKeyframe {
  base_keyframe_ffi(opt_to_js(offset), opt_to_js(easing), opt_to_js(composite))
}

///|
pub fn BaseKeyframe::empty() -> BaseKeyframe {
  base_keyframe_empty_ffi()
}

///|
pub fn BaseKeyframe::offset(self : BaseKeyframe) -> Double? {
  base_keyframe_get_offset_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn BaseKeyframe::easing(self : BaseKeyframe) -> String? {
  base_keyframe_get_easing_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn BaseKeyframe::composite(
  self : BaseKeyframe,
) -> CompositeOperationOrAuto? {
  base_keyframe_get_composite_ffi(TJsValue::to_js(self)).to_option()
}
