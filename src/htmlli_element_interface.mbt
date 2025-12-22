///|
#external
pub type HTMLLIElement

///|
pub impl TJsValue for HTMLLIElement with to_js(self : HTMLLIElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLLIElement] HTMLLIElement::into(self : HTMLLIElement) -> T = "%identity"

///|
pub impl THTMLLIElement for HTMLLIElement

///|
pub impl THTMLElement for HTMLLIElement

///|
pub impl TElement for HTMLLIElement

///|
pub impl TNode for HTMLLIElement

///|
pub impl TEventTarget for HTMLLIElement

///|
extern "js" fn htmlli_element_new_ffi() -> HTMLLIElement = "() => new HTMLLIElement()"

///|
pub fn HTMLLIElement::new() -> HTMLLIElement {
  htmlli_element_new_ffi()
}

///|
pub trait THTMLLIElement: THTMLElement {}
