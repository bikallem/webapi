///|
#external
pub type HTMLUListElement

///|
pub impl TJsValue for HTMLUListElement with to_js(self : HTMLUListElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLUListElement] HTMLUListElement::into(
  self : HTMLUListElement,
) -> T = "%identity"

///|
pub impl THTMLUListElement for HTMLUListElement

///|
pub impl THTMLElement for HTMLUListElement

///|
pub impl TElement for HTMLUListElement

///|
pub impl TNode for HTMLUListElement

///|
pub impl TEventTarget for HTMLUListElement

///|
extern "js" fn htmlu_list_element_new_ffi() -> HTMLUListElement = "() => new HTMLUListElement()"

///|
pub fn HTMLUListElement::new() -> HTMLUListElement {
  htmlu_list_element_new_ffi()
}

///|
pub trait THTMLUListElement: THTMLElement {}
