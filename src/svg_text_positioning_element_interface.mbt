///|
#external
pub type SVGTextPositioningElement

///|
pub impl TJsValue for SVGTextPositioningElement with to_js(
  self : SVGTextPositioningElement,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGTextPositioningElement] SVGTextPositioningElement::into(
  self : SVGTextPositioningElement,
) -> T = "%identity"

///|
pub impl TSVGTextPositioningElement for SVGTextPositioningElement

///|
pub impl TSVGTextContentElement for SVGTextPositioningElement

///|
pub impl TSVGGraphicsElement for SVGTextPositioningElement

///|
pub impl TSVGElement for SVGTextPositioningElement

///|
pub impl TElement for SVGTextPositioningElement

///|
pub impl TNode for SVGTextPositioningElement

///|
pub impl TEventTarget for SVGTextPositioningElement

///|
pub trait TSVGTextPositioningElement: TSVGTextContentElement {}
