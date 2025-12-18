// Auto-generated MoonBit bindings for HTMLElement interface
// Do not edit manually

#external
pub type HTMLElement

pub impl TJsValue for HTMLElement with to_js(self: HTMLElement) -> JsValue = "%identity"


pub fn[T: THTMLElement] HTMLElement::into(self : HTMLElement) -> T = "%identity"
pub impl THTMLElement for HTMLElement

pub fn HTMLElement::new() -> HTMLElement = "webapi_HTMLElement" "new"

/// Union arg trait
pub(open) trait TTogglePopoverOptionsArg {
  to_js(self : Self) -> JsValue
}

pub impl TTogglePopoverOptionsArg for TogglePopoverOptions with to_js(self : TogglePopoverOptions) -> JsValue = "%identity"

pub impl TTogglePopoverOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"

pub trait THTMLElement: TJsValue + TTElement {
  title(self: Self) -> String = _
  set_title(self: Self, value : String) -> Unit = _
  lang(self: Self) -> String = _
  set_lang(self: Self, value : String) -> Unit = _
  translate(self: Self) -> Bool = _
  set_translate(self: Self, value : Bool) -> Unit = _
  dir(self: Self) -> String = _
  set_dir(self: Self, value : String) -> Unit = _
  hidden(self: Self) -> JsValue = _
  set_hidden(self: Self, value : JsValue) -> Unit = _
  inert(self: Self) -> Bool = _
  set_inert(self: Self, value : Bool) -> Unit = _
  click(self: Self) -> Unit = _
  access_key(self: Self) -> String = _
  set_access_key(self: Self, value : String) -> Unit = _
  access_key_label(self: Self) -> String = _
  draggable(self: Self) -> Bool = _
  set_draggable(self: Self, value : Bool) -> Unit = _
  spellcheck(self: Self) -> Bool = _
  set_spellcheck(self: Self, value : Bool) -> Unit = _
  writing_suggestions(self: Self) -> String = _
  set_writing_suggestions(self: Self, value : String) -> Unit = _
  autocapitalize(self: Self) -> String = _
  set_autocapitalize(self: Self, value : String) -> Unit = _
  autocorrect(self: Self) -> Bool = _
  set_autocorrect(self: Self, value : Bool) -> Unit = _
  inner_text(self: Self) -> String = _
  set_inner_text(self: Self, value : String) -> Unit = _
  outer_text(self: Self) -> String = _
  set_outer_text(self: Self, value : String) -> Unit = _
  attach_internals(self: Self) -> ElementInternals = _
  show_popover(self: Self, options? : ShowPopoverOptions) -> Unit = _
  hide_popover(self: Self) -> Unit = _
  toggle_popover(self: Self, options? : &TTogglePopoverOptionsArg) -> Bool = _
  popover(self: Self) -> String = _
  set_popover(self: Self, value : String) -> Unit = _
  heading_offset(self: Self) -> UInt = _
  set_heading_offset(self: Self, value : UInt) -> Unit = _
  heading_reset(self: Self) -> Bool = _
  set_heading_reset(self: Self, value : Bool) -> Unit = _
  scroll_parent(self: Self) -> &TElement = _
  offset_parent(self: Self) -> &TElement = _
  offset_top(self: Self) -> Int = _
  offset_left(self: Self) -> Int = _
  offset_width(self: Self) -> Int = _
  offset_height(self: Self) -> Int = _
}

///|
fn h_t_m_l_element_title_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "title"

///|
impl THTMLElement with title(self : Self) -> String {
  h_t_m_l_element_title_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_title_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_title"

///|
impl THTMLElement with set_title(self : Self, value : String) -> Unit {
  h_t_m_l_element_set_title_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_lang_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "lang"

///|
impl THTMLElement with lang(self : Self) -> String {
  h_t_m_l_element_lang_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_lang_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_lang"

///|
impl THTMLElement with set_lang(self : Self, value : String) -> Unit {
  h_t_m_l_element_set_lang_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_translate_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "translate"

///|
impl THTMLElement with translate(self : Self) -> Bool {
  h_t_m_l_element_translate_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_translate_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_translate"

///|
impl THTMLElement with set_translate(self : Self, value : Bool) -> Unit {
  h_t_m_l_element_set_translate_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_dir_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "dir"

///|
impl THTMLElement with dir(self : Self) -> String {
  h_t_m_l_element_dir_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_dir_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_dir"

///|
impl THTMLElement with set_dir(self : Self, value : String) -> Unit {
  h_t_m_l_element_set_dir_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_hidden_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "hidden"

///|
impl THTMLElement with hidden(self : Self) -> JsValue {
  h_t_m_l_element_hidden_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_hidden_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLElement" "set_hidden"

///|
impl THTMLElement with set_hidden(self : Self, value : JsValue) -> Unit {
  h_t_m_l_element_set_hidden_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_inert_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "inert"

///|
impl THTMLElement with inert(self : Self) -> Bool {
  h_t_m_l_element_inert_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_inert_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_inert"

///|
impl THTMLElement with set_inert(self : Self, value : Bool) -> Unit {
  h_t_m_l_element_set_inert_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_access_key_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "accessKey"

///|
impl THTMLElement with access_key(self : Self) -> String {
  h_t_m_l_element_access_key_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_access_key_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_accessKey"

///|
impl THTMLElement with set_access_key(self : Self, value : String) -> Unit {
  h_t_m_l_element_set_access_key_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_access_key_label_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "accessKeyLabel"

///|
impl THTMLElement with access_key_label(self : Self) -> String {
  h_t_m_l_element_access_key_label_ffi(self.to_js())
}

///|
fn h_t_m_l_element_draggable_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "draggable"

///|
impl THTMLElement with draggable(self : Self) -> Bool {
  h_t_m_l_element_draggable_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_draggable_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_draggable"

///|
impl THTMLElement with set_draggable(self : Self, value : Bool) -> Unit {
  h_t_m_l_element_set_draggable_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_spellcheck_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "spellcheck"

///|
impl THTMLElement with spellcheck(self : Self) -> Bool {
  h_t_m_l_element_spellcheck_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_spellcheck_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_spellcheck"

///|
impl THTMLElement with set_spellcheck(self : Self, value : Bool) -> Unit {
  h_t_m_l_element_set_spellcheck_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_writing_suggestions_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "writingSuggestions"

///|
impl THTMLElement with writing_suggestions(self : Self) -> String {
  h_t_m_l_element_writing_suggestions_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_writing_suggestions_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_writingSuggestions"

///|
impl THTMLElement with set_writing_suggestions(self : Self, value : String) -> Unit {
  h_t_m_l_element_set_writing_suggestions_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_autocapitalize_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "autocapitalize"

///|
impl THTMLElement with autocapitalize(self : Self) -> String {
  h_t_m_l_element_autocapitalize_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_autocapitalize_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_autocapitalize"

///|
impl THTMLElement with set_autocapitalize(self : Self, value : String) -> Unit {
  h_t_m_l_element_set_autocapitalize_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_autocorrect_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "autocorrect"

///|
impl THTMLElement with autocorrect(self : Self) -> Bool {
  h_t_m_l_element_autocorrect_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_autocorrect_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_autocorrect"

///|
impl THTMLElement with set_autocorrect(self : Self, value : Bool) -> Unit {
  h_t_m_l_element_set_autocorrect_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_inner_text_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "innerText"

///|
impl THTMLElement with inner_text(self : Self) -> String {
  h_t_m_l_element_inner_text_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_inner_text_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_innerText"

///|
impl THTMLElement with set_inner_text(self : Self, value : String) -> Unit {
  h_t_m_l_element_set_inner_text_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_outer_text_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "outerText"

///|
impl THTMLElement with outer_text(self : Self) -> String {
  h_t_m_l_element_outer_text_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_outer_text_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_outerText"

///|
impl THTMLElement with set_outer_text(self : Self, value : String) -> Unit {
  h_t_m_l_element_set_outer_text_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_popover_ffi(obj : JsValue) -> String = "webapi_HTMLElement" "popover"

///|
impl THTMLElement with popover(self : Self) -> String {
  h_t_m_l_element_popover_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_popover_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLElement" "set_popover"

///|
impl THTMLElement with set_popover(self : Self, value : String) -> Unit {
  h_t_m_l_element_set_popover_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_heading_offset_ffi(obj : JsValue) -> UInt = "webapi_HTMLElement" "headingOffset"

///|
impl THTMLElement with heading_offset(self : Self) -> UInt {
  h_t_m_l_element_heading_offset_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_heading_offset_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLElement" "set_headingOffset"

///|
impl THTMLElement with set_heading_offset(self : Self, value : UInt) -> Unit {
  h_t_m_l_element_set_heading_offset_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_heading_reset_ffi(obj : JsValue) -> Bool = "webapi_HTMLElement" "headingReset"

///|
impl THTMLElement with heading_reset(self : Self) -> Bool {
  h_t_m_l_element_heading_reset_ffi(self.to_js())
}

///|
fn h_t_m_l_element_set_heading_reset_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLElement" "set_headingReset"

///|
impl THTMLElement with set_heading_reset(self : Self, value : Bool) -> Unit {
  h_t_m_l_element_set_heading_reset_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_element_scroll_parent_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "scrollParent"

///|
impl THTMLElement with scroll_parent(self : Self) -> &TElement {
  h_t_m_l_element_scroll_parent_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_element_offset_parent_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "offsetParent"

///|
impl THTMLElement with offset_parent(self : Self) -> &TElement {
  h_t_m_l_element_offset_parent_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_element_offset_top_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "offsetTop"

///|
impl THTMLElement with offset_top(self : Self) -> Int {
  h_t_m_l_element_offset_top_ffi(self.to_js())
}

///|
fn h_t_m_l_element_offset_left_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "offsetLeft"

///|
impl THTMLElement with offset_left(self : Self) -> Int {
  h_t_m_l_element_offset_left_ffi(self.to_js())
}

///|
fn h_t_m_l_element_offset_width_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "offsetWidth"

///|
impl THTMLElement with offset_width(self : Self) -> Int {
  h_t_m_l_element_offset_width_ffi(self.to_js())
}

///|
fn h_t_m_l_element_offset_height_ffi(obj : JsValue) -> Int = "webapi_HTMLElement" "offsetHeight"

///|
impl THTMLElement with offset_height(self : Self) -> Int {
  h_t_m_l_element_offset_height_ffi(self.to_js())
}

///|
fn h_t_m_l_element_click_ffi(obj : JsValue) -> Unit = "webapi_HTMLElement" "click"

///|
impl THTMLElement with click(self : Self) -> Unit {
  h_t_m_l_element_click_ffi(self.to_js())
}

///|
fn h_t_m_l_element_attach_internals_ffi(obj : JsValue) -> JsValue = "webapi_HTMLElement" "attachInternals"

///|
impl THTMLElement with attach_internals(self : Self) -> ElementInternals {
  h_t_m_l_element_attach_internals_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_element_show_popover_ffi(obj : JsValue, options : JsValue) -> Unit = "webapi_HTMLElement" "showPopover"

///|
impl THTMLElement with show_popover(self : Self, options? : ShowPopoverOptions) -> Unit {
  h_t_m_l_element_show_popover_ffi(self.to_js(), TJsValue::to_js(options))
}

///|
fn h_t_m_l_element_hide_popover_ffi(obj : JsValue) -> Unit = "webapi_HTMLElement" "hidePopover"

///|
impl THTMLElement with hide_popover(self : Self) -> Unit {
  h_t_m_l_element_hide_popover_ffi(self.to_js())
}

///|
fn h_t_m_l_element_toggle_popover_ffi(obj : JsValue, options : JsValue) -> Bool = "webapi_HTMLElement" "togglePopover"

///|
impl THTMLElement with toggle_popover(self : Self, options? : &TTogglePopoverOptionsArg) -> Bool {
  h_t_m_l_element_toggle_popover_ffi(self.to_js(), options.to_js())
}