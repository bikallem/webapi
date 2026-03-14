// Do not edit. This file is generated.
// MoonBit type: HTMLTableCellElement
// Specifications: html.idl

/// [HTMLTableCellElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement)
#external
pub type HTMLTableCellElement

pub impl TJsValue for HTMLTableCellElement with to_js(self: HTMLTableCellElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLTableCellElement with from_js_any(value : JsAny) -> HTMLTableCellElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLTableCellElement] HTMLTableCellElement::into(self : HTMLTableCellElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLTableCellElement] HTMLTableCellElement::unsafe_into(self : HTMLTableCellElement) -> T = "%identity"

pub impl HasConstructor for HTMLTableCellElement with constructor_name() { "HTMLTableCellElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLTableCellElement + HasConstructor] HTMLTableCellElement::try_into(self : HTMLTableCellElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLTableCellElement for HTMLTableCellElement

pub impl THTMLElement for HTMLTableCellElement

pub impl TElement for HTMLTableCellElement

pub impl TNode for HTMLTableCellElement

pub impl TEventTarget for HTMLTableCellElement

pub fn HTMLTableCellElement::new() -> HTMLTableCellElement {
  html_table_cell_element_new_ffi()
}

/// [HTMLTableCellElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement) interface.
pub trait THTMLTableCellElement: THTMLElement {
  col_span(self : Self) -> UInt = _
  set_col_span(self : Self, col_span : UInt) -> Unit = _
  row_span(self : Self) -> UInt = _
  set_row_span(self : Self, row_span : UInt) -> Unit = _
  headers(self : Self) -> String = _
  set_headers(self : Self, headers : String) -> Unit = _
  cell_index(self : Self) -> Int = _
  scope(self : Self) -> String = _
  set_scope(self : Self, scope : String) -> Unit = _
  abbr(self : Self) -> String = _
  set_abbr(self : Self, abbr : String) -> Unit = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  axis(self : Self) -> String = _
  set_axis(self : Self, axis : String) -> Unit = _
  height(self : Self) -> String = _
  set_height(self : Self, height : String) -> Unit = _
  width(self : Self) -> String = _
  set_width(self : Self, width : String) -> Unit = _
  ch(self : Self) -> String = _
  set_ch(self : Self, ch : String) -> Unit = _
  ch_off(self : Self) -> String = _
  set_ch_off(self : Self, ch_off : String) -> Unit = _
  no_wrap(self : Self) -> Bool = _
  set_no_wrap(self : Self, no_wrap : Bool) -> Unit = _
  v_align(self : Self) -> String = _
  set_v_align(self : Self, v_align : String) -> Unit = _
  bg_color(self : Self) -> String = _
  set_bg_color(self : Self, bg_color : String) -> Unit = _
}

/// [HTMLTableCellElement.colSpan](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/colSpan)
impl THTMLTableCellElement with col_span(self : Self) -> UInt {
  html_table_cell_element_col_span_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.colSpan](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/colSpan)
impl THTMLTableCellElement with set_col_span(self : Self, 
col_span : UInt) -> Unit {
  html_table_cell_element_set_col_span_ffi(TJsValue::to_js(self), TJsValue::to_js(col_span))
}

/// [HTMLTableCellElement.rowSpan](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/rowSpan)
impl THTMLTableCellElement with row_span(self : Self) -> UInt {
  html_table_cell_element_row_span_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.rowSpan](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/rowSpan)
impl THTMLTableCellElement with set_row_span(self : Self, 
row_span : UInt) -> Unit {
  html_table_cell_element_set_row_span_ffi(TJsValue::to_js(self), TJsValue::to_js(row_span))
}

/// [HTMLTableCellElement.headers](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/headers)
impl THTMLTableCellElement with headers(self : Self) -> String {
  html_table_cell_element_headers_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.headers](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/headers)
impl THTMLTableCellElement with set_headers(self : Self, 
headers : String) -> Unit {
  html_table_cell_element_set_headers_ffi(TJsValue::to_js(self), TJsValue::to_js(headers))
}

/// [HTMLTableCellElement.cellIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/cellIndex)
impl THTMLTableCellElement with cell_index(self : Self) -> Int {
  html_table_cell_element_cell_index_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.scope](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/scope)
impl THTMLTableCellElement with scope(self : Self) -> String {
  html_table_cell_element_scope_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.scope](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/scope)
impl THTMLTableCellElement with set_scope(self : Self, 
scope : String) -> Unit {
  html_table_cell_element_set_scope_ffi(TJsValue::to_js(self), TJsValue::to_js(scope))
}

/// [HTMLTableCellElement.abbr](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/abbr)
impl THTMLTableCellElement with abbr(self : Self) -> String {
  html_table_cell_element_abbr_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.abbr](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/abbr)
impl THTMLTableCellElement with set_abbr(self : Self, 
abbr : String) -> Unit {
  html_table_cell_element_set_abbr_ffi(TJsValue::to_js(self), TJsValue::to_js(abbr))
}

/// [HTMLTableCellElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/align)
impl THTMLTableCellElement with align(self : Self) -> String {
  html_table_cell_element_align_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/align)
impl THTMLTableCellElement with set_align(self : Self, 
align : String) -> Unit {
  html_table_cell_element_set_align_ffi(TJsValue::to_js(self), TJsValue::to_js(align))
}

/// [HTMLTableCellElement.axis](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/axis)
impl THTMLTableCellElement with axis(self : Self) -> String {
  html_table_cell_element_axis_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.axis](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/axis)
impl THTMLTableCellElement with set_axis(self : Self, 
axis : String) -> Unit {
  html_table_cell_element_set_axis_ffi(TJsValue::to_js(self), TJsValue::to_js(axis))
}

/// [HTMLTableCellElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/height)
impl THTMLTableCellElement with height(self : Self) -> String {
  html_table_cell_element_height_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/height)
impl THTMLTableCellElement with set_height(self : Self, 
height : String) -> Unit {
  html_table_cell_element_set_height_ffi(TJsValue::to_js(self), TJsValue::to_js(height))
}

/// [HTMLTableCellElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/width)
impl THTMLTableCellElement with width(self : Self) -> String {
  html_table_cell_element_width_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/width)
impl THTMLTableCellElement with set_width(self : Self, 
width : String) -> Unit {
  html_table_cell_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

/// [HTMLTableCellElement.ch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/ch)
impl THTMLTableCellElement with ch(self : Self) -> String {
  html_table_cell_element_ch_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.ch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/ch)
impl THTMLTableCellElement with set_ch(self : Self, 
ch : String) -> Unit {
  html_table_cell_element_set_ch_ffi(TJsValue::to_js(self), TJsValue::to_js(ch))
}

/// [HTMLTableCellElement.chOff](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/chOff)
impl THTMLTableCellElement with ch_off(self : Self) -> String {
  html_table_cell_element_ch_off_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.chOff](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/chOff)
impl THTMLTableCellElement with set_ch_off(self : Self, 
ch_off : String) -> Unit {
  html_table_cell_element_set_ch_off_ffi(TJsValue::to_js(self), TJsValue::to_js(ch_off))
}

/// [HTMLTableCellElement.noWrap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/noWrap)
impl THTMLTableCellElement with no_wrap(self : Self) -> Bool {
  html_table_cell_element_no_wrap_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.noWrap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/noWrap)
impl THTMLTableCellElement with set_no_wrap(self : Self, 
no_wrap : Bool) -> Unit {
  html_table_cell_element_set_no_wrap_ffi(TJsValue::to_js(self), TJsValue::to_js(no_wrap))
}

/// [HTMLTableCellElement.vAlign](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/vAlign)
impl THTMLTableCellElement with v_align(self : Self) -> String {
  html_table_cell_element_v_align_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.vAlign](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/vAlign)
impl THTMLTableCellElement with set_v_align(self : Self, 
v_align : String) -> Unit {
  html_table_cell_element_set_v_align_ffi(TJsValue::to_js(self), TJsValue::to_js(v_align))
}

/// [HTMLTableCellElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/bgColor)
impl THTMLTableCellElement with bg_color(self : Self) -> String {
  html_table_cell_element_bg_color_ffi(TJsValue::to_js(self))
}

/// [HTMLTableCellElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement/bgColor)
impl THTMLTableCellElement with set_bg_color(self : Self, 
bg_color : String) -> Unit {
  html_table_cell_element_set_bg_color_ffi(TJsValue::to_js(self), TJsValue::to_js(bg_color))
}

#cfg(target="js")
extern "js" fn html_table_cell_element_new_ffi() -> HTMLTableCellElement = "() => new HTMLTableCellElement()"

#cfg(target="js")
extern "js" fn html_table_cell_element_col_span_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.colSpan"

///|
#cfg(target="js")
fn html_table_cell_element_col_span_ffi(obj: JsValue) -> UInt {
  html_table_cell_element_col_span_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_col_span_ffi(obj: JsValue, col_span: JsValue) -> Unit = "(obj, colSpan) => { obj.colSpan = colSpan; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_row_span_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rowSpan"

///|
#cfg(target="js")
fn html_table_cell_element_row_span_ffi(obj: JsValue) -> UInt {
  html_table_cell_element_row_span_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_row_span_ffi(obj: JsValue, row_span: JsValue) -> Unit = "(obj, rowSpan) => { obj.rowSpan = rowSpan; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_headers_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.headers"

///|
#cfg(target="js")
fn html_table_cell_element_headers_ffi(obj: JsValue) -> String {
  html_table_cell_element_headers_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_headers_ffi(obj: JsValue, headers: JsValue) -> Unit = "(obj, headers) => { obj.headers = headers; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_cell_index_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cellIndex"

///|
#cfg(target="js")
fn html_table_cell_element_cell_index_ffi(obj: JsValue) -> Int {
  html_table_cell_element_cell_index_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_scope_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.scope"

///|
#cfg(target="js")
fn html_table_cell_element_scope_ffi(obj: JsValue) -> String {
  html_table_cell_element_scope_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_scope_ffi(obj: JsValue, scope: JsValue) -> Unit = "(obj, scope) => { obj.scope = scope; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_abbr_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.abbr"

///|
#cfg(target="js")
fn html_table_cell_element_abbr_ffi(obj: JsValue) -> String {
  html_table_cell_element_abbr_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_abbr_ffi(obj: JsValue, abbr: JsValue) -> Unit = "(obj, abbr) => { obj.abbr = abbr; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_table_cell_element_align_ffi(obj: JsValue) -> String {
  html_table_cell_element_align_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_axis_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.axis"

///|
#cfg(target="js")
fn html_table_cell_element_axis_ffi(obj: JsValue) -> String {
  html_table_cell_element_axis_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_axis_ffi(obj: JsValue, axis: JsValue) -> Unit = "(obj, axis) => { obj.axis = axis; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn html_table_cell_element_height_ffi(obj: JsValue) -> String {
  html_table_cell_element_height_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn html_table_cell_element_width_ffi(obj: JsValue) -> String {
  html_table_cell_element_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_ch_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ch"

///|
#cfg(target="js")
fn html_table_cell_element_ch_ffi(obj: JsValue) -> String {
  html_table_cell_element_ch_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_ch_ffi(obj: JsValue, ch: JsValue) -> Unit = "(obj, ch) => { obj.ch = ch; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_ch_off_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.chOff"

///|
#cfg(target="js")
fn html_table_cell_element_ch_off_ffi(obj: JsValue) -> String {
  html_table_cell_element_ch_off_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_ch_off_ffi(obj: JsValue, ch_off: JsValue) -> Unit = "(obj, chOff) => { obj.chOff = chOff; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_no_wrap_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.noWrap"

///|
#cfg(target="js")
fn html_table_cell_element_no_wrap_ffi(obj: JsValue) -> Bool {
  html_table_cell_element_no_wrap_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_no_wrap_ffi(obj: JsValue, no_wrap: JsValue) -> Unit = "(obj, noWrap) => { obj.noWrap = noWrap; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_v_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.vAlign"

///|
#cfg(target="js")
fn html_table_cell_element_v_align_ffi(obj: JsValue) -> String {
  html_table_cell_element_v_align_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_v_align_ffi(obj: JsValue, v_align: JsValue) -> Unit = "(obj, vAlign) => { obj.vAlign = vAlign; }"

#cfg(target="js")
extern "js" fn html_table_cell_element_bg_color_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bgColor"

///|
#cfg(target="js")
fn html_table_cell_element_bg_color_ffi(obj: JsValue) -> String {
  html_table_cell_element_bg_color_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_table_cell_element_set_bg_color_ffi(obj: JsValue, bg_color: JsValue) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

#cfg(target="wasm-gc")
fn html_table_cell_element_new_ffi() -> HTMLTableCellElement = "webapi_HTMLTableCellElement" "new"

#cfg(target="wasm-gc")
fn html_table_cell_element_col_span_ffi(obj: JsValue) -> UInt = "webapi_HTMLTableCellElement" "get_colSpan"

#cfg(target="wasm-gc")
fn html_table_cell_element_set_col_span_ffi(obj: JsValue, col_span: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_colSpan"

#cfg(target="wasm-gc")
fn html_table_cell_element_row_span_ffi(obj: JsValue) -> UInt = "webapi_HTMLTableCellElement" "get_rowSpan"

#cfg(target="wasm-gc")
fn html_table_cell_element_set_row_span_ffi(obj: JsValue, row_span: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_rowSpan"

#cfg(target="wasm-gc")
fn html_table_cell_element_headers_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableCellElement" "get_headers"

///|
#cfg(target="wasm-gc")
fn html_table_cell_element_headers_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_cell_element_headers_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_table_cell_element_set_headers_ffi(obj: JsValue, headers: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_headers"

#cfg(target="wasm-gc")
fn html_table_cell_element_cell_index_ffi(obj: JsValue) -> Int = "webapi_HTMLTableCellElement" "get_cellIndex"

#cfg(target="wasm-gc")
fn html_table_cell_element_scope_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableCellElement" "get_scope"

///|
#cfg(target="wasm-gc")
fn html_table_cell_element_scope_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_cell_element_scope_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_table_cell_element_set_scope_ffi(obj: JsValue, scope: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_scope"

#cfg(target="wasm-gc")
fn html_table_cell_element_abbr_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableCellElement" "get_abbr"

///|
#cfg(target="wasm-gc")
fn html_table_cell_element_abbr_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_cell_element_abbr_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_table_cell_element_set_abbr_ffi(obj: JsValue, abbr: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_abbr"

#cfg(target="wasm-gc")
fn html_table_cell_element_align_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableCellElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_table_cell_element_align_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_cell_element_align_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_table_cell_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_align"

#cfg(target="wasm-gc")
fn html_table_cell_element_axis_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableCellElement" "get_axis"

///|
#cfg(target="wasm-gc")
fn html_table_cell_element_axis_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_cell_element_axis_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_table_cell_element_set_axis_ffi(obj: JsValue, axis: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_axis"

#cfg(target="wasm-gc")
fn html_table_cell_element_height_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableCellElement" "get_height"

///|
#cfg(target="wasm-gc")
fn html_table_cell_element_height_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_cell_element_height_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_table_cell_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_height"

#cfg(target="wasm-gc")
fn html_table_cell_element_width_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableCellElement" "get_width"

///|
#cfg(target="wasm-gc")
fn html_table_cell_element_width_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_cell_element_width_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_table_cell_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_width"

#cfg(target="wasm-gc")
fn html_table_cell_element_ch_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableCellElement" "get_ch"

///|
#cfg(target="wasm-gc")
fn html_table_cell_element_ch_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_cell_element_ch_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_table_cell_element_set_ch_ffi(obj: JsValue, ch: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_ch"

#cfg(target="wasm-gc")
fn html_table_cell_element_ch_off_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableCellElement" "get_chOff"

///|
#cfg(target="wasm-gc")
fn html_table_cell_element_ch_off_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_cell_element_ch_off_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_table_cell_element_set_ch_off_ffi(obj: JsValue, ch_off: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_chOff"

#cfg(target="wasm-gc")
fn html_table_cell_element_no_wrap_ffi(obj: JsValue) -> Bool = "webapi_HTMLTableCellElement" "get_noWrap"

#cfg(target="wasm-gc")
fn html_table_cell_element_set_no_wrap_ffi(obj: JsValue, no_wrap: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_noWrap"

#cfg(target="wasm-gc")
fn html_table_cell_element_v_align_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableCellElement" "get_vAlign"

///|
#cfg(target="wasm-gc")
fn html_table_cell_element_v_align_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_cell_element_v_align_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_table_cell_element_set_v_align_ffi(obj: JsValue, v_align: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_vAlign"

#cfg(target="wasm-gc")
fn html_table_cell_element_bg_color_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableCellElement" "get_bgColor"

///|
#cfg(target="wasm-gc")
fn html_table_cell_element_bg_color_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_cell_element_bg_color_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_table_cell_element_set_bg_color_ffi(obj: JsValue, bg_color: JsValue) -> Unit = "webapi_HTMLTableCellElement" "set_bgColor"