///|
#external
pub type HTMLDirectoryElement

///|
pub impl TJsValue for HTMLDirectoryElement with to_js(
  self : HTMLDirectoryElement,
) -> JsValue = "%identity"

///|
pub fn[T : THTMLDirectoryElement] HTMLDirectoryElement::into(
  self : HTMLDirectoryElement,
) -> T = "%identity"

///|
pub impl THTMLDirectoryElement for HTMLDirectoryElement

///|
pub impl THTMLElement for HTMLDirectoryElement

///|
pub impl TElement for HTMLDirectoryElement

///|
pub impl TNode for HTMLDirectoryElement

///|
pub impl TEventTarget for HTMLDirectoryElement

///|
extern "js" fn html_directory_element_new_ffi() -> HTMLDirectoryElement = "() => new HTMLDirectoryElement()"

///|
pub fn HTMLDirectoryElement::new() -> HTMLDirectoryElement {
  html_directory_element_new_ffi()
}

///|
pub trait THTMLDirectoryElement: THTMLElement {}
