// Do not edit. This file is generated.
// MoonBit type: SVGCircleElement
// Specifications: SVG.idl

///|
/// [SVGCircleElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement)
#external
pub type SVGCircleElement

///|
pub impl TJsValue for SVGCircleElement with to_js(self : SVGCircleElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGCircleElement with from_js_any(value : JsAny) -> SVGCircleElement = "%identity"

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
/// [SVGCircleElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement) interface.
pub trait TSVGCircleElement: TSVGGeometryElement {
  cx(self : Self) -> SVGAnimatedLength = _
  cy(self : Self) -> SVGAnimatedLength = _
  r(self : Self) -> SVGAnimatedLength = _
}

///|
/// [SVGCircleElement.cx](https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement/cx)
impl TSVGCircleElement with cx(self : Self) -> SVGAnimatedLength {
  svg_circle_element_cx_ffi(TJsValue::to_js(self))
}

///|
/// [SVGCircleElement.cy](https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement/cy)
impl TSVGCircleElement with cy(self : Self) -> SVGAnimatedLength {
  svg_circle_element_cy_ffi(TJsValue::to_js(self))
}

///|
/// [SVGCircleElement.r](https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement/r)
impl TSVGCircleElement with r(self : Self) -> SVGAnimatedLength {
  svg_circle_element_r_ffi(TJsValue::to_js(self))
}
