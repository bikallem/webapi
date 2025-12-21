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
pub trait TSVGTextPathElement: TSVGTextContentElement {}
