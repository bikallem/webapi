// Do not edit. This file is generated.
// MoonBit type: HTMLTableRowElement
// Specifications: html.idl

///|
/// [HTMLTableRowElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement)
#external
pub type HTMLTableRowElement

///|
pub impl TJsValue for HTMLTableRowElement with to_js(self : HTMLTableRowElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLTableRowElement with from_js_any(value : JsAny) -> HTMLTableRowElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLTableRowElement] HTMLTableRowElement::into(
  self : HTMLTableRowElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLTableRowElement] HTMLTableRowElement::unsafe_into(
  self : HTMLTableRowElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLTableRowElement with constructor_name() {
  "HTMLTableRowElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLTableRowElement + HasConstructor] HTMLTableRowElement::try_into(
  self : HTMLTableRowElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
pub fn HTMLTableRowElement::new() -> HTMLTableRowElement {
  html_table_row_element_new_ffi()
}

///|
/// [HTMLTableRowElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement) interface.
pub trait THTMLTableRowElement: THTMLElement {
  row_index(self : Self) -> Int = _
  section_row_index(self : Self) -> Int = _
  cells(self : Self) -> HTMLCollection = _
  insert_cell(self : Self, index? : Int) -> HTMLTableCellElement = _
  delete_cell(self : Self, index : Int) -> Unit = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  ch(self : Self) -> String = _
  set_ch(self : Self, ch : String) -> Unit = _
  ch_off(self : Self) -> String = _
  set_ch_off(self : Self, ch_off : String) -> Unit = _
  v_align(self : Self) -> String = _
  set_v_align(self : Self, v_align : String) -> Unit = _
  bg_color(self : Self) -> String = _
  set_bg_color(self : Self, bg_color : String) -> Unit = _
}

///|
/// [HTMLTableRowElement.rowIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/rowIndex)
impl THTMLTableRowElement with row_index(self : Self) -> Int {
  html_table_row_element_row_index_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.sectionRowIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/sectionRowIndex)
impl THTMLTableRowElement with section_row_index(self : Self) -> Int {
  html_table_row_element_section_row_index_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.cells](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/cells)
impl THTMLTableRowElement with cells(self : Self) -> HTMLCollection {
  html_table_row_element_cells_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.insertCell](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/insertCell)
impl THTMLTableRowElement with insert_cell(self : Self, index? : Int) -> HTMLTableCellElement {
  html_table_row_element_insert_cell_ffi(
    TJsValue::to_js(self),
    opt_to_js(index),
  )
}

///|
/// [HTMLTableRowElement.deleteCell](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/deleteCell)
impl THTMLTableRowElement with delete_cell(self : Self, index : Int) -> Unit {
  html_table_row_element_delete_cell_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
/// [HTMLTableRowElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/align)
impl THTMLTableRowElement with align(self : Self) -> String {
  html_table_row_element_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/align)
impl THTMLTableRowElement with set_align(self : Self, align : String) -> Unit {
  html_table_row_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
/// [HTMLTableRowElement.ch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/ch)
impl THTMLTableRowElement with ch(self : Self) -> String {
  html_table_row_element_ch_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.ch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/ch)
impl THTMLTableRowElement with set_ch(self : Self, ch : String) -> Unit {
  html_table_row_element_set_ch_ffi(TJsValue::to_js(self), TJsValue::to_js(ch))
}

///|
/// [HTMLTableRowElement.chOff](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/chOff)
impl THTMLTableRowElement with ch_off(self : Self) -> String {
  html_table_row_element_ch_off_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.chOff](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/chOff)
impl THTMLTableRowElement with set_ch_off(self : Self, ch_off : String) -> Unit {
  html_table_row_element_set_ch_off_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ch_off),
  )
}

///|
/// [HTMLTableRowElement.vAlign](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/vAlign)
impl THTMLTableRowElement with v_align(self : Self) -> String {
  html_table_row_element_v_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.vAlign](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/vAlign)
impl THTMLTableRowElement with set_v_align(self : Self, v_align : String) -> Unit {
  html_table_row_element_set_v_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(v_align),
  )
}

///|
/// [HTMLTableRowElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/bgColor)
impl THTMLTableRowElement with bg_color(self : Self) -> String {
  html_table_row_element_bg_color_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/bgColor)
impl THTMLTableRowElement with set_bg_color(self : Self, bg_color : String) -> Unit {
  html_table_row_element_set_bg_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bg_color),
  )
}

///|
#cfg(target="js")
extern "js" fn html_table_row_element_new_ffi() -> HTMLTableRowElement = "() => new HTMLTableRowElement()"

///|
#cfg(target="js")
extern "js" fn html_table_row_element_row_index_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.rowIndex"

///|
#cfg(target="js")
fn html_table_row_element_row_index_ffi(obj : JsValue) -> Int {
  html_table_row_element_row_index_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_row_element_section_row_index_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.sectionRowIndex"

///|
#cfg(target="js")
fn html_table_row_element_section_row_index_ffi(obj : JsValue) -> Int {
  html_table_row_element_section_row_index_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_row_element_cells_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cells"

///|
#cfg(target="js")
fn html_table_row_element_cells_ffi(obj : JsValue) -> HTMLCollection {
  html_table_row_element_cells_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_row_element_insert_cell_ffi_js(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.insertCell(index)"

///|
#cfg(target="js")
fn html_table_row_element_insert_cell_ffi(
  obj : JsValue,
  index : JsValue,
) -> HTMLTableCellElement {
  html_table_row_element_insert_cell_ffi_js(obj, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_row_element_delete_cell_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteCell(index)"

///|
#cfg(target="js")
extern "js" fn html_table_row_element_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_table_row_element_align_ffi(obj : JsValue) -> String {
  html_table_row_element_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_row_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
#cfg(target="js")
extern "js" fn html_table_row_element_ch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ch"

///|
#cfg(target="js")
fn html_table_row_element_ch_ffi(obj : JsValue) -> String {
  html_table_row_element_ch_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_row_element_set_ch_ffi(
  obj : JsValue,
  ch : JsValue,
) -> Unit = "(obj, ch) => { obj.ch = ch; }"

///|
#cfg(target="js")
extern "js" fn html_table_row_element_ch_off_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.chOff"

///|
#cfg(target="js")
fn html_table_row_element_ch_off_ffi(obj : JsValue) -> String {
  html_table_row_element_ch_off_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_row_element_set_ch_off_ffi(
  obj : JsValue,
  ch_off : JsValue,
) -> Unit = "(obj, chOff) => { obj.chOff = chOff; }"

///|
#cfg(target="js")
extern "js" fn html_table_row_element_v_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vAlign"

///|
#cfg(target="js")
fn html_table_row_element_v_align_ffi(obj : JsValue) -> String {
  html_table_row_element_v_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_row_element_set_v_align_ffi(
  obj : JsValue,
  v_align : JsValue,
) -> Unit = "(obj, vAlign) => { obj.vAlign = vAlign; }"

///|
#cfg(target="js")
extern "js" fn html_table_row_element_bg_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.bgColor"

///|
#cfg(target="js")
fn html_table_row_element_bg_color_ffi(obj : JsValue) -> String {
  html_table_row_element_bg_color_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_row_element_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_new_ffi() -> HTMLTableRowElement = "webapi_HTMLTableRowElement" "new"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_row_index_ffi(obj : JsValue) -> Int = "webapi_HTMLTableRowElement" "get_rowIndex"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_section_row_index_ffi(obj : JsValue) -> Int = "webapi_HTMLTableRowElement" "get_sectionRowIndex"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_cells_ffi(obj : JsValue) -> HTMLCollection = "webapi_HTMLTableRowElement" "get_cells"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_insert_cell_ffi(
  obj : JsValue,
  index : JsValue,
) -> HTMLTableCellElement = "webapi_HTMLTableRowElement" "insertCell"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_delete_cell_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "webapi_HTMLTableRowElement" "deleteCell"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableRowElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_row_element_align_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_row_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLTableRowElement" "set_align"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_ch_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableRowElement" "get_ch"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_ch_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_row_element_ch_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_row_element_set_ch_ffi(obj : JsValue, ch : JsValue) -> Unit = "webapi_HTMLTableRowElement" "set_ch"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_ch_off_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableRowElement" "get_chOff"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_ch_off_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_row_element_ch_off_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_row_element_set_ch_off_ffi(
  obj : JsValue,
  ch_off : JsValue,
) -> Unit = "webapi_HTMLTableRowElement" "set_chOff"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_v_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableRowElement" "get_vAlign"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_v_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_row_element_v_align_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_row_element_set_v_align_ffi(
  obj : JsValue,
  v_align : JsValue,
) -> Unit = "webapi_HTMLTableRowElement" "set_vAlign"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_bg_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableRowElement" "get_bgColor"

///|
#cfg(target="wasm-gc")
fn html_table_row_element_bg_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_row_element_bg_color_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_row_element_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "webapi_HTMLTableRowElement" "set_bgColor"
