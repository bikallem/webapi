///|
#external
pub type SVGAnimatedLength

///|
pub impl TJsValue for SVGAnimatedLength with to_js(self : SVGAnimatedLength) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedLength] SVGAnimatedLength::into(
  self : SVGAnimatedLength,
) -> T = "%identity"

///|
pub impl TSVGAnimatedLength for SVGAnimatedLength

///|
pub trait TSVGAnimatedLength: TJsValue {}
