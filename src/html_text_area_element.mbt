// Auto-generated MoonBit bindings for HTMLTextAreaElement interface
// Do not edit manually

#external
pub type HTMLTextAreaElement

pub impl TJsValue for HTMLTextAreaElement with to_js(self: HTMLTextAreaElement) -> JsValue = "%identity"


pub fn[T: THTMLTextAreaElement] HTMLTextAreaElement::into(self : HTMLTextAreaElement) -> T = "%identity"
pub impl THTMLTextAreaElement for HTMLTextAreaElement

pub fn HTMLTextAreaElement::new() -> HTMLTextAreaElement = "webapi_HTMLTextAreaElement" "new"

pub trait THTMLTextAreaElement: TJsValue + TTHTMLElement {
  autocomplete(self: Self) -> String = _
  set_autocomplete(self: Self, value : String) -> Unit = _
  cols(self: Self) -> UInt = _
  set_cols(self: Self, value : UInt) -> Unit = _
  dir_name(self: Self) -> String = _
  set_dir_name(self: Self, value : String) -> Unit = _
  disabled(self: Self) -> Bool = _
  set_disabled(self: Self, value : Bool) -> Unit = _
  form(self: Self) -> &THTMLFormElement = _
  max_length(self: Self) -> Int = _
  set_max_length(self: Self, value : Int) -> Unit = _
  min_length(self: Self) -> Int = _
  set_min_length(self: Self, value : Int) -> Unit = _
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  placeholder(self: Self) -> String = _
  set_placeholder(self: Self, value : String) -> Unit = _
  read_only(self: Self) -> Bool = _
  set_read_only(self: Self, value : Bool) -> Unit = _
  required(self: Self) -> Bool = _
  set_required(self: Self, value : Bool) -> Unit = _
  rows(self: Self) -> UInt = _
  set_rows(self: Self, value : UInt) -> Unit = _
  wrap(self: Self) -> String = _
  set_wrap(self: Self, value : String) -> Unit = _
  type_(self: Self) -> String = _
  default_value(self: Self) -> String = _
  set_default_value(self: Self, value : String) -> Unit = _
  value(self: Self) -> String = _
  set_value(self: Self, value : String) -> Unit = _
  text_length(self: Self) -> UInt = _
  will_validate(self: Self) -> Bool = _
  validity(self: Self) -> ValidityState = _
  validation_message(self: Self) -> String = _
  check_validity(self: Self) -> Bool = _
  report_validity(self: Self) -> Bool = _
  set_custom_validity(self: Self, error : String) -> Unit = _
  labels(self: Self) -> &TNodeList = _
  select(self: Self) -> Unit = _
  selection_start(self: Self) -> UInt = _
  set_selection_start(self: Self, value : UInt) -> Unit = _
  selection_end(self: Self) -> UInt = _
  set_selection_end(self: Self, value : UInt) -> Unit = _
  selection_direction(self: Self) -> String = _
  set_selection_direction(self: Self, value : String) -> Unit = _
  set_range_text(self: Self, replacement : String) -> Unit = _
  set_range_text(self: Self, replacement : String, start : UInt, end : UInt, selection_mode? : SelectionMode) -> Unit = _
  set_selection_range(self: Self, start : UInt, end : UInt, direction? : String) -> Unit = _
}

///|
fn html_text_area_element_autocomplete_ffi(obj : JsValue) -> String = "webapi_HTMLTextAreaElement" "autocomplete"

///|
impl THTMLTextAreaElement with autocomplete(self : Self) -> String {
  html_text_area_element_autocomplete_ffi(self.to_js())
}

///|
fn html_text_area_element_set_autocomplete_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTextAreaElement" "set_autocomplete"

///|
impl THTMLTextAreaElement with set_autocomplete(self : Self, value : String) -> Unit {
  html_text_area_element_set_autocomplete_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_cols_ffi(obj : JsValue) -> UInt = "webapi_HTMLTextAreaElement" "cols"

///|
impl THTMLTextAreaElement with cols(self : Self) -> UInt {
  html_text_area_element_cols_ffi(self.to_js())
}

///|
fn html_text_area_element_set_cols_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLTextAreaElement" "set_cols"

///|
impl THTMLTextAreaElement with set_cols(self : Self, value : UInt) -> Unit {
  html_text_area_element_set_cols_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_dir_name_ffi(obj : JsValue) -> String = "webapi_HTMLTextAreaElement" "dirName"

///|
impl THTMLTextAreaElement with dir_name(self : Self) -> String {
  html_text_area_element_dir_name_ffi(self.to_js())
}

///|
fn html_text_area_element_set_dir_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTextAreaElement" "set_dirName"

///|
impl THTMLTextAreaElement with set_dir_name(self : Self, value : String) -> Unit {
  html_text_area_element_set_dir_name_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLTextAreaElement" "disabled"

///|
impl THTMLTextAreaElement with disabled(self : Self) -> Bool {
  html_text_area_element_disabled_ffi(self.to_js())
}

///|
fn html_text_area_element_set_disabled_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLTextAreaElement" "set_disabled"

///|
impl THTMLTextAreaElement with set_disabled(self : Self, value : Bool) -> Unit {
  html_text_area_element_set_disabled_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_form_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "form"

///|
impl THTMLTextAreaElement with form(self : Self) -> &THTMLFormElement {
  html_text_area_element_form_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_text_area_element_max_length_ffi(obj : JsValue) -> Int = "webapi_HTMLTextAreaElement" "maxLength"

///|
impl THTMLTextAreaElement with max_length(self : Self) -> Int {
  html_text_area_element_max_length_ffi(self.to_js())
}

///|
fn html_text_area_element_set_max_length_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLTextAreaElement" "set_maxLength"

///|
impl THTMLTextAreaElement with set_max_length(self : Self, value : Int) -> Unit {
  html_text_area_element_set_max_length_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_min_length_ffi(obj : JsValue) -> Int = "webapi_HTMLTextAreaElement" "minLength"

///|
impl THTMLTextAreaElement with min_length(self : Self) -> Int {
  html_text_area_element_min_length_ffi(self.to_js())
}

///|
fn html_text_area_element_set_min_length_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLTextAreaElement" "set_minLength"

///|
impl THTMLTextAreaElement with set_min_length(self : Self, value : Int) -> Unit {
  html_text_area_element_set_min_length_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLTextAreaElement" "name"

///|
impl THTMLTextAreaElement with name(self : Self) -> String {
  html_text_area_element_name_ffi(self.to_js())
}

///|
fn html_text_area_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTextAreaElement" "set_name"

///|
impl THTMLTextAreaElement with set_name(self : Self, value : String) -> Unit {
  html_text_area_element_set_name_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_placeholder_ffi(obj : JsValue) -> String = "webapi_HTMLTextAreaElement" "placeholder"

///|
impl THTMLTextAreaElement with placeholder(self : Self) -> String {
  html_text_area_element_placeholder_ffi(self.to_js())
}

///|
fn html_text_area_element_set_placeholder_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTextAreaElement" "set_placeholder"

///|
impl THTMLTextAreaElement with set_placeholder(self : Self, value : String) -> Unit {
  html_text_area_element_set_placeholder_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_read_only_ffi(obj : JsValue) -> Bool = "webapi_HTMLTextAreaElement" "readOnly"

///|
impl THTMLTextAreaElement with read_only(self : Self) -> Bool {
  html_text_area_element_read_only_ffi(self.to_js())
}

///|
fn html_text_area_element_set_read_only_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLTextAreaElement" "set_readOnly"

///|
impl THTMLTextAreaElement with set_read_only(self : Self, value : Bool) -> Unit {
  html_text_area_element_set_read_only_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_required_ffi(obj : JsValue) -> Bool = "webapi_HTMLTextAreaElement" "required"

///|
impl THTMLTextAreaElement with required(self : Self) -> Bool {
  html_text_area_element_required_ffi(self.to_js())
}

///|
fn html_text_area_element_set_required_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLTextAreaElement" "set_required"

///|
impl THTMLTextAreaElement with set_required(self : Self, value : Bool) -> Unit {
  html_text_area_element_set_required_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_rows_ffi(obj : JsValue) -> UInt = "webapi_HTMLTextAreaElement" "rows"

///|
impl THTMLTextAreaElement with rows(self : Self) -> UInt {
  html_text_area_element_rows_ffi(self.to_js())
}

///|
fn html_text_area_element_set_rows_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLTextAreaElement" "set_rows"

///|
impl THTMLTextAreaElement with set_rows(self : Self, value : UInt) -> Unit {
  html_text_area_element_set_rows_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_wrap_ffi(obj : JsValue) -> String = "webapi_HTMLTextAreaElement" "wrap"

///|
impl THTMLTextAreaElement with wrap(self : Self) -> String {
  html_text_area_element_wrap_ffi(self.to_js())
}

///|
fn html_text_area_element_set_wrap_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTextAreaElement" "set_wrap"

///|
impl THTMLTextAreaElement with set_wrap(self : Self, value : String) -> Unit {
  html_text_area_element_set_wrap_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLTextAreaElement" "type"

///|
impl THTMLTextAreaElement with type_(self : Self) -> String {
  html_text_area_element_type_ffi(self.to_js())
}

///|
fn html_text_area_element_default_value_ffi(obj : JsValue) -> String = "webapi_HTMLTextAreaElement" "defaultValue"

///|
impl THTMLTextAreaElement with default_value(self : Self) -> String {
  html_text_area_element_default_value_ffi(self.to_js())
}

///|
fn html_text_area_element_set_default_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTextAreaElement" "set_defaultValue"

///|
impl THTMLTextAreaElement with set_default_value(self : Self, value : String) -> Unit {
  html_text_area_element_set_default_value_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_value_ffi(obj : JsValue) -> String = "webapi_HTMLTextAreaElement" "value"

///|
impl THTMLTextAreaElement with value(self : Self) -> String {
  html_text_area_element_value_ffi(self.to_js())
}

///|
fn html_text_area_element_set_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTextAreaElement" "set_value"

///|
impl THTMLTextAreaElement with set_value(self : Self, value : String) -> Unit {
  html_text_area_element_set_value_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_text_length_ffi(obj : JsValue) -> UInt = "webapi_HTMLTextAreaElement" "textLength"

///|
impl THTMLTextAreaElement with text_length(self : Self) -> UInt {
  html_text_area_element_text_length_ffi(self.to_js())
}

///|
fn html_text_area_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLTextAreaElement" "willValidate"

///|
impl THTMLTextAreaElement with will_validate(self : Self) -> Bool {
  html_text_area_element_will_validate_ffi(self.to_js())
}

///|
fn html_text_area_element_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "validity"

///|
impl THTMLTextAreaElement with validity(self : Self) -> ValidityState {
  html_text_area_element_validity_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_text_area_element_validation_message_ffi(obj : JsValue) -> String = "webapi_HTMLTextAreaElement" "validationMessage"

///|
impl THTMLTextAreaElement with validation_message(self : Self) -> String {
  html_text_area_element_validation_message_ffi(self.to_js())
}

///|
fn html_text_area_element_labels_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "labels"

///|
impl THTMLTextAreaElement with labels(self : Self) -> &TNodeList {
  html_text_area_element_labels_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_text_area_element_selection_start_ffi(obj : JsValue) -> UInt = "webapi_HTMLTextAreaElement" "selectionStart"

///|
impl THTMLTextAreaElement with selection_start(self : Self) -> UInt {
  html_text_area_element_selection_start_ffi(self.to_js())
}

///|
fn html_text_area_element_set_selection_start_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLTextAreaElement" "set_selectionStart"

///|
impl THTMLTextAreaElement with set_selection_start(self : Self, value : UInt) -> Unit {
  html_text_area_element_set_selection_start_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_selection_end_ffi(obj : JsValue) -> UInt = "webapi_HTMLTextAreaElement" "selectionEnd"

///|
impl THTMLTextAreaElement with selection_end(self : Self) -> UInt {
  html_text_area_element_selection_end_ffi(self.to_js())
}

///|
fn html_text_area_element_set_selection_end_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLTextAreaElement" "set_selectionEnd"

///|
impl THTMLTextAreaElement with set_selection_end(self : Self, value : UInt) -> Unit {
  html_text_area_element_set_selection_end_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_selection_direction_ffi(obj : JsValue) -> String = "webapi_HTMLTextAreaElement" "selectionDirection"

///|
impl THTMLTextAreaElement with selection_direction(self : Self) -> String {
  html_text_area_element_selection_direction_ffi(self.to_js())
}

///|
fn html_text_area_element_set_selection_direction_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTextAreaElement" "set_selectionDirection"

///|
impl THTMLTextAreaElement with set_selection_direction(self : Self, value : String) -> Unit {
  html_text_area_element_set_selection_direction_ffi(self.to_js(), value)
}

///|
fn html_text_area_element_check_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLTextAreaElement" "checkValidity"

///|
impl THTMLTextAreaElement with check_validity(self : Self) -> Bool {
  html_text_area_element_check_validity_ffi(self.to_js())
}

///|
fn html_text_area_element_report_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLTextAreaElement" "reportValidity"

///|
impl THTMLTextAreaElement with report_validity(self : Self) -> Bool {
  html_text_area_element_report_validity_ffi(self.to_js())
}

///|
fn html_text_area_element_set_custom_validity_ffi(obj : JsValue, error : JsValue) -> Unit = "webapi_HTMLTextAreaElement" "setCustomValidity"

///|
impl THTMLTextAreaElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_text_area_element_set_custom_validity_ffi(self.to_js(), TJsValue::to_js(error))
}

///|
fn html_text_area_element_select_ffi(obj : JsValue) -> Unit = "webapi_HTMLTextAreaElement" "select"

///|
impl THTMLTextAreaElement with select(self : Self) -> Unit {
  html_text_area_element_select_ffi(self.to_js())
}

///|
fn html_text_area_element_set_range_text_ffi(obj : JsValue, replacement : JsValue) -> Unit = "webapi_HTMLTextAreaElement" "setRangeText"

///|
impl THTMLTextAreaElement with set_range_text(self : Self, replacement : String) -> Unit {
  html_text_area_element_set_range_text_ffi(self.to_js(), TJsValue::to_js(replacement))
}

///|
fn html_text_area_element_set_range_text_ffi(obj : JsValue, replacement : JsValue, start : JsValue, end : JsValue, selection_mode : JsValue) -> Unit = "webapi_HTMLTextAreaElement" "setRangeText"

///|
impl THTMLTextAreaElement with set_range_text(self : Self, replacement : String, start : UInt, end : UInt, selection_mode? : SelectionMode) -> Unit {
  html_text_area_element_set_range_text_ffi(self.to_js(), TJsValue::to_js(replacement), TJsValue::to_js(start), TJsValue::to_js(end), TJsValue::to_js(selection_mode))
}

///|
fn html_text_area_element_set_selection_range_ffi(obj : JsValue, start : JsValue, end : JsValue, direction : JsValue) -> Unit = "webapi_HTMLTextAreaElement" "setSelectionRange"

///|
impl THTMLTextAreaElement with set_selection_range(self : Self, start : UInt, end : UInt, direction? : String) -> Unit {
  html_text_area_element_set_selection_range_ffi(self.to_js(), TJsValue::to_js(start), TJsValue::to_js(end), TJsValue::to_js(direction))
}