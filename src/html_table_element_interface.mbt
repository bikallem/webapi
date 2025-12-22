///|
#external
pub type HTMLTableElement

///|
pub impl TJsValue for HTMLTableElement with to_js(self : HTMLTableElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTableElement] HTMLTableElement::into(
  self : HTMLTableElement,
) -> T = "%identity"

///|
pub impl THTMLTableElement for HTMLTableElement

///|
pub impl THTMLElement for HTMLTableElement

///|
pub impl TElement for HTMLTableElement

///|
pub impl TNode for HTMLTableElement

///|
pub impl TEventTarget for HTMLTableElement

///|
extern "js" fn html_table_element_new_ffi() -> HTMLTableElement = "() => new HTMLTableElement()"

///|
pub fn HTMLTableElement::new() -> HTMLTableElement {
  html_table_element_new_ffi()
}

///|
pub trait THTMLTableElement: THTMLElement {
  create_caption(self : Self) -> HTMLTableCaptionElement = _
  delete_caption(self : Self) -> Unit = _
  create_t_head(self : Self) -> HTMLTableSectionElement = _
  delete_t_head(self : Self) -> Unit = _
  create_t_foot(self : Self) -> HTMLTableSectionElement = _
  delete_t_foot(self : Self) -> Unit = _
  create_t_body(self : Self) -> HTMLTableSectionElement = _
  insert_row(self : Self, index? : Int) -> HTMLTableRowElement = _
  delete_row(self : Self, index : Int) -> Unit = _
}

///|
extern "js" fn html_table_element_create_caption_ffi(
  obj : JsValue,
) -> HTMLTableCaptionElement = "(obj) => obj.createCaption(obj)"

///|
impl THTMLTableElement with create_caption(self : Self) -> HTMLTableCaptionElement {
  html_table_element_create_caption_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_delete_caption_ffi(obj : JsValue) -> Unit = "(obj) => obj.deleteCaption(obj)"

///|
impl THTMLTableElement with delete_caption(self : Self) -> Unit {
  html_table_element_delete_caption_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_create_t_head_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "(obj) => obj.createTHead(obj)"

///|
impl THTMLTableElement with create_t_head(self : Self) -> HTMLTableSectionElement {
  html_table_element_create_t_head_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_delete_t_head_ffi(obj : JsValue) -> Unit = "(obj) => obj.deleteTHead(obj)"

///|
impl THTMLTableElement with delete_t_head(self : Self) -> Unit {
  html_table_element_delete_t_head_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_create_t_foot_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "(obj) => obj.createTFoot(obj)"

///|
impl THTMLTableElement with create_t_foot(self : Self) -> HTMLTableSectionElement {
  html_table_element_create_t_foot_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_delete_t_foot_ffi(obj : JsValue) -> Unit = "(obj) => obj.deleteTFoot(obj)"

///|
impl THTMLTableElement with delete_t_foot(self : Self) -> Unit {
  html_table_element_delete_t_foot_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_create_t_body_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "(obj) => obj.createTBody(obj)"

///|
impl THTMLTableElement with create_t_body(self : Self) -> HTMLTableSectionElement {
  html_table_element_create_t_body_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_insert_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> HTMLTableRowElement = "(obj, index) => obj.insertRow(obj, index)"

///|
impl THTMLTableElement with insert_row(self : Self, index? : Int = -1) -> HTMLTableRowElement {
  html_table_element_insert_row_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn html_table_element_delete_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteRow(obj, index)"

///|
impl THTMLTableElement with delete_row(self : Self, index : Int) -> Unit {
  html_table_element_delete_row_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}
