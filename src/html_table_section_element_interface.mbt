///|
#external
pub type HTMLTableSectionElement

///|
pub impl TJsValue for HTMLTableSectionElement with to_js(
  self : HTMLTableSectionElement,
) -> JsValue = "%identity"

///|
pub fn[T : THTMLTableSectionElement] HTMLTableSectionElement::into(
  self : HTMLTableSectionElement,
) -> T = "%identity"

///|
pub impl THTMLTableSectionElement for HTMLTableSectionElement

///|
pub impl THTMLElement for HTMLTableSectionElement

///|
pub impl TElement for HTMLTableSectionElement

///|
pub impl TNode for HTMLTableSectionElement

///|
pub impl TEventTarget for HTMLTableSectionElement

///|
extern "js" fn html_table_section_element_ffi() -> HTMLTableSectionElement = "() => new HTMLTableSectionElement()"

///|
pub fn HTMLTableSectionElement::new() -> HTMLTableSectionElement {
  html_table_section_element_ffi()
}

///|
pub trait THTMLTableSectionElement: THTMLElement {
  insert_row(self : Self, index? : Int) -> HTMLTableRowElement = _
  delete_row(self : Self, index : Int) -> Unit = _
}

///|
extern "js" fn html_table_section_element_insert_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> HTMLTableRowElement = "(obj, index) => obj.insertRow(obj, index)"

///|
impl THTMLTableSectionElement with insert_row(self : Self, index? : Int = -1) -> HTMLTableRowElement {
  html_table_section_element_insert_row_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn html_table_section_element_delete_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteRow(obj, index)"

///|
impl THTMLTableSectionElement with delete_row(self : Self, index : Int) -> Unit {
  html_table_section_element_delete_row_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}
