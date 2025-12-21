///|
#external
pub type SVGTextElement

///|
pub impl TJsValue for SVGTextElement with to_js(self : SVGTextElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGTextElement] SVGTextElement::into(self : SVGTextElement) -> T = "%identity"

///|
pub impl TSVGTextElement for SVGTextElement

///|
pub impl TSVGTextPositioningElement for SVGTextElement

///|
pub impl TSVGTextContentElement for SVGTextElement

///|
pub impl TSVGGraphicsElement for SVGTextElement

///|
pub impl TSVGElement for SVGTextElement

///|
pub impl TElement for SVGTextElement

///|
pub impl TNode for SVGTextElement

///|
pub impl TEventTarget for SVGTextElement

///|
pub trait TSVGTextElement: TSVGTextPositioningElement {}
