///|
#external
pub type HTMLHtmlElement

///|
pub impl TJsValue for HTMLHtmlElement with to_js(self : HTMLHtmlElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLHtmlElement] HTMLHtmlElement::into(self : HTMLHtmlElement) -> T = "%identity"

///|
pub impl THTMLHtmlElement for HTMLHtmlElement

///|
pub impl THTMLElement for HTMLHtmlElement

///|
pub impl TElement for HTMLHtmlElement

///|
pub impl TNode for HTMLHtmlElement

///|
pub impl TEventTarget for HTMLHtmlElement

///|
extern "js" fn html_html_element_ffi() -> HTMLHtmlElement = "() => new HTMLHtmlElement()"

///|
pub fn HTMLHtmlElement::new() -> HTMLHtmlElement {
  html_html_element_ffi()
}

///|
pub trait THTMLHtmlElement: THTMLElement {}
