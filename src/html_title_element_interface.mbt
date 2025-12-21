///|
#external
pub type HTMLTitleElement

///|
pub impl TJsValue for HTMLTitleElement with to_js(self : HTMLTitleElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTitleElement] HTMLTitleElement::into(
  self : HTMLTitleElement,
) -> T = "%identity"

///|
pub impl THTMLTitleElement for HTMLTitleElement

///|
pub impl THTMLElement for HTMLTitleElement

///|
pub impl TElement for HTMLTitleElement

///|
pub impl TNode for HTMLTitleElement

///|
pub impl TEventTarget for HTMLTitleElement

///|
extern "js" fn html_title_element_ffi() -> HTMLTitleElement = "() => new HTMLTitleElement()"

///|
pub fn HTMLTitleElement::new() -> HTMLTitleElement {
  html_title_element_ffi()
}

///|
pub trait THTMLTitleElement: THTMLElement {}
