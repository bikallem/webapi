///|
#external
pub type SVGAnimatedNumber

///|
pub impl TJsValue for SVGAnimatedNumber with to_js(self : SVGAnimatedNumber) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedNumber] SVGAnimatedNumber::into(
  self : SVGAnimatedNumber,
) -> T = "%identity"

///|
pub impl TSVGAnimatedNumber for SVGAnimatedNumber

///|
pub trait TSVGAnimatedNumber: TJsValue {}
