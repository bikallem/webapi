///|
#external
pub type SVGSymbolElement

///|
pub impl TJsValue for SVGSymbolElement with to_js(self : SVGSymbolElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGSymbolElement] SVGSymbolElement::into(
  self : SVGSymbolElement,
) -> T = "%identity"

///|
pub impl TSVGSymbolElement for SVGSymbolElement

///|
pub impl TSVGGraphicsElement for SVGSymbolElement

///|
pub impl TSVGElement for SVGSymbolElement

///|
pub impl TElement for SVGSymbolElement

///|
pub impl TNode for SVGSymbolElement

///|
pub impl TEventTarget for SVGSymbolElement

///|
pub trait TSVGSymbolElement: TSVGGraphicsElement {}
