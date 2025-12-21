///|
#external
pub type HTMLLabelElement

///|
pub impl TJsValue for HTMLLabelElement with to_js(self : HTMLLabelElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLLabelElement] HTMLLabelElement::into(
  self : HTMLLabelElement,
) -> T = "%identity"

///|
pub impl THTMLLabelElement for HTMLLabelElement

///|
pub impl THTMLElement for HTMLLabelElement

///|
pub impl TElement for HTMLLabelElement

///|
pub impl TNode for HTMLLabelElement

///|
pub impl TEventTarget for HTMLLabelElement

///|
extern "js" fn html_label_element_ffi() -> HTMLLabelElement = "() => new HTMLLabelElement()"

///|
pub fn HTMLLabelElement::new() -> HTMLLabelElement {
  html_label_element_ffi()
}

///|
pub trait THTMLLabelElement: THTMLElement {}
