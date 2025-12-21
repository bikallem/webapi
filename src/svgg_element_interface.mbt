///|
#external
pub type SVGGElement

///|
pub impl TJsValue for SVGGElement with to_js(self : SVGGElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGGElement] SVGGElement::into(self : SVGGElement) -> T = "%identity"

///|
pub impl TSVGGElement for SVGGElement

///|
pub impl TSVGGraphicsElement for SVGGElement

///|
pub impl TSVGElement for SVGGElement

///|
pub impl TElement for SVGGElement

///|
pub impl TNode for SVGGElement

///|
pub impl TEventTarget for SVGGElement

///|
pub trait TSVGGElement: TSVGGraphicsElement {}
