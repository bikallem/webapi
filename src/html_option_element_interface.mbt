///|
#external
pub type HTMLOptionElement

///|
pub impl TJsValue for HTMLOptionElement with to_js(self : HTMLOptionElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLOptionElement] HTMLOptionElement::into(
  self : HTMLOptionElement,
) -> T = "%identity"

///|
pub impl THTMLOptionElement for HTMLOptionElement

///|
pub impl THTMLElement for HTMLOptionElement

///|
pub impl TElement for HTMLOptionElement

///|
pub impl TNode for HTMLOptionElement

///|
pub impl TEventTarget for HTMLOptionElement

///|
extern "js" fn html_option_element_ffi() -> HTMLOptionElement = "() => new HTMLOptionElement()"

///|
pub fn HTMLOptionElement::new() -> HTMLOptionElement {
  html_option_element_ffi()
}

///|
pub trait THTMLOptionElement: THTMLElement {}
