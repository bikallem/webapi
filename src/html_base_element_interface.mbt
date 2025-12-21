///|
#external
pub type HTMLBaseElement

///|
pub impl TJsValue for HTMLBaseElement with to_js(self : HTMLBaseElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLBaseElement] HTMLBaseElement::into(self : HTMLBaseElement) -> T = "%identity"

///|
pub impl THTMLBaseElement for HTMLBaseElement

///|
pub impl THTMLElement for HTMLBaseElement

///|
pub impl TElement for HTMLBaseElement

///|
pub impl TNode for HTMLBaseElement

///|
pub impl TEventTarget for HTMLBaseElement

///|
extern "js" fn html_base_element_ffi() -> HTMLBaseElement = "() => new HTMLBaseElement()"

///|
pub fn HTMLBaseElement::new() -> HTMLBaseElement {
  html_base_element_ffi()
}

///|
pub trait THTMLBaseElement: THTMLElement {}
