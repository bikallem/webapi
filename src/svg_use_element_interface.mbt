///|
#external
pub type SVGUseElement

///|
pub impl TJsValue for SVGUseElement with to_js(self : SVGUseElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGUseElement] SVGUseElement::into(self : SVGUseElement) -> T = "%identity"

///|
pub impl TSVGUseElement for SVGUseElement

///|
pub impl TSVGGraphicsElement for SVGUseElement

///|
pub impl TSVGElement for SVGUseElement

///|
pub impl TElement for SVGUseElement

///|
pub impl TNode for SVGUseElement

///|
pub impl TEventTarget for SVGUseElement

///|
pub trait TSVGUseElement: TSVGGraphicsElement {}
