// Do not edit. This file is generated.
// MoonBit type: HTMLTextAreaElement
// Specifications: html.idl

/// [HTMLTextAreaElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement)
#external
pub type HTMLTextAreaElement

pub impl TJsValue for HTMLTextAreaElement with to_js(self: HTMLTextAreaElement) -> JsValue = "%identity"

pub fn[T: THTMLTextAreaElement] HTMLTextAreaElement::into(self : HTMLTextAreaElement) -> T = "%identity"

pub impl THTMLTextAreaElement for HTMLTextAreaElement

pub impl THTMLElement for HTMLTextAreaElement

pub impl TElement for HTMLTextAreaElement

pub impl TNode for HTMLTextAreaElement

pub impl TEventTarget for HTMLTextAreaElement

pub fn HTMLTextAreaElement::new() -> HTMLTextAreaElement {
  html_text_area_element_new_ffi()
}

/// [HTMLTextAreaElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement) interface.
pub trait THTMLTextAreaElement: THTMLElement {
  autocomplete(self : Self) -> String = _
  set_autocomplete(self : Self, autocomplete : String) -> Unit = _
  cols(self : Self) -> UInt = _
  set_cols(self : Self, cols : UInt) -> Unit = _
  dir_name(self : Self) -> String = _
  set_dir_name(self : Self, dir_name : String) -> Unit = _
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  form(self : Self) -> HTMLFormElement = _
  max_length(self : Self) -> Int = _
  set_max_length(self : Self, max_length : Int) -> Unit = _
  min_length(self : Self) -> Int = _
  set_min_length(self : Self, min_length : Int) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  placeholder(self : Self) -> String = _
  set_placeholder(self : Self, placeholder : String) -> Unit = _
  read_only(self : Self) -> Bool = _
  set_read_only(self : Self, read_only : Bool) -> Unit = _
  required(self : Self) -> Bool = _
  set_required(self : Self, required : Bool) -> Unit = _
  rows(self : Self) -> UInt = _
  set_rows(self : Self, rows : UInt) -> Unit = _
  wrap(self : Self) -> String = _
  set_wrap(self : Self, wrap : String) -> Unit = _
  type_(self : Self) -> String = _
  default_value(self : Self) -> String = _
  set_default_value(self : Self, default_value : String) -> Unit = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  text_length(self : Self) -> UInt = _
  will_validate(self : Self) -> Bool = _
  validity(self : Self) -> ValidityState = _
  validation_message(self : Self) -> String = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
  labels(self : Self) -> NodeList = _
  select(self : Self) -> Unit = _
  selection_start(self : Self) -> UInt = _
  set_selection_start(self : Self, selection_start : UInt) -> Unit = _
  selection_end(self : Self) -> UInt = _
  set_selection_end(self : Self, selection_end : UInt) -> Unit = _
  selection_direction(self : Self) -> String = _
  set_selection_direction(self : Self, selection_direction : String) -> Unit = _
  set_range_text(self : Self, replacement : String) -> Unit = _
  set_range_text_2(self : Self, replacement : String, start : UInt, end : UInt, selection_mode? : SelectionMode) -> Unit = _
  set_selection_range(self : Self, start : UInt, end : UInt, direction? : String) -> Unit = _
}

/// [HTMLTextAreaElement.autocomplete](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/autocomplete)
impl THTMLTextAreaElement with autocomplete(self : Self) -> String {
  html_text_area_element_autocomplete_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.autocomplete](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/autocomplete)
impl THTMLTextAreaElement with set_autocomplete(self : Self, 
autocomplete : String) -> Unit {
  html_text_area_element_set_autocomplete_ffi(TJsValue::to_js(self), TJsValue::to_js(autocomplete))
}

/// [HTMLTextAreaElement.cols](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/cols)
impl THTMLTextAreaElement with cols(self : Self) -> UInt {
  html_text_area_element_cols_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.cols](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/cols)
impl THTMLTextAreaElement with set_cols(self : Self, 
cols : UInt) -> Unit {
  html_text_area_element_set_cols_ffi(TJsValue::to_js(self), TJsValue::to_js(cols))
}

/// [HTMLTextAreaElement.dirName](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/dirName)
impl THTMLTextAreaElement with dir_name(self : Self) -> String {
  html_text_area_element_dir_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.dirName](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/dirName)
impl THTMLTextAreaElement with set_dir_name(self : Self, 
dir_name : String) -> Unit {
  html_text_area_element_set_dir_name_ffi(TJsValue::to_js(self), TJsValue::to_js(dir_name))
}

/// [HTMLTextAreaElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/disabled)
impl THTMLTextAreaElement with disabled(self : Self) -> Bool {
  html_text_area_element_disabled_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/disabled)
impl THTMLTextAreaElement with set_disabled(self : Self, 
disabled : Bool) -> Unit {
  html_text_area_element_set_disabled_ffi(TJsValue::to_js(self), TJsValue::to_js(disabled))
}

/// [HTMLTextAreaElement.form](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/form)
impl THTMLTextAreaElement with form(self : Self) -> HTMLFormElement {
  html_text_area_element_form_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.maxLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/maxLength)
impl THTMLTextAreaElement with max_length(self : Self) -> Int {
  html_text_area_element_max_length_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.maxLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/maxLength)
impl THTMLTextAreaElement with set_max_length(self : Self, 
max_length : Int) -> Unit {
  html_text_area_element_set_max_length_ffi(TJsValue::to_js(self), TJsValue::to_js(max_length))
}

/// [HTMLTextAreaElement.minLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/minLength)
impl THTMLTextAreaElement with min_length(self : Self) -> Int {
  html_text_area_element_min_length_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.minLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/minLength)
impl THTMLTextAreaElement with set_min_length(self : Self, 
min_length : Int) -> Unit {
  html_text_area_element_set_min_length_ffi(TJsValue::to_js(self), TJsValue::to_js(min_length))
}

/// [HTMLTextAreaElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/name)
impl THTMLTextAreaElement with name(self : Self) -> String {
  html_text_area_element_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/name)
impl THTMLTextAreaElement with set_name(self : Self, 
name : String) -> Unit {
  html_text_area_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLTextAreaElement.placeholder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/placeholder)
impl THTMLTextAreaElement with placeholder(self : Self) -> String {
  html_text_area_element_placeholder_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.placeholder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/placeholder)
impl THTMLTextAreaElement with set_placeholder(self : Self, 
placeholder : String) -> Unit {
  html_text_area_element_set_placeholder_ffi(TJsValue::to_js(self), TJsValue::to_js(placeholder))
}

/// [HTMLTextAreaElement.readOnly](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/readOnly)
impl THTMLTextAreaElement with read_only(self : Self) -> Bool {
  html_text_area_element_read_only_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.readOnly](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/readOnly)
impl THTMLTextAreaElement with set_read_only(self : Self, 
read_only : Bool) -> Unit {
  html_text_area_element_set_read_only_ffi(TJsValue::to_js(self), TJsValue::to_js(read_only))
}

/// [HTMLTextAreaElement.required](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/required)
impl THTMLTextAreaElement with required(self : Self) -> Bool {
  html_text_area_element_required_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.required](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/required)
impl THTMLTextAreaElement with set_required(self : Self, 
required : Bool) -> Unit {
  html_text_area_element_set_required_ffi(TJsValue::to_js(self), TJsValue::to_js(required))
}

/// [HTMLTextAreaElement.rows](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/rows)
impl THTMLTextAreaElement with rows(self : Self) -> UInt {
  html_text_area_element_rows_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.rows](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/rows)
impl THTMLTextAreaElement with set_rows(self : Self, 
rows : UInt) -> Unit {
  html_text_area_element_set_rows_ffi(TJsValue::to_js(self), TJsValue::to_js(rows))
}

/// [HTMLTextAreaElement.wrap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/wrap)
impl THTMLTextAreaElement with wrap(self : Self) -> String {
  html_text_area_element_wrap_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.wrap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/wrap)
impl THTMLTextAreaElement with set_wrap(self : Self, 
wrap : String) -> Unit {
  html_text_area_element_set_wrap_ffi(TJsValue::to_js(self), TJsValue::to_js(wrap))
}

/// [HTMLTextAreaElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/type)
impl THTMLTextAreaElement with type_(self : Self) -> String {
  html_text_area_element_type_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.defaultValue](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/defaultValue)
impl THTMLTextAreaElement with default_value(self : Self) -> String {
  html_text_area_element_default_value_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.defaultValue](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/defaultValue)
impl THTMLTextAreaElement with set_default_value(self : Self, 
default_value : String) -> Unit {
  html_text_area_element_set_default_value_ffi(TJsValue::to_js(self), TJsValue::to_js(default_value))
}

/// [HTMLTextAreaElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/value)
impl THTMLTextAreaElement with value(self : Self) -> String {
  html_text_area_element_value_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/value)
impl THTMLTextAreaElement with set_value(self : Self, 
value : String) -> Unit {
  html_text_area_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

/// [HTMLTextAreaElement.textLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/textLength)
impl THTMLTextAreaElement with text_length(self : Self) -> UInt {
  html_text_area_element_text_length_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.willValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/willValidate)
impl THTMLTextAreaElement with will_validate(self : Self) -> Bool {
  html_text_area_element_will_validate_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.validity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/validity)
impl THTMLTextAreaElement with validity(self : Self) -> ValidityState {
  html_text_area_element_validity_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.validationMessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/validationMessage)
impl THTMLTextAreaElement with validation_message(self : Self) -> String {
  html_text_area_element_validation_message_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.checkValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/checkValidity)
impl THTMLTextAreaElement with check_validity(self : Self) -> Bool {
  html_text_area_element_check_validity_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.reportValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/reportValidity)
impl THTMLTextAreaElement with report_validity(self : Self) -> Bool {
  html_text_area_element_report_validity_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.setCustomValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/setCustomValidity)
impl THTMLTextAreaElement with set_custom_validity(self : Self, 
error : String) -> Unit {
  html_text_area_element_set_custom_validity_ffi(TJsValue::to_js(self), TJsValue::to_js(error))
}

/// [HTMLTextAreaElement.labels](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/labels)
impl THTMLTextAreaElement with labels(self : Self) -> NodeList {
  html_text_area_element_labels_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.select](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/select)
impl THTMLTextAreaElement with select(self : Self) -> Unit {
  html_text_area_element_select_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.selectionStart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/selectionStart)
impl THTMLTextAreaElement with selection_start(self : Self) -> UInt {
  html_text_area_element_selection_start_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.selectionStart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/selectionStart)
impl THTMLTextAreaElement with set_selection_start(self : Self, 
selection_start : UInt) -> Unit {
  html_text_area_element_set_selection_start_ffi(TJsValue::to_js(self), TJsValue::to_js(selection_start))
}

/// [HTMLTextAreaElement.selectionEnd](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/selectionEnd)
impl THTMLTextAreaElement with selection_end(self : Self) -> UInt {
  html_text_area_element_selection_end_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.selectionEnd](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/selectionEnd)
impl THTMLTextAreaElement with set_selection_end(self : Self, 
selection_end : UInt) -> Unit {
  html_text_area_element_set_selection_end_ffi(TJsValue::to_js(self), TJsValue::to_js(selection_end))
}

/// [HTMLTextAreaElement.selectionDirection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/selectionDirection)
impl THTMLTextAreaElement with selection_direction(self : Self) -> String {
  html_text_area_element_selection_direction_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTextAreaElement.selectionDirection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/selectionDirection)
impl THTMLTextAreaElement with set_selection_direction(self : Self, 
selection_direction : String) -> Unit {
  html_text_area_element_set_selection_direction_ffi(TJsValue::to_js(self), TJsValue::to_js(selection_direction))
}

/// [HTMLTextAreaElement.setRangeText](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/setRangeText)
impl THTMLTextAreaElement with set_range_text(self : Self, 
replacement : String) -> Unit {
  html_text_area_element_set_range_text_ffi(TJsValue::to_js(self), TJsValue::to_js(replacement))
}

/// [HTMLTextAreaElement.setRangeText_2](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/setRangeText_2)
impl THTMLTextAreaElement with set_range_text_2(self : Self, 
replacement : String, 
start : UInt, 
end : UInt, 
selection_mode? : SelectionMode = SelectionMode::Preserve) -> Unit {
  html_text_area_element_set_range_text_2_ffi(TJsValue::to_js(self), TJsValue::to_js(replacement), TJsValue::to_js(start), TJsValue::to_js(end), TJsValue::to_js(selection_mode))
}

/// [HTMLTextAreaElement.setSelectionRange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/setSelectionRange)
impl THTMLTextAreaElement with set_selection_range(self : Self, 
start : UInt, 
end : UInt, 
direction? : String) -> Unit {
  html_text_area_element_set_selection_range_ffi(TJsValue::to_js(self), TJsValue::to_js(start), TJsValue::to_js(end), opt_to_js(direction))
}