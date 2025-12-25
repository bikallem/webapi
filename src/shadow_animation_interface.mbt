// Do not edit. This file is generated.
// MoonBit type: ShadowAnimation
// Specifications: SVG.idl

///|
#external
pub type ShadowAnimation

///|
pub impl TJsValue for ShadowAnimation with to_js(self : ShadowAnimation) -> JsValue = "%identity"

///|
pub fn[T : TShadowAnimation] ShadowAnimation::into(self : ShadowAnimation) -> T = "%identity"

///|
pub impl TShadowAnimation for ShadowAnimation

///|
pub(open) trait TShadowAnimationNewNewTarget {
  to_js(self : Self) -> JsValue
}

///|
pub impl TShadowAnimationNewNewTarget for Element with to_js(self : Element) -> JsValue = "%identity"

///|
pub impl TShadowAnimationNewNewTarget for CSSPseudoElement with to_js(
  self : CSSPseudoElement,
) -> JsValue = "%identity"

///|
extern "js" fn shadow_animation_new_ffi(
  source : JsValue,
  new_target : JsValue,
) -> ShadowAnimation = "(source, new_target) => new ShadowAnimation(source, new_target)"

///|
pub fn ShadowAnimation::new(
  source : Animation,
  new_target : &TShadowAnimationNewNewTarget,
) -> ShadowAnimation {
  shadow_animation_new_ffi(TJsValue::to_js(source), new_target.to_js())
}

///|
pub trait TShadowAnimation: TAnimation {
  source_animation(self : Self) -> Animation = _
}

///|
extern "js" fn shadow_animation_source_animation_ffi(
  obj : JsValue,
) -> Animation = "(obj) => obj.sourceAnimation"

///|
impl TShadowAnimation with source_animation(self : Self) -> Animation {
  shadow_animation_source_animation_ffi(TJsValue::to_js(self))
}
