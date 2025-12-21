///|
#external
pub type SVGStopElement

///|
pub impl TJsValue for SVGStopElement with to_js(self : SVGStopElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGStopElement] SVGStopElement::into(self : SVGStopElement) -> T = "%identity"

///|
pub impl TSVGStopElement for SVGStopElement

///|
pub impl TSVGElement for SVGStopElement

///|
pub impl TElement for SVGStopElement

///|
pub impl TNode for SVGStopElement

///|
pub impl TEventTarget for SVGStopElement

///|
pub trait TSVGStopElement: TSVGElement {}
