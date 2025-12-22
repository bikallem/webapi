///|
#external
pub type HTMLDetailsElement

///|
pub impl TJsValue for HTMLDetailsElement with to_js(self : HTMLDetailsElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLDetailsElement] HTMLDetailsElement::into(
  self : HTMLDetailsElement,
) -> T = "%identity"

///|
pub impl THTMLDetailsElement for HTMLDetailsElement

///|
pub impl THTMLElement for HTMLDetailsElement

///|
pub impl TElement for HTMLDetailsElement

///|
pub impl TNode for HTMLDetailsElement

///|
pub impl TEventTarget for HTMLDetailsElement

///|
extern "js" fn html_details_element_new_ffi() -> HTMLDetailsElement = "() => new HTMLDetailsElement()"

///|
pub fn HTMLDetailsElement::new() -> HTMLDetailsElement {
  html_details_element_new_ffi()
}

///|
pub trait THTMLDetailsElement: THTMLElement {}
