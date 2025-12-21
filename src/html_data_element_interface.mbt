///|
#external
pub type HTMLDataElement

///|
pub impl TJsValue for HTMLDataElement with to_js(self : HTMLDataElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLDataElement] HTMLDataElement::into(self : HTMLDataElement) -> T = "%identity"

///|
pub impl THTMLDataElement for HTMLDataElement

///|
pub impl THTMLElement for HTMLDataElement

///|
pub impl TElement for HTMLDataElement

///|
pub impl TNode for HTMLDataElement

///|
pub impl TEventTarget for HTMLDataElement

///|
extern "js" fn html_data_element_ffi() -> HTMLDataElement = "() => new HTMLDataElement()"

///|
pub fn HTMLDataElement::new() -> HTMLDataElement {
  html_data_element_ffi()
}

///|
pub trait THTMLDataElement: THTMLElement {}
