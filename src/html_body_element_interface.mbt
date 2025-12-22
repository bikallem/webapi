///|
#external
pub type HTMLBodyElement

///|
pub impl TJsValue for HTMLBodyElement with to_js(self : HTMLBodyElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLBodyElement] HTMLBodyElement::into(self : HTMLBodyElement) -> T = "%identity"

///|
pub impl THTMLBodyElement for HTMLBodyElement

///|
pub impl THTMLElement for HTMLBodyElement

///|
pub impl TElement for HTMLBodyElement

///|
pub impl TNode for HTMLBodyElement

///|
pub impl TEventTarget for HTMLBodyElement

///|
extern "js" fn html_body_element_new_ffi() -> HTMLBodyElement = "() => new HTMLBodyElement()"

///|
pub fn HTMLBodyElement::new() -> HTMLBodyElement {
  html_body_element_new_ffi()
}

///|
pub trait THTMLBodyElement: THTMLElement {}
