///|
#external
pub type SVGPolygonElement

///|
pub impl TJsValue for SVGPolygonElement with to_js(self : SVGPolygonElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGPolygonElement] SVGPolygonElement::into(
  self : SVGPolygonElement,
) -> T = "%identity"

///|
pub impl TSVGPolygonElement for SVGPolygonElement

///|
pub impl TSVGGeometryElement for SVGPolygonElement

///|
pub impl TSVGGraphicsElement for SVGPolygonElement

///|
pub impl TSVGElement for SVGPolygonElement

///|
pub impl TElement for SVGPolygonElement

///|
pub impl TNode for SVGPolygonElement

///|
pub impl TEventTarget for SVGPolygonElement

///|
pub trait TSVGPolygonElement: TSVGGeometryElement {}
