///|
#external
pub type HTMLParagraphElement

///|
pub impl TJsValue for HTMLParagraphElement with to_js(
  self : HTMLParagraphElement,
) -> JsValue = "%identity"

///|
pub fn[T : THTMLParagraphElement] HTMLParagraphElement::into(
  self : HTMLParagraphElement,
) -> T = "%identity"

///|
pub impl THTMLParagraphElement for HTMLParagraphElement

///|
pub impl THTMLElement for HTMLParagraphElement

///|
pub impl TElement for HTMLParagraphElement

///|
pub impl TNode for HTMLParagraphElement

///|
pub impl TEventTarget for HTMLParagraphElement

///|
extern "js" fn html_paragraph_element_new_ffi() -> HTMLParagraphElement = "() => new HTMLParagraphElement()"

///|
pub fn HTMLParagraphElement::new() -> HTMLParagraphElement {
  html_paragraph_element_new_ffi()
}

///|
pub trait THTMLParagraphElement: THTMLElement {}
