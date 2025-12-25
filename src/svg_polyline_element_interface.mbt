// Do not edit. This file is generated.
// MoonBit type: SVGPolylineElement
// Specifications: SVG.idl

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
pub trait TSVGPolylineElement: TSVGGeometryElement {
  points(self : Self) -> SVGPointList = _
  animated_points(self : Self) -> SVGPointList = _
}

///|
extern "js" fn svg_polyline_element_points_ffi(obj : JsValue) -> SVGPointList = "(obj) => obj.points"

///|
impl TSVGPolylineElement with points(self : Self) -> SVGPointList {
  svg_polyline_element_points_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_polyline_element_animated_points_ffi(
  obj : JsValue,
) -> SVGPointList = "(obj) => obj.animatedPoints"

///|
impl TSVGPolylineElement with animated_points(self : Self) -> SVGPointList {
  svg_polyline_element_animated_points_ffi(TJsValue::to_js(self))
}
