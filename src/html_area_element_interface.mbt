///|
#external
pub type HTMLAreaElement

///|
pub impl TJsValue for HTMLAreaElement with to_js(self : HTMLAreaElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLAreaElement] HTMLAreaElement::into(self : HTMLAreaElement) -> T = "%identity"

///|
pub impl THTMLAreaElement for HTMLAreaElement

///|
pub impl THTMLElement for HTMLAreaElement

///|
pub impl TElement for HTMLAreaElement

///|
pub impl TNode for HTMLAreaElement

///|
pub impl TEventTarget for HTMLAreaElement

///|
extern "js" fn html_area_element_new_ffi() -> HTMLAreaElement = "() => new HTMLAreaElement()"

///|
pub fn HTMLAreaElement::new() -> HTMLAreaElement {
  html_area_element_new_ffi()
}

///|
pub trait THTMLAreaElement: THTMLElement {}
