///|
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
pub trait TSVGGradientElement: TSVGElement {}
