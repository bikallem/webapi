// Do not edit. This file is generated.
// MoonBit type: SVGLinearGradientElement
// Specifications: SVG.idl

/// [SVGLinearGradientElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement)
#external
pub type SVGLinearGradientElement

pub impl TJsValue for SVGLinearGradientElement with to_js(self: SVGLinearGradientElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGLinearGradientElement with from_js_any(value : JsAny) -> SVGLinearGradientElement = "%identity"

pub fn[T: TSVGLinearGradientElement] SVGLinearGradientElement::into(self : SVGLinearGradientElement) -> T = "%identity"

pub impl TSVGLinearGradientElement for SVGLinearGradientElement

pub impl TSVGGradientElement for SVGLinearGradientElement

pub impl TSVGElement for SVGLinearGradientElement

pub impl TElement for SVGLinearGradientElement

pub impl TNode for SVGLinearGradientElement

pub impl TEventTarget for SVGLinearGradientElement

/// [SVGLinearGradientElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement) interface.
pub trait TSVGLinearGradientElement: TSVGGradientElement {
  x1(self : Self) -> SVGAnimatedLength = _
  y1(self : Self) -> SVGAnimatedLength = _
  x2(self : Self) -> SVGAnimatedLength = _
  y2(self : Self) -> SVGAnimatedLength = _
}

/// [SVGLinearGradientElement.x1](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement/x1)
impl TSVGLinearGradientElement with x1(self : Self) -> SVGAnimatedLength {
  svg_linear_gradient_element_x1_ffi(TJsValue::to_js(self))
}

/// [SVGLinearGradientElement.y1](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement/y1)
impl TSVGLinearGradientElement with y1(self : Self) -> SVGAnimatedLength {
  svg_linear_gradient_element_y1_ffi(TJsValue::to_js(self))
}

/// [SVGLinearGradientElement.x2](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement/x2)
impl TSVGLinearGradientElement with x2(self : Self) -> SVGAnimatedLength {
  svg_linear_gradient_element_x2_ffi(TJsValue::to_js(self))
}

/// [SVGLinearGradientElement.y2](https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement/y2)
impl TSVGLinearGradientElement with y2(self : Self) -> SVGAnimatedLength {
  svg_linear_gradient_element_y2_ffi(TJsValue::to_js(self))
}