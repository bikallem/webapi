///|
#external
pub type HTMLUnknownElement

///|
pub impl TJsValue for HTMLUnknownElement with to_js(self : HTMLUnknownElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLUnknownElement] HTMLUnknownElement::into(
  self : HTMLUnknownElement,
) -> T = "%identity"

///|
pub impl THTMLUnknownElement for HTMLUnknownElement

///|
pub impl THTMLElement for HTMLUnknownElement

///|
pub impl TElement for HTMLUnknownElement

///|
pub impl TNode for HTMLUnknownElement

///|
pub impl TEventTarget for HTMLUnknownElement

///|
pub trait THTMLUnknownElement: THTMLElement {}
