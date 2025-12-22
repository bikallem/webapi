///|
#external
pub type HTMLAnchorElement

///|
pub impl TJsValue for HTMLAnchorElement with to_js(self : HTMLAnchorElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLAnchorElement] HTMLAnchorElement::into(
  self : HTMLAnchorElement,
) -> T = "%identity"

///|
pub impl THTMLAnchorElement for HTMLAnchorElement

///|
pub impl THTMLElement for HTMLAnchorElement

///|
pub impl TElement for HTMLAnchorElement

///|
pub impl TNode for HTMLAnchorElement

///|
pub impl TEventTarget for HTMLAnchorElement

///|
extern "js" fn html_anchor_element_new_ffi() -> HTMLAnchorElement = "() => new HTMLAnchorElement()"

///|
pub fn HTMLAnchorElement::new() -> HTMLAnchorElement {
  html_anchor_element_new_ffi()
}

///|
pub trait THTMLAnchorElement: THTMLElement {}
