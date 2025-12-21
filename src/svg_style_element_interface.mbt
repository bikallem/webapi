///|
#external
pub type SVGStyleElement

///|
pub impl TJsValue for SVGStyleElement with to_js(self : SVGStyleElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGStyleElement] SVGStyleElement::into(self : SVGStyleElement) -> T = "%identity"

///|
pub impl TSVGStyleElement for SVGStyleElement

///|
pub impl TSVGElement for SVGStyleElement

///|
pub impl TElement for SVGStyleElement

///|
pub impl TNode for SVGStyleElement

///|
pub impl TEventTarget for SVGStyleElement

///|
pub trait TSVGStyleElement: TSVGElement {}
