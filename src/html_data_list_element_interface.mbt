///|
#external
pub type HTMLDataListElement

///|
pub impl TJsValue for HTMLDataListElement with to_js(self : HTMLDataListElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLDataListElement] HTMLDataListElement::into(
  self : HTMLDataListElement,
) -> T = "%identity"

///|
pub impl THTMLDataListElement for HTMLDataListElement

///|
pub impl THTMLElement for HTMLDataListElement

///|
pub impl TElement for HTMLDataListElement

///|
pub impl TNode for HTMLDataListElement

///|
pub impl TEventTarget for HTMLDataListElement

///|
extern "js" fn html_data_list_element_ffi() -> HTMLDataListElement = "() => new HTMLDataListElement()"

///|
pub fn HTMLDataListElement::new() -> HTMLDataListElement {
  html_data_list_element_ffi()
}

///|
pub trait THTMLDataListElement: THTMLElement {}
