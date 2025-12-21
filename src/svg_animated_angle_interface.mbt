///|
#external
pub type SVGAnimatedAngle

///|
pub impl TJsValue for SVGAnimatedAngle with to_js(self : SVGAnimatedAngle) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedAngle] SVGAnimatedAngle::into(
  self : SVGAnimatedAngle,
) -> T = "%identity"

///|
pub impl TSVGAnimatedAngle for SVGAnimatedAngle

///|
pub trait TSVGAnimatedAngle: TJsValue {}
