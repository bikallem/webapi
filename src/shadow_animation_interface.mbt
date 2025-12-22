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
pub(open) trait TShadowAnimationNewNewTargetArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TShadowAnimationNewNewTargetArg for Element with to_js(self : Element) -> JsValue = "%identity"

///|
pub impl TShadowAnimationNewNewTargetArg for CSSPseudoElement with to_js(
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
  new_target : &TShadowAnimationNewNewTargetArg,
) -> ShadowAnimation {
  shadow_animation_new_ffi(TJsValue::to_js(source), new_target.to_js())
}

///|
pub trait TShadowAnimation: TAnimation {}
