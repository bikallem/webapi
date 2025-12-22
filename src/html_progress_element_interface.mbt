///|
#external
pub type HTMLProgressElement

///|
pub impl TJsValue for HTMLProgressElement with to_js(self : HTMLProgressElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLProgressElement] HTMLProgressElement::into(
  self : HTMLProgressElement,
) -> T = "%identity"

///|
pub impl THTMLProgressElement for HTMLProgressElement

///|
pub impl THTMLElement for HTMLProgressElement

///|
pub impl TElement for HTMLProgressElement

///|
pub impl TNode for HTMLProgressElement

///|
pub impl TEventTarget for HTMLProgressElement

///|
extern "js" fn html_progress_element_new_ffi() -> HTMLProgressElement = "() => new HTMLProgressElement()"

///|
pub fn HTMLProgressElement::new() -> HTMLProgressElement {
  html_progress_element_new_ffi()
}

///|
pub trait THTMLProgressElement: THTMLElement {}
