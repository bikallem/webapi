///|
#external
pub type SVGTextPathElement

///|
pub impl TJsValue for SVGTextPathElement with to_js(self : SVGTextPathElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGTextPathElement] SVGTextPathElement::into(
  self : SVGTextPathElement,
) -> T = "%identity"

///|
pub impl TSVGTextPathElement for SVGTextPathElement

///|
pub impl TSVGTextContentElement for SVGTextPathElement

///|
pub impl TSVGGraphicsElement for SVGTextPathElement

///|
pub impl TSVGElement for SVGTextPathElement

///|
pub impl TElement for SVGTextPathElement

///|
pub impl TNode for SVGTextPathElement

///|
pub impl TEventTarget for SVGTextPathElement

///|
pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_METHODTYPE_UNKNOWN : UInt = 0

///|
pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_METHODTYPE_ALIGN : UInt = 1

///|
pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_METHODTYPE_STRETCH : UInt = 2

///|
pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_SPACINGTYPE_UNKNOWN : UInt = 0

///|
pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_SPACINGTYPE_AUTO : UInt = 1

///|
pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_SPACINGTYPE_EXACT : UInt = 2

///|
pub trait TSVGTextPathElement: TSVGTextContentElement {}
