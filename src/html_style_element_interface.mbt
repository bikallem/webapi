///|
#external
pub type HTMLStyleElement

///|
pub impl TJsValue for HTMLStyleElement with to_js(self : HTMLStyleElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLStyleElement] HTMLStyleElement::into(
  self : HTMLStyleElement,
) -> T = "%identity"

///|
pub impl THTMLStyleElement for HTMLStyleElement

///|
pub impl THTMLElement for HTMLStyleElement

///|
pub impl TElement for HTMLStyleElement

///|
pub impl TNode for HTMLStyleElement

///|
pub impl TEventTarget for HTMLStyleElement

///|
extern "js" fn html_style_element_new_ffi() -> HTMLStyleElement = "() => new HTMLStyleElement()"

///|
pub fn HTMLStyleElement::new() -> HTMLStyleElement {
  html_style_element_new_ffi()
}

///|
pub trait THTMLStyleElement: THTMLElement {}
