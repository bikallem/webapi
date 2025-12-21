///|
#external
pub type SVGLineElement

///|
pub impl TJsValue for SVGLineElement with to_js(self : SVGLineElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGLineElement] SVGLineElement::into(self : SVGLineElement) -> T = "%identity"

///|
pub impl TSVGLineElement for SVGLineElement

///|
pub impl TSVGGeometryElement for SVGLineElement

///|
pub impl TSVGGraphicsElement for SVGLineElement

///|
pub impl TSVGElement for SVGLineElement

///|
pub impl TElement for SVGLineElement

///|
pub impl TNode for SVGLineElement

///|
pub impl TEventTarget for SVGLineElement

///|
pub trait TSVGLineElement: TSVGGeometryElement {}
