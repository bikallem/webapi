///|
#external
pub type SVGLinearGradientElement

///|
pub impl TJsValue for SVGLinearGradientElement with to_js(
  self : SVGLinearGradientElement,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGLinearGradientElement] SVGLinearGradientElement::into(
  self : SVGLinearGradientElement,
) -> T = "%identity"

///|
pub impl TSVGLinearGradientElement for SVGLinearGradientElement

///|
pub impl TSVGGradientElement for SVGLinearGradientElement

///|
pub impl TSVGElement for SVGLinearGradientElement

///|
pub impl TElement for SVGLinearGradientElement

///|
pub impl TNode for SVGLinearGradientElement

///|
pub impl TEventTarget for SVGLinearGradientElement

///|
pub trait TSVGLinearGradientElement: TSVGGradientElement {}
