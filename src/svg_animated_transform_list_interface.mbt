///|
#external
pub type SVGAnimatedTransformList

///|
pub impl TJsValue for SVGAnimatedTransformList with to_js(
  self : SVGAnimatedTransformList,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedTransformList] SVGAnimatedTransformList::into(
  self : SVGAnimatedTransformList,
) -> T = "%identity"

///|
pub impl TSVGAnimatedTransformList for SVGAnimatedTransformList

///|
pub trait TSVGAnimatedTransformList: TJsValue {}
