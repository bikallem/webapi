///|
#external
pub type SVGAnimatedEnumeration

///|
pub impl TJsValue for SVGAnimatedEnumeration with to_js(
  self : SVGAnimatedEnumeration,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedEnumeration] SVGAnimatedEnumeration::into(
  self : SVGAnimatedEnumeration,
) -> T = "%identity"

///|
pub impl TSVGAnimatedEnumeration for SVGAnimatedEnumeration

///|
pub trait TSVGAnimatedEnumeration: TJsValue {}
