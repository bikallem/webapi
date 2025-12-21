///|
#external
pub type SVGPolylineElement

///|
pub impl TJsValue for SVGPolylineElement with to_js(self : SVGPolylineElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGPolylineElement] SVGPolylineElement::into(
  self : SVGPolylineElement,
) -> T = "%identity"

///|
pub impl TSVGPolylineElement for SVGPolylineElement

///|
pub impl TSVGGeometryElement for SVGPolylineElement

///|
pub impl TSVGGraphicsElement for SVGPolylineElement

///|
pub impl TSVGElement for SVGPolylineElement

///|
pub impl TElement for SVGPolylineElement

///|
pub impl TNode for SVGPolylineElement

///|
pub impl TEventTarget for SVGPolylineElement

///|
pub trait TSVGPolylineElement: TSVGGeometryElement {}
