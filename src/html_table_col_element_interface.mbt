///|
#external
pub type HTMLTableColElement

///|
pub impl TJsValue for HTMLTableColElement with to_js(self : HTMLTableColElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTableColElement] HTMLTableColElement::into(
  self : HTMLTableColElement,
) -> T = "%identity"

///|
pub impl THTMLTableColElement for HTMLTableColElement

///|
pub impl THTMLElement for HTMLTableColElement

///|
pub impl TElement for HTMLTableColElement

///|
pub impl TNode for HTMLTableColElement

///|
pub impl TEventTarget for HTMLTableColElement

///|
extern "js" fn html_table_col_element_ffi() -> HTMLTableColElement = "() => new HTMLTableColElement()"

///|
pub fn HTMLTableColElement::new() -> HTMLTableColElement {
  html_table_col_element_ffi()
}

///|
pub trait THTMLTableColElement: THTMLElement {}
