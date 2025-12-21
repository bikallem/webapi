///|
#external
pub type HTMLDListElement

///|
pub impl TJsValue for HTMLDListElement with to_js(self : HTMLDListElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLDListElement] HTMLDListElement::into(
  self : HTMLDListElement,
) -> T = "%identity"

///|
pub impl THTMLDListElement for HTMLDListElement

///|
pub impl THTMLElement for HTMLDListElement

///|
pub impl TElement for HTMLDListElement

///|
pub impl TNode for HTMLDListElement

///|
pub impl TEventTarget for HTMLDListElement

///|
extern "js" fn htmld_list_element_ffi() -> HTMLDListElement = "() => new HTMLDListElement()"

///|
pub fn HTMLDListElement::new() -> HTMLDListElement {
  htmld_list_element_ffi()
}

///|
pub trait THTMLDListElement: THTMLElement {}
