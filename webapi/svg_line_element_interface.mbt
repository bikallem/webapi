// Do not edit. This file is generated.
// MoonBit type: SVGLineElement
// Specifications: SVG.idl

///|
/// [SVGLineElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement)
#external
pub type SVGLineElement

///|
pub impl TJsValue for SVGLineElement with to_js(self : SVGLineElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGLineElement with from_js_any(value : JsAny) -> SVGLineElement = "%identity"

///|
pub fn[T : TSVGLineElement] SVGLineElement::into(self : SVGLineElement) -> T = "%identity"

///|
pub impl TSVGLineElement for SVGLineElement

///|
pub impl TSVGGeometryElement for SVGLineElement

///|
pub impl TSVGGraphicsElement for SVGLineElement

///|
pub impl TSVGElement for SVGLineElement

///|
pub impl TElement for SVGLineElement

///|
pub impl TNode for SVGLineElement

///|
pub impl TEventTarget for SVGLineElement

///|
/// [SVGLineElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement) interface.
pub trait TSVGLineElement: TSVGGeometryElement {
  x1(self : Self) -> SVGAnimatedLength = _
  y1(self : Self) -> SVGAnimatedLength = _
  x2(self : Self) -> SVGAnimatedLength = _
  y2(self : Self) -> SVGAnimatedLength = _
}

///|
/// [SVGLineElement.x1](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement/x1)
impl TSVGLineElement with x1(self : Self) -> SVGAnimatedLength {
  svg_line_element_x1_ffi(TJsValue::to_js(self))
}

///|
/// [SVGLineElement.y1](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement/y1)
impl TSVGLineElement with y1(self : Self) -> SVGAnimatedLength {
  svg_line_element_y1_ffi(TJsValue::to_js(self))
}

///|
/// [SVGLineElement.x2](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement/x2)
impl TSVGLineElement with x2(self : Self) -> SVGAnimatedLength {
  svg_line_element_x2_ffi(TJsValue::to_js(self))
}

///|
/// [SVGLineElement.y2](https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement/y2)
impl TSVGLineElement with y2(self : Self) -> SVGAnimatedLength {
  svg_line_element_y2_ffi(TJsValue::to_js(self))
}
