///|
#external
pub type SVGAnimatedBoolean

///|
pub impl TJsValue for SVGAnimatedBoolean with to_js(self : SVGAnimatedBoolean) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedBoolean] SVGAnimatedBoolean::into(
  self : SVGAnimatedBoolean,
) -> T = "%identity"

///|
pub impl TSVGAnimatedBoolean for SVGAnimatedBoolean

///|
pub trait TSVGAnimatedBoolean: TJsValue {}
