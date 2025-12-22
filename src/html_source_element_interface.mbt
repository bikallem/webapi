///|
#external
pub type HTMLSourceElement

///|
pub impl TJsValue for HTMLSourceElement with to_js(self : HTMLSourceElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLSourceElement] HTMLSourceElement::into(
  self : HTMLSourceElement,
) -> T = "%identity"

///|
pub impl THTMLSourceElement for HTMLSourceElement

///|
pub impl THTMLElement for HTMLSourceElement

///|
pub impl TElement for HTMLSourceElement

///|
pub impl TNode for HTMLSourceElement

///|
pub impl TEventTarget for HTMLSourceElement

///|
extern "js" fn html_source_element_new_ffi() -> HTMLSourceElement = "() => new HTMLSourceElement()"

///|
pub fn HTMLSourceElement::new() -> HTMLSourceElement {
  html_source_element_new_ffi()
}

///|
pub trait THTMLSourceElement: THTMLElement {}
