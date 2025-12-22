///|
#external
pub type HTMLOListElement

///|
pub impl TJsValue for HTMLOListElement with to_js(self : HTMLOListElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLOListElement] HTMLOListElement::into(
  self : HTMLOListElement,
) -> T = "%identity"

///|
pub impl THTMLOListElement for HTMLOListElement

///|
pub impl THTMLElement for HTMLOListElement

///|
pub impl TElement for HTMLOListElement

///|
pub impl TNode for HTMLOListElement

///|
pub impl TEventTarget for HTMLOListElement

///|
extern "js" fn htmlo_list_element_new_ffi() -> HTMLOListElement = "() => new HTMLOListElement()"

///|
pub fn HTMLOListElement::new() -> HTMLOListElement {
  htmlo_list_element_new_ffi()
}

///|
pub trait THTMLOListElement: THTMLElement {}
