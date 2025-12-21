///|
#external
pub type SVGRadialGradientElement

///|
pub impl TJsValue for SVGRadialGradientElement with to_js(
  self : SVGRadialGradientElement,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGRadialGradientElement] SVGRadialGradientElement::into(
  self : SVGRadialGradientElement,
) -> T = "%identity"

///|
pub impl TSVGRadialGradientElement for SVGRadialGradientElement

///|
pub impl TSVGGradientElement for SVGRadialGradientElement

///|
pub impl TSVGElement for SVGRadialGradientElement

///|
pub impl TElement for SVGRadialGradientElement

///|
pub impl TNode for SVGRadialGradientElement

///|
pub impl TEventTarget for SVGRadialGradientElement

///|
pub trait TSVGRadialGradientElement: TSVGGradientElement {}
