// Do not edit. This file is generated.
// MoonBit type: SVGSymbolElement
// Specifications: SVG.idl

/// [SVGSymbolElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGSymbolElement)
#external
pub type SVGSymbolElement

pub impl TJsValue for SVGSymbolElement with to_js(self: SVGSymbolElement) -> JsValue = "%identity"

pub fn[T: TSVGSymbolElement] SVGSymbolElement::into(self : SVGSymbolElement) -> T = "%identity"

pub impl TSVGSymbolElement for SVGSymbolElement

pub impl TSVGGraphicsElement for SVGSymbolElement

pub impl TSVGElement for SVGSymbolElement

pub impl TElement for SVGSymbolElement

pub impl TNode for SVGSymbolElement

pub impl TEventTarget for SVGSymbolElement

/// [SVGSymbolElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGSymbolElement) interface.
pub trait TSVGSymbolElement: TSVGGraphicsElement {
  view_box(self : Self) -> SVGAnimatedRect = _
  preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio = _
}

/// [SVGSymbolElement.viewBox](https://developer.mozilla.org/en-US/docs/Web/API/SVGSymbolElement/viewBox)
impl TSVGSymbolElement with view_box(self : Self) -> SVGAnimatedRect {
  svg_symbol_element_view_box_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGSymbolElement.preserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGSymbolElement/preserveAspectRatio)
impl TSVGSymbolElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svg_symbol_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self)).unsafe_cast()
}