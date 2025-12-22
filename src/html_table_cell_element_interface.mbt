///|
#external
pub type HTMLTableCellElement

///|
pub impl TJsValue for HTMLTableCellElement with to_js(
  self : HTMLTableCellElement,
) -> JsValue = "%identity"

///|
pub fn[T : THTMLTableCellElement] HTMLTableCellElement::into(
  self : HTMLTableCellElement,
) -> T = "%identity"

///|
pub impl THTMLTableCellElement for HTMLTableCellElement

///|
pub impl THTMLElement for HTMLTableCellElement

///|
pub impl TElement for HTMLTableCellElement

///|
pub impl TNode for HTMLTableCellElement

///|
pub impl TEventTarget for HTMLTableCellElement

///|
extern "js" fn html_table_cell_element_new_ffi() -> HTMLTableCellElement = "() => new HTMLTableCellElement()"

///|
pub fn HTMLTableCellElement::new() -> HTMLTableCellElement {
  html_table_cell_element_new_ffi()
}

///|
pub trait THTMLTableCellElement: THTMLElement {}
