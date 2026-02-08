// Do not edit. This file is generated.
// MoonBit type: SVGTextPathElement
// Specifications: SVG.idl

/// [SVGTextPathElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement)
#external
pub type SVGTextPathElement

pub impl TJsValue for SVGTextPathElement with to_js(self: SVGTextPathElement) -> JsValue = "%identity"

pub fn[T: TSVGTextPathElement] SVGTextPathElement::into(self : SVGTextPathElement) -> T = "%identity"

pub impl TSVGTextPathElement for SVGTextPathElement

pub impl TSVGTextContentElement for SVGTextPathElement

pub impl TSVGGraphicsElement for SVGTextPathElement

pub impl TSVGElement for SVGTextPathElement

pub impl TElement for SVGTextPathElement

pub impl TNode for SVGTextPathElement

pub impl TEventTarget for SVGTextPathElement

pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_METHODTYPE_UNKNOWN: UInt = 0

pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_METHODTYPE_ALIGN: UInt = 1

pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_METHODTYPE_STRETCH: UInt = 2

pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_SPACINGTYPE_UNKNOWN: UInt = 0

pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_SPACINGTYPE_AUTO: UInt = 1

pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_SPACINGTYPE_EXACT: UInt = 2

/// [SVGTextPathElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement) interface.
pub trait TSVGTextPathElement: TSVGTextContentElement {
  start_offset(self : Self) -> SVGAnimatedLength = _
  method_(self : Self) -> SVGAnimatedEnumeration = _
  spacing(self : Self) -> SVGAnimatedEnumeration = _
  href(self : Self) -> SVGAnimatedString = _
}

/// [SVGTextPathElement.startOffset](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement/startOffset)
impl TSVGTextPathElement with start_offset(self : Self) -> SVGAnimatedLength {
  svg_text_path_element_start_offset_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGTextPathElement.method](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement/method)
impl TSVGTextPathElement with method_(self : Self) -> SVGAnimatedEnumeration {
  svg_text_path_element_method_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGTextPathElement.spacing](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement/spacing)
impl TSVGTextPathElement with spacing(self : Self) -> SVGAnimatedEnumeration {
  svg_text_path_element_spacing_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [SVGTextPathElement.href](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement/href)
impl TSVGTextPathElement with href(self : Self) -> SVGAnimatedString {
  svg_text_path_element_href_ffi(TJsValue::to_js(self)).unsafe_cast()
}