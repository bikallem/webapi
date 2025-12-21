///|
#external
pub type SVGViewElement

///|
pub impl TJsValue for SVGViewElement with to_js(self : SVGViewElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGViewElement] SVGViewElement::into(self : SVGViewElement) -> T = "%identity"

///|
pub impl TSVGViewElement for SVGViewElement

///|
pub impl TSVGElement for SVGViewElement

///|
pub impl TElement for SVGViewElement

///|
pub impl TNode for SVGViewElement

///|
pub impl TEventTarget for SVGViewElement

///|
pub trait TSVGViewElement: TSVGElement {}
