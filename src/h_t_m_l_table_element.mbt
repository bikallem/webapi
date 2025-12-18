// Auto-generated MoonBit bindings for HTMLTableElement interface
// Do not edit manually

#external
pub type HTMLTableElement

pub impl TJsValue for HTMLTableElement with to_js(self: HTMLTableElement) -> JsValue = "%identity"


pub fn[T: THTMLTableElement] HTMLTableElement::into(self : HTMLTableElement) -> T = "%identity"
pub impl THTMLTableElement for HTMLTableElement

pub fn HTMLTableElement::new() -> HTMLTableElement = "webapi_HTMLTableElement" "new"

pub trait THTMLTableElement: TJsValue + TTHTMLElement {
  caption(self: Self) -> &THTMLTableCaptionElement = _
  set_caption(self: Self, value : &THTMLTableCaptionElement) -> Unit = _
  create_caption(self: Self) -> &THTMLTableCaptionElement = _
  delete_caption(self: Self) -> Unit = _
  t_head(self: Self) -> &THTMLTableSectionElement = _
  set_t_head(self: Self, value : &THTMLTableSectionElement) -> Unit = _
  create_t_head(self: Self) -> &THTMLTableSectionElement = _
  delete_t_head(self: Self) -> Unit = _
  t_foot(self: Self) -> &THTMLTableSectionElement = _
  set_t_foot(self: Self, value : &THTMLTableSectionElement) -> Unit = _
  create_t_foot(self: Self) -> &THTMLTableSectionElement = _
  delete_t_foot(self: Self) -> Unit = _
  t_bodies(self: Self) -> &THTMLCollection = _
  create_t_body(self: Self) -> &THTMLTableSectionElement = _
  rows(self: Self) -> &THTMLCollection = _
  insert_row(self: Self, index? : Int) -> &THTMLTableRowElement = _
  delete_row(self: Self, index : Int) -> Unit = _
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
  border(self: Self) -> String = _
  set_border(self: Self, value : String) -> Unit = _
  frame(self: Self) -> String = _
  set_frame(self: Self, value : String) -> Unit = _
  rules(self: Self) -> String = _
  set_rules(self: Self, value : String) -> Unit = _
  summary(self: Self) -> String = _
  set_summary(self: Self, value : String) -> Unit = _
  width(self: Self) -> String = _
  set_width(self: Self, value : String) -> Unit = _
  bg_color(self: Self) -> String = _
  set_bg_color(self: Self, value : String) -> Unit = _
  cell_padding(self: Self) -> String = _
  set_cell_padding(self: Self, value : String) -> Unit = _
  cell_spacing(self: Self) -> String = _
  set_cell_spacing(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_table_element_caption_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "caption"

///|
impl THTMLTableElement with caption(self : Self) -> &THTMLTableCaptionElement {
  h_t_m_l_table_element_caption_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_table_element_set_caption_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLTableElement" "set_caption"

///|
impl THTMLTableElement with set_caption(self : Self, value : &THTMLTableCaptionElement) -> Unit {
  h_t_m_l_table_element_set_caption_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn h_t_m_l_table_element_t_head_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "tHead"

///|
impl THTMLTableElement with t_head(self : Self) -> &THTMLTableSectionElement {
  h_t_m_l_table_element_t_head_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_table_element_set_t_head_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLTableElement" "set_tHead"

///|
impl THTMLTableElement with set_t_head(self : Self, value : &THTMLTableSectionElement) -> Unit {
  h_t_m_l_table_element_set_t_head_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn h_t_m_l_table_element_t_foot_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "tFoot"

///|
impl THTMLTableElement with t_foot(self : Self) -> &THTMLTableSectionElement {
  h_t_m_l_table_element_t_foot_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_table_element_set_t_foot_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLTableElement" "set_tFoot"

///|
impl THTMLTableElement with set_t_foot(self : Self, value : &THTMLTableSectionElement) -> Unit {
  h_t_m_l_table_element_set_t_foot_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn h_t_m_l_table_element_t_bodies_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "tBodies"

///|
impl THTMLTableElement with t_bodies(self : Self) -> &THTMLCollection {
  h_t_m_l_table_element_t_bodies_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_table_element_rows_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "rows"

///|
impl THTMLTableElement with rows(self : Self) -> &THTMLCollection {
  h_t_m_l_table_element_rows_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_table_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLTableElement" "align"

///|
impl THTMLTableElement with align(self : Self) -> String {
  h_t_m_l_table_element_align_ffi(self.to_js())
}

///|
fn h_t_m_l_table_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableElement" "set_align"

///|
impl THTMLTableElement with set_align(self : Self, value : String) -> Unit {
  h_t_m_l_table_element_set_align_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_table_element_border_ffi(obj : JsValue) -> String = "webapi_HTMLTableElement" "border"

///|
impl THTMLTableElement with border(self : Self) -> String {
  h_t_m_l_table_element_border_ffi(self.to_js())
}

///|
fn h_t_m_l_table_element_set_border_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableElement" "set_border"

///|
impl THTMLTableElement with set_border(self : Self, value : String) -> Unit {
  h_t_m_l_table_element_set_border_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_table_element_frame_ffi(obj : JsValue) -> String = "webapi_HTMLTableElement" "frame"

///|
impl THTMLTableElement with frame(self : Self) -> String {
  h_t_m_l_table_element_frame_ffi(self.to_js())
}

///|
fn h_t_m_l_table_element_set_frame_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableElement" "set_frame"

///|
impl THTMLTableElement with set_frame(self : Self, value : String) -> Unit {
  h_t_m_l_table_element_set_frame_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_table_element_rules_ffi(obj : JsValue) -> String = "webapi_HTMLTableElement" "rules"

///|
impl THTMLTableElement with rules(self : Self) -> String {
  h_t_m_l_table_element_rules_ffi(self.to_js())
}

///|
fn h_t_m_l_table_element_set_rules_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableElement" "set_rules"

///|
impl THTMLTableElement with set_rules(self : Self, value : String) -> Unit {
  h_t_m_l_table_element_set_rules_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_table_element_summary_ffi(obj : JsValue) -> String = "webapi_HTMLTableElement" "summary"

///|
impl THTMLTableElement with summary(self : Self) -> String {
  h_t_m_l_table_element_summary_ffi(self.to_js())
}

///|
fn h_t_m_l_table_element_set_summary_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableElement" "set_summary"

///|
impl THTMLTableElement with set_summary(self : Self, value : String) -> Unit {
  h_t_m_l_table_element_set_summary_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_table_element_width_ffi(obj : JsValue) -> String = "webapi_HTMLTableElement" "width"

///|
impl THTMLTableElement with width(self : Self) -> String {
  h_t_m_l_table_element_width_ffi(self.to_js())
}

///|
fn h_t_m_l_table_element_set_width_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableElement" "set_width"

///|
impl THTMLTableElement with set_width(self : Self, value : String) -> Unit {
  h_t_m_l_table_element_set_width_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_table_element_bg_color_ffi(obj : JsValue) -> String = "webapi_HTMLTableElement" "bgColor"

///|
impl THTMLTableElement with bg_color(self : Self) -> String {
  h_t_m_l_table_element_bg_color_ffi(self.to_js())
}

///|
fn h_t_m_l_table_element_set_bg_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableElement" "set_bgColor"

///|
impl THTMLTableElement with set_bg_color(self : Self, value : String) -> Unit {
  h_t_m_l_table_element_set_bg_color_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_table_element_cell_padding_ffi(obj : JsValue) -> String = "webapi_HTMLTableElement" "cellPadding"

///|
impl THTMLTableElement with cell_padding(self : Self) -> String {
  h_t_m_l_table_element_cell_padding_ffi(self.to_js())
}

///|
fn h_t_m_l_table_element_set_cell_padding_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableElement" "set_cellPadding"

///|
impl THTMLTableElement with set_cell_padding(self : Self, value : String) -> Unit {
  h_t_m_l_table_element_set_cell_padding_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_table_element_cell_spacing_ffi(obj : JsValue) -> String = "webapi_HTMLTableElement" "cellSpacing"

///|
impl THTMLTableElement with cell_spacing(self : Self) -> String {
  h_t_m_l_table_element_cell_spacing_ffi(self.to_js())
}

///|
fn h_t_m_l_table_element_set_cell_spacing_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableElement" "set_cellSpacing"

///|
impl THTMLTableElement with set_cell_spacing(self : Self, value : String) -> Unit {
  h_t_m_l_table_element_set_cell_spacing_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_table_element_create_caption_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "createCaption"

///|
impl THTMLTableElement with create_caption(self : Self) -> &THTMLTableCaptionElement {
  h_t_m_l_table_element_create_caption_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_table_element_delete_caption_ffi(obj : JsValue) -> Unit = "webapi_HTMLTableElement" "deleteCaption"

///|
impl THTMLTableElement with delete_caption(self : Self) -> Unit {
  h_t_m_l_table_element_delete_caption_ffi(self.to_js())
}

///|
fn h_t_m_l_table_element_create_t_head_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "createTHead"

///|
impl THTMLTableElement with create_t_head(self : Self) -> &THTMLTableSectionElement {
  h_t_m_l_table_element_create_t_head_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_table_element_delete_t_head_ffi(obj : JsValue) -> Unit = "webapi_HTMLTableElement" "deleteTHead"

///|
impl THTMLTableElement with delete_t_head(self : Self) -> Unit {
  h_t_m_l_table_element_delete_t_head_ffi(self.to_js())
}

///|
fn h_t_m_l_table_element_create_t_foot_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "createTFoot"

///|
impl THTMLTableElement with create_t_foot(self : Self) -> &THTMLTableSectionElement {
  h_t_m_l_table_element_create_t_foot_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_table_element_delete_t_foot_ffi(obj : JsValue) -> Unit = "webapi_HTMLTableElement" "deleteTFoot"

///|
impl THTMLTableElement with delete_t_foot(self : Self) -> Unit {
  h_t_m_l_table_element_delete_t_foot_ffi(self.to_js())
}

///|
fn h_t_m_l_table_element_create_t_body_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "createTBody"

///|
impl THTMLTableElement with create_t_body(self : Self) -> &THTMLTableSectionElement {
  h_t_m_l_table_element_create_t_body_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_table_element_insert_row_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_HTMLTableElement" "insertRow"

///|
impl THTMLTableElement with insert_row(self : Self, index? : Int) -> &THTMLTableRowElement {
  h_t_m_l_table_element_insert_row_ffi(self.to_js(), TJsValue::to_js(index)).unsafe_cast()
}

///|
fn h_t_m_l_table_element_delete_row_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_HTMLTableElement" "deleteRow"

///|
impl THTMLTableElement with delete_row(self : Self, index : Int) -> Unit {
  h_t_m_l_table_element_delete_row_ffi(self.to_js(), TJsValue::to_js(index))
}