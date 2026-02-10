// Do not edit. This file is generated.
// MoonBit type: SVGStopElement
// Specifications: SVG.idl

/// [SVGStopElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGStopElement)
#external
pub type SVGStopElement

pub impl TJsValue for SVGStopElement with to_js(self: SVGStopElement) -> JsValue = "%identity"

pub fn[T: TSVGStopElement] SVGStopElement::into(self : SVGStopElement) -> T = "%identity"

pub impl TSVGStopElement for SVGStopElement

pub impl TSVGElement for SVGStopElement

pub impl TElement for SVGStopElement

pub impl TNode for SVGStopElement

pub impl TEventTarget for SVGStopElement

/// [SVGStopElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGStopElement) interface.
pub trait TSVGStopElement: TSVGElement {
  offset(self : Self) -> SVGAnimatedNumber = _
}

/// [SVGStopElement.offset](https://developer.mozilla.org/en-US/docs/Web/API/SVGStopElement/offset)
impl TSVGStopElement with offset(self : Self) -> SVGAnimatedNumber {
  svg_stop_element_offset_ffi(TJsValue::to_js(self))
}