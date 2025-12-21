///|
#external
pub type SVGAnimatedLengthList

///|
pub impl TJsValue for SVGAnimatedLengthList with to_js(
  self : SVGAnimatedLengthList,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedLengthList] SVGAnimatedLengthList::into(
  self : SVGAnimatedLengthList,
) -> T = "%identity"

///|
pub impl TSVGAnimatedLengthList for SVGAnimatedLengthList

///|
pub trait TSVGAnimatedLengthList: TJsValue {}
