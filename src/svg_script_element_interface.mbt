///|
#external
pub type SVGScriptElement

///|
pub impl TJsValue for SVGScriptElement with to_js(self : SVGScriptElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGScriptElement] SVGScriptElement::into(
  self : SVGScriptElement,
) -> T = "%identity"

///|
pub impl TSVGScriptElement for SVGScriptElement

///|
pub impl TSVGElement for SVGScriptElement

///|
pub impl TElement for SVGScriptElement

///|
pub impl TNode for SVGScriptElement

///|
pub impl TEventTarget for SVGScriptElement

///|
pub trait TSVGScriptElement: TSVGElement {}
