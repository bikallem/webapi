// Do not edit. This file is generated.
// MoonBit type: SVGEllipseElement
// Specifications: SVG.idl

///|
#external
pub type SVGEllipseElement

///|
pub impl TJsValue for SVGEllipseElement with to_js(self : SVGEllipseElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGEllipseElement] SVGEllipseElement::into(
  self : SVGEllipseElement,
) -> T = "%identity"

///|
pub impl TSVGEllipseElement for SVGEllipseElement

///|
pub impl TSVGGeometryElement for SVGEllipseElement

///|
pub impl TSVGGraphicsElement for SVGEllipseElement

///|
pub impl TSVGElement for SVGEllipseElement

///|
pub impl TElement for SVGEllipseElement

///|
pub impl TNode for SVGEllipseElement

///|
pub impl TEventTarget for SVGEllipseElement

///|
pub trait TSVGEllipseElement: TSVGGeometryElement {
  cx(self : Self) -> SVGAnimatedLength = _
  cy(self : Self) -> SVGAnimatedLength = _
  rx(self : Self) -> SVGAnimatedLength = _
  ry(self : Self) -> SVGAnimatedLength = _
}

///|
extern "js" fn svg_ellipse_element_cx_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.cx"

///|
impl TSVGEllipseElement with cx(self : Self) -> SVGAnimatedLength {
  svg_ellipse_element_cx_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_ellipse_element_cy_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.cy"

///|
impl TSVGEllipseElement with cy(self : Self) -> SVGAnimatedLength {
  svg_ellipse_element_cy_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_ellipse_element_rx_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.rx"

///|
impl TSVGEllipseElement with rx(self : Self) -> SVGAnimatedLength {
  svg_ellipse_element_rx_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_ellipse_element_ry_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.ry"

///|
impl TSVGEllipseElement with ry(self : Self) -> SVGAnimatedLength {
  svg_ellipse_element_ry_ffi(TJsValue::to_js(self))
}
