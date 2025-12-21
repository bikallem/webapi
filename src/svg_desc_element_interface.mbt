///|
#external
pub type SVGDescElement

///|
pub impl TJsValue for SVGDescElement with to_js(self : SVGDescElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGDescElement] SVGDescElement::into(self : SVGDescElement) -> T = "%identity"

///|
pub impl TSVGDescElement for SVGDescElement

///|
pub impl TSVGElement for SVGDescElement

///|
pub impl TElement for SVGDescElement

///|
pub impl TNode for SVGDescElement

///|
pub impl TEventTarget for SVGDescElement

///|
pub trait TSVGDescElement: TSVGElement {}
