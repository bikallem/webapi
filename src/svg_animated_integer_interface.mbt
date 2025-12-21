///|
#external
pub type SVGAnimatedInteger

///|
pub impl TJsValue for SVGAnimatedInteger with to_js(self : SVGAnimatedInteger) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedInteger] SVGAnimatedInteger::into(
  self : SVGAnimatedInteger,
) -> T = "%identity"

///|
pub impl TSVGAnimatedInteger for SVGAnimatedInteger

///|
pub trait TSVGAnimatedInteger: TJsValue {}
