// Do not edit. This file is generated.
// MoonBit type: SVGPolylineElement
// Specifications: SVG.idl

///|
/// [SVGPolylineElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement)
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
/// [SVGPolylineElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement) interface.
pub trait TSVGPolylineElement: TSVGGeometryElement {
  points(self : Self) -> SVGPointList = _
  animated_points(self : Self) -> SVGPointList = _
}

///|
/// [SVGPolylineElement.points](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement/points)
impl TSVGPolylineElement with points(self : Self) -> SVGPointList {
  svg_polyline_element_points_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPolylineElement.animatedPoints](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement/animatedPoints)
impl TSVGPolylineElement with animated_points(self : Self) -> SVGPointList {
  svg_polyline_element_animated_points_ffi(TJsValue::to_js(self))
}
