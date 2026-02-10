// Do not edit. This file is generated.
// MoonBit type: SVGTextPositioningElement
// Specifications: SVG.idl

/// [SVGTextPositioningElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement)
#external
pub type SVGTextPositioningElement

pub impl TJsValue for SVGTextPositioningElement with to_js(self: SVGTextPositioningElement) -> JsValue = "%identity"

pub fn[T: TSVGTextPositioningElement] SVGTextPositioningElement::into(self : SVGTextPositioningElement) -> T = "%identity"

pub impl TSVGTextPositioningElement for SVGTextPositioningElement

pub impl TSVGTextContentElement for SVGTextPositioningElement

pub impl TSVGGraphicsElement for SVGTextPositioningElement

pub impl TSVGElement for SVGTextPositioningElement

pub impl TElement for SVGTextPositioningElement

pub impl TNode for SVGTextPositioningElement

pub impl TEventTarget for SVGTextPositioningElement

/// [SVGTextPositioningElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement) interface.
pub trait TSVGTextPositioningElement: TSVGTextContentElement {
  x(self : Self) -> SVGAnimatedLengthList = _
  y(self : Self) -> SVGAnimatedLengthList = _
  dx(self : Self) -> SVGAnimatedLengthList = _
  dy(self : Self) -> SVGAnimatedLengthList = _
  rotate(self : Self) -> SVGAnimatedNumberList = _
}

/// [SVGTextPositioningElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement/x)
impl TSVGTextPositioningElement with x(self : Self) -> SVGAnimatedLengthList {
  svg_text_positioning_element_x_ffi(TJsValue::to_js(self))
}

/// [SVGTextPositioningElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement/y)
impl TSVGTextPositioningElement with y(self : Self) -> SVGAnimatedLengthList {
  svg_text_positioning_element_y_ffi(TJsValue::to_js(self))
}

/// [SVGTextPositioningElement.dx](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement/dx)
impl TSVGTextPositioningElement with dx(self : Self) -> SVGAnimatedLengthList {
  svg_text_positioning_element_dx_ffi(TJsValue::to_js(self))
}

/// [SVGTextPositioningElement.dy](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement/dy)
impl TSVGTextPositioningElement with dy(self : Self) -> SVGAnimatedLengthList {
  svg_text_positioning_element_dy_ffi(TJsValue::to_js(self))
}

/// [SVGTextPositioningElement.rotate](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement/rotate)
impl TSVGTextPositioningElement with rotate(self : Self) -> SVGAnimatedNumberList {
  svg_text_positioning_element_rotate_ffi(TJsValue::to_js(self))
}