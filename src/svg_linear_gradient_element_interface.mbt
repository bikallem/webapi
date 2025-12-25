// Do not edit. This file is generated.
// MoonBit type: SVGLinearGradientElement
// Specifications: SVG.idl

///|
#external
pub type SVGLinearGradientElement

///|
pub impl TJsValue for SVGLinearGradientElement with to_js(
  self : SVGLinearGradientElement,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGLinearGradientElement] SVGLinearGradientElement::into(
  self : SVGLinearGradientElement,
) -> T = "%identity"

///|
pub impl TSVGLinearGradientElement for SVGLinearGradientElement

///|
pub impl TSVGGradientElement for SVGLinearGradientElement

///|
pub impl TSVGElement for SVGLinearGradientElement

///|
pub impl TElement for SVGLinearGradientElement

///|
pub impl TNode for SVGLinearGradientElement

///|
pub impl TEventTarget for SVGLinearGradientElement

///|
pub trait TSVGLinearGradientElement: TSVGGradientElement {
  x1(self : Self) -> SVGAnimatedLength = _
  y1(self : Self) -> SVGAnimatedLength = _
  x2(self : Self) -> SVGAnimatedLength = _
  y2(self : Self) -> SVGAnimatedLength = _
}

///|
extern "js" fn svg_linear_gradient_element_x1_ffi(
  obj : JsValue,
) -> SVGAnimatedLength = "(obj) => obj.x1"

///|
impl TSVGLinearGradientElement with x1(self : Self) -> SVGAnimatedLength {
  svg_linear_gradient_element_x1_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_linear_gradient_element_y1_ffi(
  obj : JsValue,
) -> SVGAnimatedLength = "(obj) => obj.y1"

///|
impl TSVGLinearGradientElement with y1(self : Self) -> SVGAnimatedLength {
  svg_linear_gradient_element_y1_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_linear_gradient_element_x2_ffi(
  obj : JsValue,
) -> SVGAnimatedLength = "(obj) => obj.x2"

///|
impl TSVGLinearGradientElement with x2(self : Self) -> SVGAnimatedLength {
  svg_linear_gradient_element_x2_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_linear_gradient_element_y2_ffi(
  obj : JsValue,
) -> SVGAnimatedLength = "(obj) => obj.y2"

///|
impl TSVGLinearGradientElement with y2(self : Self) -> SVGAnimatedLength {
  svg_linear_gradient_element_y2_ffi(TJsValue::to_js(self))
}
