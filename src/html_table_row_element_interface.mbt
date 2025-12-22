///|
#external
pub type HTMLTableRowElement

///|
pub impl TJsValue for HTMLTableRowElement with to_js(self : HTMLTableRowElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTableRowElement] HTMLTableRowElement::into(
  self : HTMLTableRowElement,
) -> T = "%identity"

///|
pub impl THTMLTableRowElement for HTMLTableRowElement

///|
pub impl THTMLElement for HTMLTableRowElement

///|
pub impl TElement for HTMLTableRowElement

///|
pub impl TNode for HTMLTableRowElement

///|
pub impl TEventTarget for HTMLTableRowElement

///|
extern "js" fn html_table_row_element_new_ffi() -> HTMLTableRowElement = "() => new HTMLTableRowElement()"

///|
pub fn HTMLTableRowElement::new() -> HTMLTableRowElement {
  html_table_row_element_new_ffi()
}

///|
pub trait THTMLTableRowElement: THTMLElement {
  insert_cell(self : Self, index? : Int) -> HTMLTableCellElement = _
  delete_cell(self : Self, index : Int) -> Unit = _
}

///|
extern "js" fn html_table_row_element_insert_cell_ffi(
  obj : JsValue,
  index : JsValue,
) -> HTMLTableCellElement = "(obj, index) => obj.insertCell(obj, index)"

///|
impl THTMLTableRowElement with insert_cell(self : Self, index? : Int = -1) -> HTMLTableCellElement {
  html_table_row_element_insert_cell_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn html_table_row_element_delete_cell_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteCell(obj, index)"

///|
impl THTMLTableRowElement with delete_cell(self : Self, index : Int) -> Unit {
  html_table_row_element_delete_cell_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}
