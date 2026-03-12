// Do not edit. This file is generated.
// MoonBit type: ShadowAnimation
// Specifications: SVG.idl

///|
/// [ShadowAnimation](https://developer.mozilla.org/en-US/docs/Web/API/ShadowAnimation)
#external
pub type ShadowAnimation

///|
pub impl TJsValue for ShadowAnimation with to_js(self : ShadowAnimation) -> JsValue = "%identity"

///|
pub impl FromJsAny for ShadowAnimation with from_js_any(value : JsAny) -> ShadowAnimation = "%identity"

///|
pub fn[T : TShadowAnimation] ShadowAnimation::into(self : ShadowAnimation) -> T = "%identity"

///|
pub impl TShadowAnimation for ShadowAnimation

///|
pub impl TAnimation for ShadowAnimation

///|
pub impl TEventTarget for ShadowAnimation

///|
pub(open) trait TShadowAnimationNewNewTarget: TJsValue {}

///|
pub impl TShadowAnimationNewNewTarget for Element

///|
pub impl TShadowAnimationNewNewTarget for CSSPseudoElement

///|
pub fn ShadowAnimation::new(
  source : &TAnimation,
  new_target : &TShadowAnimationNewNewTarget,
) -> ShadowAnimation {
  shadow_animation_new_ffi(TJsValue::to_js(source), new_target.to_js())
}

///|
/// [ShadowAnimation](https://developer.mozilla.org/en-US/docs/Web/API/ShadowAnimation) interface.
pub trait TShadowAnimation: TAnimation {
  source_animation(self : Self) -> Animation = _
}

///|
/// [ShadowAnimation.sourceAnimation](https://developer.mozilla.org/en-US/docs/Web/API/ShadowAnimation/sourceAnimation)
impl TShadowAnimation with source_animation(self : Self) -> Animation {
  shadow_animation_source_animation_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn shadow_animation_new_ffi(
  source : JsValue,
  new_target : JsValue,
) -> ShadowAnimation = "(source, new_target) => new ShadowAnimation(source, new_target)"

///|
#cfg(target="js")
extern "js" fn shadow_animation_source_animation_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.sourceAnimation"

///|
#cfg(target="js")
fn shadow_animation_source_animation_ffi(obj : JsValue) -> Animation {
  shadow_animation_source_animation_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn shadow_animation_new_ffi(
  source : JsValue,
  new_target : JsValue,
) -> ShadowAnimation = "webapi_ShadowAnimation" "new"

///|
#cfg(target="wasm-gc")
fn shadow_animation_source_animation_ffi(obj : JsValue) -> Animation = "webapi_ShadowAnimation" "get_sourceAnimation"
