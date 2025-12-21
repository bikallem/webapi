///|
#external
pub type HTMLLinkElement

///|
pub impl TJsValue for HTMLLinkElement with to_js(self : HTMLLinkElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLLinkElement] HTMLLinkElement::into(self : HTMLLinkElement) -> T = "%identity"

///|
pub impl THTMLLinkElement for HTMLLinkElement

///|
pub impl THTMLElement for HTMLLinkElement

///|
pub impl TElement for HTMLLinkElement

///|
pub impl TNode for HTMLLinkElement

///|
pub impl TEventTarget for HTMLLinkElement

///|
extern "js" fn html_link_element_ffi() -> HTMLLinkElement = "() => new HTMLLinkElement()"

///|
pub fn HTMLLinkElement::new() -> HTMLLinkElement {
  html_link_element_ffi()
}

///|
pub trait THTMLLinkElement: THTMLElement {}
