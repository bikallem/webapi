// Do not edit. This file is generated.
// MoonBit type: SVGEllipseElement
// Specifications: SVG.idl

/// [SVGEllipseElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement)
#external
pub type SVGEllipseElement

pub impl TJsValue for SVGEllipseElement with to_js(self: SVGEllipseElement) -> JsValue = "%identity"

pub fn[T: TSVGEllipseElement] SVGEllipseElement::into(self : SVGEllipseElement) -> T = "%identity"

pub impl TSVGEllipseElement for SVGEllipseElement

pub impl TSVGGeometryElement for SVGEllipseElement

pub impl TSVGGraphicsElement for SVGEllipseElement

pub impl TSVGElement for SVGEllipseElement

pub impl TElement for SVGEllipseElement

pub impl TNode for SVGEllipseElement

pub impl TEventTarget for SVGEllipseElement

/// [SVGEllipseElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement) interface.
pub trait TSVGEllipseElement: TSVGGeometryElement {
  cx(self : Self) -> SVGAnimatedLength = _
  cy(self : Self) -> SVGAnimatedLength = _
  rx(self : Self) -> SVGAnimatedLength = _
  ry(self : Self) -> SVGAnimatedLength = _
}

/// [SVGEllipseElement.cx](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement/cx)
impl TSVGEllipseElement with cx(self : Self) -> SVGAnimatedLength {
  svg_ellipse_element_cx_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGEllipseElement.cy](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement/cy)
impl TSVGEllipseElement with cy(self : Self) -> SVGAnimatedLength {
  svg_ellipse_element_cy_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGEllipseElement.rx](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement/rx)
impl TSVGEllipseElement with rx(self : Self) -> SVGAnimatedLength {
  svg_ellipse_element_rx_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGEllipseElement.ry](https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement/ry)
impl TSVGEllipseElement with ry(self : Self) -> SVGAnimatedLength {
  svg_ellipse_element_ry_ffi(TJsValue::to_js(self)).unsafe_cast()
}