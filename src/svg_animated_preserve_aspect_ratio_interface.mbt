///|
#external
pub type SVGAnimatedPreserveAspectRatio

///|
pub impl TJsValue for SVGAnimatedPreserveAspectRatio with to_js(
  self : SVGAnimatedPreserveAspectRatio,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedPreserveAspectRatio] SVGAnimatedPreserveAspectRatio::into(
  self : SVGAnimatedPreserveAspectRatio,
) -> T = "%identity"

///|
pub impl TSVGAnimatedPreserveAspectRatio for SVGAnimatedPreserveAspectRatio

///|
pub trait TSVGAnimatedPreserveAspectRatio: TJsValue {}
