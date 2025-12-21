///|
#external
pub type SVGAElement

///|
pub impl TJsValue for SVGAElement with to_js(self : SVGAElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGAElement] SVGAElement::into(self : SVGAElement) -> T = "%identity"

///|
pub impl TSVGAElement for SVGAElement

///|
pub impl TSVGGraphicsElement for SVGAElement

///|
pub impl TSVGElement for SVGAElement

///|
pub impl TElement for SVGAElement

///|
pub impl TNode for SVGAElement

///|
pub impl TEventTarget for SVGAElement

///|
pub trait TSVGAElement: TSVGGraphicsElement {}
