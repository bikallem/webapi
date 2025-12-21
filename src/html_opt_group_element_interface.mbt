///|
#external
pub type HTMLOptGroupElement

///|
pub impl TJsValue for HTMLOptGroupElement with to_js(self : HTMLOptGroupElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLOptGroupElement] HTMLOptGroupElement::into(
  self : HTMLOptGroupElement,
) -> T = "%identity"

///|
pub impl THTMLOptGroupElement for HTMLOptGroupElement

///|
pub impl THTMLElement for HTMLOptGroupElement

///|
pub impl TElement for HTMLOptGroupElement

///|
pub impl TNode for HTMLOptGroupElement

///|
pub impl TEventTarget for HTMLOptGroupElement

///|
extern "js" fn html_opt_group_element_ffi() -> HTMLOptGroupElement = "() => new HTMLOptGroupElement()"

///|
pub fn HTMLOptGroupElement::new() -> HTMLOptGroupElement {
  html_opt_group_element_ffi()
}

///|
pub trait THTMLOptGroupElement: THTMLElement {}
