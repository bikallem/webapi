///|
#external
pub type HTMLHeadingElement

///|
pub impl TJsValue for HTMLHeadingElement with to_js(self : HTMLHeadingElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLHeadingElement] HTMLHeadingElement::into(
  self : HTMLHeadingElement,
) -> T = "%identity"

///|
pub impl THTMLHeadingElement for HTMLHeadingElement

///|
pub impl THTMLElement for HTMLHeadingElement

///|
pub impl TElement for HTMLHeadingElement

///|
pub impl TNode for HTMLHeadingElement

///|
pub impl TEventTarget for HTMLHeadingElement

///|
extern "js" fn html_heading_element_ffi() -> HTMLHeadingElement = "() => new HTMLHeadingElement()"

///|
pub fn HTMLHeadingElement::new() -> HTMLHeadingElement {
  html_heading_element_ffi()
}

///|
pub trait THTMLHeadingElement: THTMLElement {}
