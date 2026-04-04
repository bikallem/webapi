// Do not edit. This file is generated.
// MoonBit type: AnimationTimeline
// Specifications: web-animations.idl

///|
/// [AnimationTimeline](https://developer.mozilla.org/en-US/docs/Web/API/AnimationTimeline)
#external
pub type AnimationTimeline

///|
pub impl TJsValue for AnimationTimeline with to_js(self : AnimationTimeline) -> JsValue = "%identity"

///|
pub impl FromJsAny for AnimationTimeline with from_js_any(value : JsAny) -> AnimationTimeline = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TAnimationTimeline] AnimationTimeline::into(
  self : AnimationTimeline,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TAnimationTimeline] AnimationTimeline::unsafe_into(
  self : AnimationTimeline,
) -> T = "%identity"

///|
pub impl HasConstructor for AnimationTimeline with constructor_name() {
  "AnimationTimeline"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TAnimationTimeline + HasConstructor] AnimationTimeline::try_into(
  self : AnimationTimeline,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TAnimationTimeline for AnimationTimeline

///|
/// [AnimationTimeline](https://developer.mozilla.org/en-US/docs/Web/API/AnimationTimeline) interface.
pub trait TAnimationTimeline: TJsValue {}
