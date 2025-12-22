///|
#external
pub type HTMLTimeElement

///|
pub impl TJsValue for HTMLTimeElement with to_js(self : HTMLTimeElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTimeElement] HTMLTimeElement::into(self : HTMLTimeElement) -> T = "%identity"

///|
pub impl THTMLTimeElement for HTMLTimeElement

///|
pub impl THTMLElement for HTMLTimeElement

///|
pub impl TElement for HTMLTimeElement

///|
pub impl TNode for HTMLTimeElement

///|
pub impl TEventTarget for HTMLTimeElement

///|
extern "js" fn html_time_element_new_ffi() -> HTMLTimeElement = "() => new HTMLTimeElement()"

///|
pub fn HTMLTimeElement::new() -> HTMLTimeElement {
  html_time_element_new_ffi()
}

///|
pub trait THTMLTimeElement: THTMLElement {}
