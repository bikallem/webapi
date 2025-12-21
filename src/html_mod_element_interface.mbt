///|
#external
pub type HTMLModElement

///|
pub impl TJsValue for HTMLModElement with to_js(self : HTMLModElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLModElement] HTMLModElement::into(self : HTMLModElement) -> T = "%identity"

///|
pub impl THTMLModElement for HTMLModElement

///|
pub impl THTMLElement for HTMLModElement

///|
pub impl TElement for HTMLModElement

///|
pub impl TNode for HTMLModElement

///|
pub impl TEventTarget for HTMLModElement

///|
extern "js" fn html_mod_element_ffi() -> HTMLModElement = "() => new HTMLModElement()"

///|
pub fn HTMLModElement::new() -> HTMLModElement {
  html_mod_element_ffi()
}

///|
pub trait THTMLModElement: THTMLElement {}
