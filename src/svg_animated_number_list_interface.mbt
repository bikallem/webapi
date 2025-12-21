///|
#external
pub type SVGAnimatedNumberList

///|
pub impl TJsValue for SVGAnimatedNumberList with to_js(
  self : SVGAnimatedNumberList,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedNumberList] SVGAnimatedNumberList::into(
  self : SVGAnimatedNumberList,
) -> T = "%identity"

///|
pub impl TSVGAnimatedNumberList for SVGAnimatedNumberList

///|
pub trait TSVGAnimatedNumberList: TJsValue {}
