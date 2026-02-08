// Do not edit. This file is generated.
// MoonBit type: SVGPolygonElement
// Specifications: SVG.idl

///|
/// [SVGPolygonElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement)
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
/// [SVGPolygonElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement) interface.
pub trait TSVGPolygonElement: TSVGGeometryElement {
  points(self : Self) -> SVGPointList = _
  animated_points(self : Self) -> SVGPointList = _
}

///|
/// [SVGPolygonElement.points](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement/points)
impl TSVGPolygonElement with points(self : Self) -> SVGPointList {
  svg_polygon_element_points_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [SVGPolygonElement.animatedPoints](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement/animatedPoints)
impl TSVGPolygonElement with animated_points(self : Self) -> SVGPointList {
  svg_polygon_element_animated_points_ffi(TJsValue::to_js(self)).unsafe_cast()
}
