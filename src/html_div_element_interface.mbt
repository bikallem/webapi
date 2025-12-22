///|
#external
pub type HTMLDivElement

///|
pub impl TJsValue for HTMLDivElement with to_js(self : HTMLDivElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLDivElement] HTMLDivElement::into(self : HTMLDivElement) -> T = "%identity"

///|
pub impl THTMLDivElement for HTMLDivElement

///|
pub impl THTMLElement for HTMLDivElement

///|
pub impl TElement for HTMLDivElement

///|
pub impl TNode for HTMLDivElement

///|
pub impl TEventTarget for HTMLDivElement

///|
extern "js" fn html_div_element_new_ffi() -> HTMLDivElement = "() => new HTMLDivElement()"

///|
pub fn HTMLDivElement::new() -> HTMLDivElement {
  html_div_element_new_ffi()
}

///|
pub trait THTMLDivElement: THTMLElement {}
