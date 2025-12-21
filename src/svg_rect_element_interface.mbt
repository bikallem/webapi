///|
#external
pub type SVGRectElement

///|
pub impl TJsValue for SVGRectElement with to_js(self : SVGRectElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGRectElement] SVGRectElement::into(self : SVGRectElement) -> T = "%identity"

///|
pub impl TSVGRectElement for SVGRectElement

///|
pub impl TSVGGeometryElement for SVGRectElement

///|
pub impl TSVGGraphicsElement for SVGRectElement

///|
pub impl TSVGElement for SVGRectElement

///|
pub impl TElement for SVGRectElement

///|
pub impl TNode for SVGRectElement

///|
pub impl TEventTarget for SVGRectElement

///|
pub trait TSVGRectElement: TSVGGeometryElement {}
