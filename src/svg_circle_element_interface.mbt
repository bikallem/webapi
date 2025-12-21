///|
#external
pub type SVGCircleElement

///|
pub impl TJsValue for SVGCircleElement with to_js(self : SVGCircleElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGCircleElement] SVGCircleElement::into(
  self : SVGCircleElement,
) -> T = "%identity"

///|
pub impl TSVGCircleElement for SVGCircleElement

///|
pub impl TSVGGeometryElement for SVGCircleElement

///|
pub impl TSVGGraphicsElement for SVGCircleElement

///|
pub impl TSVGElement for SVGCircleElement

///|
pub impl TElement for SVGCircleElement

///|
pub impl TNode for SVGCircleElement

///|
pub impl TEventTarget for SVGCircleElement

///|
pub trait TSVGCircleElement: TSVGGeometryElement {}
