// Do not edit. This file is generated.
// MoonBit type: SVGGradientElement
// Specifications: SVG.idl

///|
/// [SVGGradientElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement)
#external
pub type SVGGradientElement

///|
pub impl TJsValue for SVGGradientElement with to_js(self : SVGGradientElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGGradientElement] SVGGradientElement::into(
  self : SVGGradientElement,
) -> T = "%identity"

///|
pub impl TSVGGradientElement for SVGGradientElement

///|
pub impl TSVGElement for SVGGradientElement

///|
pub impl TElement for SVGGradientElement

///|
pub impl TNode for SVGGradientElement

///|
pub impl TEventTarget for SVGGradientElement

///|
pub const SVG_GRADIENT_ELEMENT_SVG_SPREADMETHOD_UNKNOWN : UInt = 0

///|
pub const SVG_GRADIENT_ELEMENT_SVG_SPREADMETHOD_PAD : UInt = 1

///|
pub const SVG_GRADIENT_ELEMENT_SVG_SPREADMETHOD_REFLECT : UInt = 2

///|
pub const SVG_GRADIENT_ELEMENT_SVG_SPREADMETHOD_REPEAT : UInt = 3

///|
/// [SVGGradientElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement) interface.
pub trait TSVGGradientElement: TSVGElement {
  gradient_units(self : Self) -> SVGAnimatedEnumeration = _
  gradient_transform(self : Self) -> SVGAnimatedTransformList = _
  spread_method(self : Self) -> SVGAnimatedEnumeration = _
  href(self : Self) -> SVGAnimatedString = _
}

///|
extern "js" fn svg_gradient_element_gradient_units_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration = "(obj) => obj.gradientUnits"

///|
/// [SVGGradientElement.gradientUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement/gradientUnits)
impl TSVGGradientElement with gradient_units(self : Self) -> SVGAnimatedEnumeration {
  svg_gradient_element_gradient_units_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_gradient_element_gradient_transform_ffi(
  obj : JsValue,
) -> SVGAnimatedTransformList = "(obj) => obj.gradientTransform"

///|
/// [SVGGradientElement.gradientTransform](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement/gradientTransform)
impl TSVGGradientElement with gradient_transform(self : Self) -> SVGAnimatedTransformList {
  svg_gradient_element_gradient_transform_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_gradient_element_spread_method_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration = "(obj) => obj.spreadMethod"

///|
/// [SVGGradientElement.spreadMethod](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement/spreadMethod)
impl TSVGGradientElement with spread_method(self : Self) -> SVGAnimatedEnumeration {
  svg_gradient_element_spread_method_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_gradient_element_href_ffi(
  obj : JsValue,
) -> SVGAnimatedString = "(obj) => obj.href"

///|
/// [SVGGradientElement.href](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement/href)
impl TSVGGradientElement with href(self : Self) -> SVGAnimatedString {
  svg_gradient_element_href_ffi(TJsValue::to_js(self))
}
