///|
#external
pub type SVGImageElement

///|
pub impl TJsValue for SVGImageElement with to_js(self : SVGImageElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGImageElement] SVGImageElement::into(self : SVGImageElement) -> T = "%identity"

///|
pub impl TSVGImageElement for SVGImageElement

///|
pub impl TSVGGraphicsElement for SVGImageElement

///|
pub impl TSVGElement for SVGImageElement

///|
pub impl TElement for SVGImageElement

///|
pub impl TNode for SVGImageElement

///|
pub impl TEventTarget for SVGImageElement

///|
pub trait TSVGImageElement: TSVGGraphicsElement {}
