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
pub const SVG_GRADIENT_ELEMENT_SVG_SPREADMETHOD_UNKNOWN : UInt = 0

///|
pub const SVG_GRADIENT_ELEMENT_SVG_SPREADMETHOD_PAD : UInt = 1

///|
pub const SVG_GRADIENT_ELEMENT_SVG_SPREADMETHOD_REFLECT : UInt = 2

///|
pub const SVG_GRADIENT_ELEMENT_SVG_SPREADMETHOD_REPEAT : UInt = 3

///|
pub trait TSVGGradientElement: TSVGElement {}
