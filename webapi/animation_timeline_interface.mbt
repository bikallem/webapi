// Do not edit. This file is generated.
// MoonBit type: AnimationTimeline
// Specifications: web-animations.idl

/// [AnimationTimeline](https://developer.mozilla.org/en-US/docs/Web/API/AnimationTimeline)
#external
pub type AnimationTimeline

pub impl TJsValue for AnimationTimeline with to_js(self: AnimationTimeline) -> JsValue = "%identity"

pub impl FromJsAny for AnimationTimeline with from_js_any(value : JsAny) -> AnimationTimeline = "%identity"

pub fn[T: TAnimationTimeline] AnimationTimeline::into(self : AnimationTimeline) -> T = "%identity"

pub impl TAnimationTimeline for AnimationTimeline

/// [AnimationTimeline](https://developer.mozilla.org/en-US/docs/Web/API/AnimationTimeline) interface.
pub trait TAnimationTimeline: TJsValue {

}

