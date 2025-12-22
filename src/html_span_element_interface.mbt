///|
#external
pub type HTMLSpanElement

///|
pub impl TJsValue for HTMLSpanElement with to_js(self : HTMLSpanElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLSpanElement] HTMLSpanElement::into(self : HTMLSpanElement) -> T = "%identity"

///|
pub impl THTMLSpanElement for HTMLSpanElement

///|
pub impl THTMLElement for HTMLSpanElement

///|
pub impl TElement for HTMLSpanElement

///|
pub impl TNode for HTMLSpanElement

///|
pub impl TEventTarget for HTMLSpanElement

///|
extern "js" fn html_span_element_new_ffi() -> HTMLSpanElement = "() => new HTMLSpanElement()"

///|
pub fn HTMLSpanElement::new() -> HTMLSpanElement {
  html_span_element_new_ffi()
}

///|
pub trait THTMLSpanElement: THTMLElement {}
