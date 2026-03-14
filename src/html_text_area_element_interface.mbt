// Do not edit. This file is generated.
// MoonBit type: HTMLTextAreaElement
// Specifications: html.idl

/// [HTMLTextAreaElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement)
#external
pub type HTMLTextAreaElement

pub impl TJsValue for HTMLTextAreaElement with to_js(self: HTMLTextAreaElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLTextAreaElement with from_js_any(value : JsAny) -> HTMLTextAreaElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLTextAreaElement] HTMLTextAreaElement::into(self : HTMLTextAreaElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLTextAreaElement] HTMLTextAreaElement::unsafe_into(self : HTMLTextAreaElement) -> T = "%identity"

pub impl HasConstructor for HTMLTextAreaElement with constructor_name() { "HTMLTextAreaElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLTextAreaElement + HasConstructor] HTMLTextAreaElement::try_into(self : HTMLTextAreaElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
  set_range_text_in_range(self : Self, replacement : String, start : UInt, end : UInt, selection_mode? : SelectionMode) -> Unit = _
  set_selection_range(self : Self, start : UInt, end : UInt, direction? : String) -> Unit = _
}

/// [HTMLTextAreaElement.autocomplete](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/autocomplete)
impl THTMLTextAreaElement with autocomplete(self : Self) -> String {
  html_text_area_element_autocomplete_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.autocomplete](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/autocomplete)
impl THTMLTextAreaElement with set_autocomplete(self : Self, 
autocomplete : String) -> Unit {
  html_text_area_element_set_autocomplete_ffi(TJsValue::to_js(self), TJsValue::to_js(autocomplete))
}

/// [HTMLTextAreaElement.cols](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/cols)
impl THTMLTextAreaElement with cols(self : Self) -> UInt {
  html_text_area_element_cols_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.cols](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/cols)
impl THTMLTextAreaElement with set_cols(self : Self, 
cols : UInt) -> Unit {
  html_text_area_element_set_cols_ffi(TJsValue::to_js(self), TJsValue::to_js(cols))
}

/// [HTMLTextAreaElement.dirName](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/dirName)
impl THTMLTextAreaElement with dir_name(self : Self) -> String {
  html_text_area_element_dir_name_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.dirName](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/dirName)
impl THTMLTextAreaElement with set_dir_name(self : Self, 
dir_name : String) -> Unit {
  html_text_area_element_set_dir_name_ffi(TJsValue::to_js(self), TJsValue::to_js(dir_name))
}

/// [HTMLTextAreaElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/disabled)
impl THTMLTextAreaElement with disabled(self : Self) -> Bool {
  html_text_area_element_disabled_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/disabled)
impl THTMLTextAreaElement with set_disabled(self : Self, 
disabled : Bool) -> Unit {
  html_text_area_element_set_disabled_ffi(TJsValue::to_js(self), TJsValue::to_js(disabled))
}

/// [HTMLTextAreaElement.form](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/form)
impl THTMLTextAreaElement with form(self : Self) -> HTMLFormElement {
  html_text_area_element_form_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.maxLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/maxLength)
impl THTMLTextAreaElement with max_length(self : Self) -> Int {
  html_text_area_element_max_length_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.maxLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/maxLength)
impl THTMLTextAreaElement with set_max_length(self : Self, 
max_length : Int) -> Unit {
  html_text_area_element_set_max_length_ffi(TJsValue::to_js(self), TJsValue::to_js(max_length))
}

/// [HTMLTextAreaElement.minLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/minLength)
impl THTMLTextAreaElement with min_length(self : Self) -> Int {
  html_text_area_element_min_length_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.minLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/minLength)
impl THTMLTextAreaElement with set_min_length(self : Self, 
min_length : Int) -> Unit {
  html_text_area_element_set_min_length_ffi(TJsValue::to_js(self), TJsValue::to_js(min_length))
}

/// [HTMLTextAreaElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/name)
impl THTMLTextAreaElement with name(self : Self) -> String {
  html_text_area_element_name_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/name)
impl THTMLTextAreaElement with set_name(self : Self, 
name : String) -> Unit {
  html_text_area_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLTextAreaElement.placeholder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/placeholder)
impl THTMLTextAreaElement with placeholder(self : Self) -> String {
  html_text_area_element_placeholder_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.placeholder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/placeholder)
impl THTMLTextAreaElement with set_placeholder(self : Self, 
placeholder : String) -> Unit {
  html_text_area_element_set_placeholder_ffi(TJsValue::to_js(self), TJsValue::to_js(placeholder))
}

/// [HTMLTextAreaElement.readOnly](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/readOnly)
impl THTMLTextAreaElement with read_only(self : Self) -> Bool {
  html_text_area_element_read_only_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.readOnly](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/readOnly)
impl THTMLTextAreaElement with set_read_only(self : Self, 
read_only : Bool) -> Unit {
  html_text_area_element_set_read_only_ffi(TJsValue::to_js(self), TJsValue::to_js(read_only))
}

/// [HTMLTextAreaElement.required](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/required)
impl THTMLTextAreaElement with required(self : Self) -> Bool {
  html_text_area_element_required_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.required](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/required)
impl THTMLTextAreaElement with set_required(self : Self, 
required : Bool) -> Unit {
  html_text_area_element_set_required_ffi(TJsValue::to_js(self), TJsValue::to_js(required))
}

/// [HTMLTextAreaElement.rows](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/rows)
impl THTMLTextAreaElement with rows(self : Self) -> UInt {
  html_text_area_element_rows_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.rows](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/rows)
impl THTMLTextAreaElement with set_rows(self : Self, 
rows : UInt) -> Unit {
  html_text_area_element_set_rows_ffi(TJsValue::to_js(self), TJsValue::to_js(rows))
}

/// [HTMLTextAreaElement.wrap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/wrap)
impl THTMLTextAreaElement with wrap(self : Self) -> String {
  html_text_area_element_wrap_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.wrap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/wrap)
impl THTMLTextAreaElement with set_wrap(self : Self, 
wrap : String) -> Unit {
  html_text_area_element_set_wrap_ffi(TJsValue::to_js(self), TJsValue::to_js(wrap))
}

/// [HTMLTextAreaElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/type)
impl THTMLTextAreaElement with type_(self : Self) -> String {
  html_text_area_element_type_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.defaultValue](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/defaultValue)
impl THTMLTextAreaElement with default_value(self : Self) -> String {
  html_text_area_element_default_value_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.defaultValue](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/defaultValue)
impl THTMLTextAreaElement with set_default_value(self : Self, 
default_value : String) -> Unit {
  html_text_area_element_set_default_value_ffi(TJsValue::to_js(self), TJsValue::to_js(default_value))
}

/// [HTMLTextAreaElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/value)
impl THTMLTextAreaElement with value(self : Self) -> String {
  html_text_area_element_value_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/value)
impl THTMLTextAreaElement with set_value(self : Self, 
value : String) -> Unit {
  html_text_area_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

/// [HTMLTextAreaElement.textLength](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/textLength)
impl THTMLTextAreaElement with text_length(self : Self) -> UInt {
  html_text_area_element_text_length_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.willValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/willValidate)
impl THTMLTextAreaElement with will_validate(self : Self) -> Bool {
  html_text_area_element_will_validate_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.validity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/validity)
impl THTMLTextAreaElement with validity(self : Self) -> ValidityState {
  html_text_area_element_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.validationMessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/validationMessage)
impl THTMLTextAreaElement with validation_message(self : Self) -> String {
  html_text_area_element_validation_message_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.checkValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/checkValidity)
impl THTMLTextAreaElement with check_validity(self : Self) -> Bool {
  html_text_area_element_check_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.reportValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/reportValidity)
impl THTMLTextAreaElement with report_validity(self : Self) -> Bool {
  html_text_area_element_report_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.setCustomValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/setCustomValidity)
impl THTMLTextAreaElement with set_custom_validity(self : Self, 
error : String) -> Unit {
  html_text_area_element_set_custom_validity_ffi(TJsValue::to_js(self), TJsValue::to_js(error))
}

/// [HTMLTextAreaElement.labels](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/labels)
impl THTMLTextAreaElement with labels(self : Self) -> NodeList {
  html_text_area_element_labels_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.select](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/select)
impl THTMLTextAreaElement with select(self : Self) -> Unit {
  html_text_area_element_select_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.selectionStart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/selectionStart)
impl THTMLTextAreaElement with selection_start(self : Self) -> UInt {
  html_text_area_element_selection_start_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.selectionStart](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/selectionStart)
impl THTMLTextAreaElement with set_selection_start(self : Self, 
selection_start : UInt) -> Unit {
  html_text_area_element_set_selection_start_ffi(TJsValue::to_js(self), TJsValue::to_js(selection_start))
}

/// [HTMLTextAreaElement.selectionEnd](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/selectionEnd)
impl THTMLTextAreaElement with selection_end(self : Self) -> UInt {
  html_text_area_element_selection_end_ffi(TJsValue::to_js(self))
}

/// [HTMLTextAreaElement.selectionEnd](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/selectionEnd)
impl THTMLTextAreaElement with set_selection_end(self : Self, 
selection_end : UInt) -> Unit {
  html_text_area_element_set_selection_end_ffi(TJsValue::to_js(self), TJsValue::to_js(selection_end))
}

/// [HTMLTextAreaElement.selectionDirection](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/selectionDirection)
impl THTMLTextAreaElement with selection_direction(self : Self) -> String {
  html_text_area_element_selection_direction_ffi(TJsValue::to_js(self))
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

/// [HTMLTextAreaElement.setRangeText](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/setRangeText)
impl THTMLTextAreaElement with set_range_text_in_range(self : Self, 
replacement : String, 
start : UInt, 
end : UInt, 
selection_mode? : SelectionMode) -> Unit {
  html_text_area_element_set_range_text_in_range_ffi(TJsValue::to_js(self), TJsValue::to_js(replacement), TJsValue::to_js(start), TJsValue::to_js(end), opt_to_js(selection_mode))
}

/// [HTMLTextAreaElement.setSelectionRange](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement/setSelectionRange)
impl THTMLTextAreaElement with set_selection_range(self : Self, 
start : UInt, 
end : UInt, 
direction? : String) -> Unit {
  html_text_area_element_set_selection_range_ffi(TJsValue::to_js(self), TJsValue::to_js(start), TJsValue::to_js(end), opt_to_js(direction))
}

#cfg(target="js")
extern "js" fn html_text_area_element_new_ffi() -> HTMLTextAreaElement = "() => new HTMLTextAreaElement()"

#cfg(target="js")
extern "js" fn html_text_area_element_autocomplete_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.autocomplete"

///|
#cfg(target="js")
fn html_text_area_element_autocomplete_ffi(obj: JsValue) -> String {
  html_text_area_element_autocomplete_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_autocomplete_ffi(obj: JsValue, autocomplete: JsValue) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

#cfg(target="js")
extern "js" fn html_text_area_element_cols_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cols"

///|
#cfg(target="js")
fn html_text_area_element_cols_ffi(obj: JsValue) -> UInt {
  html_text_area_element_cols_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_cols_ffi(obj: JsValue, cols: JsValue) -> Unit = "(obj, cols) => { obj.cols = cols; }"

#cfg(target="js")
extern "js" fn html_text_area_element_dir_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.dirName"

///|
#cfg(target="js")
fn html_text_area_element_dir_name_ffi(obj: JsValue) -> String {
  html_text_area_element_dir_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_dir_name_ffi(obj: JsValue, dir_name: JsValue) -> Unit = "(obj, dirName) => { obj.dirName = dirName; }"

#cfg(target="js")
extern "js" fn html_text_area_element_disabled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.disabled"

///|
#cfg(target="js")
fn html_text_area_element_disabled_ffi(obj: JsValue) -> Bool {
  html_text_area_element_disabled_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

#cfg(target="js")
extern "js" fn html_text_area_element_form_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.form"

///|
#cfg(target="js")
fn html_text_area_element_form_ffi(obj: JsValue) -> HTMLFormElement {
  html_text_area_element_form_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_max_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.maxLength"

///|
#cfg(target="js")
fn html_text_area_element_max_length_ffi(obj: JsValue) -> Int {
  html_text_area_element_max_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_max_length_ffi(obj: JsValue, max_length: JsValue) -> Unit = "(obj, maxLength) => { obj.maxLength = maxLength; }"

#cfg(target="js")
extern "js" fn html_text_area_element_min_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.minLength"

///|
#cfg(target="js")
fn html_text_area_element_min_length_ffi(obj: JsValue) -> Int {
  html_text_area_element_min_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_min_length_ffi(obj: JsValue, min_length: JsValue) -> Unit = "(obj, minLength) => { obj.minLength = minLength; }"

#cfg(target="js")
extern "js" fn html_text_area_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_text_area_element_name_ffi(obj: JsValue) -> String {
  html_text_area_element_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

#cfg(target="js")
extern "js" fn html_text_area_element_placeholder_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.placeholder"

///|
#cfg(target="js")
fn html_text_area_element_placeholder_ffi(obj: JsValue) -> String {
  html_text_area_element_placeholder_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_placeholder_ffi(obj: JsValue, placeholder: JsValue) -> Unit = "(obj, placeholder) => { obj.placeholder = placeholder; }"

#cfg(target="js")
extern "js" fn html_text_area_element_read_only_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.readOnly"

///|
#cfg(target="js")
fn html_text_area_element_read_only_ffi(obj: JsValue) -> Bool {
  html_text_area_element_read_only_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_read_only_ffi(obj: JsValue, read_only: JsValue) -> Unit = "(obj, readOnly) => { obj.readOnly = readOnly; }"

#cfg(target="js")
extern "js" fn html_text_area_element_required_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.required"

///|
#cfg(target="js")
fn html_text_area_element_required_ffi(obj: JsValue) -> Bool {
  html_text_area_element_required_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_required_ffi(obj: JsValue, required: JsValue) -> Unit = "(obj, required) => { obj.required = required; }"

#cfg(target="js")
extern "js" fn html_text_area_element_rows_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rows"

///|
#cfg(target="js")
fn html_text_area_element_rows_ffi(obj: JsValue) -> UInt {
  html_text_area_element_rows_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_rows_ffi(obj: JsValue, rows: JsValue) -> Unit = "(obj, rows) => { obj.rows = rows; }"

#cfg(target="js")
extern "js" fn html_text_area_element_wrap_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.wrap"

///|
#cfg(target="js")
fn html_text_area_element_wrap_ffi(obj: JsValue) -> String {
  html_text_area_element_wrap_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_wrap_ffi(obj: JsValue, wrap: JsValue) -> Unit = "(obj, wrap) => { obj.wrap = wrap; }"

#cfg(target="js")
extern "js" fn html_text_area_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_text_area_element_type_ffi(obj: JsValue) -> String {
  html_text_area_element_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_default_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.defaultValue"

///|
#cfg(target="js")
fn html_text_area_element_default_value_ffi(obj: JsValue) -> String {
  html_text_area_element_default_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_default_value_ffi(obj: JsValue, default_value: JsValue) -> Unit = "(obj, defaultValue) => { obj.defaultValue = defaultValue; }"

#cfg(target="js")
extern "js" fn html_text_area_element_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn html_text_area_element_value_ffi(obj: JsValue) -> String {
  html_text_area_element_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

#cfg(target="js")
extern "js" fn html_text_area_element_text_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.textLength"

///|
#cfg(target="js")
fn html_text_area_element_text_length_ffi(obj: JsValue) -> UInt {
  html_text_area_element_text_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_will_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.willValidate"

///|
#cfg(target="js")
fn html_text_area_element_will_validate_ffi(obj: JsValue) -> Bool {
  html_text_area_element_will_validate_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validity"

///|
#cfg(target="js")
fn html_text_area_element_validity_ffi(obj: JsValue) -> ValidityState {
  html_text_area_element_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_validation_message_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validationMessage"

///|
#cfg(target="js")
fn html_text_area_element_validation_message_ffi(obj: JsValue) -> String {
  html_text_area_element_validation_message_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_check_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
#cfg(target="js")
fn html_text_area_element_check_validity_ffi(obj: JsValue) -> Bool {
  html_text_area_element_check_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_report_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

///|
#cfg(target="js")
fn html_text_area_element_report_validity_ffi(obj: JsValue) -> Bool {
  html_text_area_element_report_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

#cfg(target="js")
extern "js" fn html_text_area_element_labels_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.labels"

///|
#cfg(target="js")
fn html_text_area_element_labels_ffi(obj: JsValue) -> NodeList {
  html_text_area_element_labels_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_select_ffi(obj: JsValue) -> Unit = "(obj) => obj.select()"

#cfg(target="js")
extern "js" fn html_text_area_element_selection_start_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectionStart"

///|
#cfg(target="js")
fn html_text_area_element_selection_start_ffi(obj: JsValue) -> UInt {
  html_text_area_element_selection_start_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_selection_start_ffi(obj: JsValue, selection_start: JsValue) -> Unit = "(obj, selectionStart) => { obj.selectionStart = selectionStart; }"

#cfg(target="js")
extern "js" fn html_text_area_element_selection_end_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectionEnd"

///|
#cfg(target="js")
fn html_text_area_element_selection_end_ffi(obj: JsValue) -> UInt {
  html_text_area_element_selection_end_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_selection_end_ffi(obj: JsValue, selection_end: JsValue) -> Unit = "(obj, selectionEnd) => { obj.selectionEnd = selectionEnd; }"

#cfg(target="js")
extern "js" fn html_text_area_element_selection_direction_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectionDirection"

///|
#cfg(target="js")
fn html_text_area_element_selection_direction_ffi(obj: JsValue) -> String {
  html_text_area_element_selection_direction_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_text_area_element_set_selection_direction_ffi(obj: JsValue, selection_direction: JsValue) -> Unit = "(obj, selectionDirection) => { obj.selectionDirection = selectionDirection; }"

#cfg(target="js")
extern "js" fn html_text_area_element_set_range_text_ffi(obj: JsValue, replacement: JsValue) -> Unit = "(obj, replacement) => obj.setRangeText(replacement)"

#cfg(target="js")
extern "js" fn html_text_area_element_set_range_text_in_range_ffi(obj: JsValue, replacement: JsValue, start: JsValue, end: JsValue, selection_mode: JsValue) -> Unit = "(obj, replacement, start, end, selection_mode) => obj.setRangeText(replacement, start, end, selection_mode)"

#cfg(target="js")
extern "js" fn html_text_area_element_set_selection_range_ffi(obj: JsValue, start: JsValue, end: JsValue, direction: JsValue) -> Unit = "(obj, start, end, direction) => obj.setSelectionRange(start, end, direction)"

#cfg(target="wasm-gc")
fn html_text_area_element_new_ffi() -> HTMLTextAreaElement = "webapi_HTMLTextAreaElement" "new"

#cfg(target="wasm-gc")
fn html_text_area_element_autocomplete_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_autocomplete"

///|
#cfg(target="wasm-gc")
fn html_text_area_element_autocomplete_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_text_area_element_autocomplete_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_text_area_element_set_autocomplete_ffi(obj: JsValue, autocomplete: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_autocomplete"

#cfg(target="wasm-gc")
fn html_text_area_element_cols_ffi(obj: JsValue) -> UInt = "webapi_HTMLTextAreaElement" "get_cols"

#cfg(target="wasm-gc")
fn html_text_area_element_set_cols_ffi(obj: JsValue, cols: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_cols"

#cfg(target="wasm-gc")
fn html_text_area_element_dir_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_dirName"

///|
#cfg(target="wasm-gc")
fn html_text_area_element_dir_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_text_area_element_dir_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_text_area_element_set_dir_name_ffi(obj: JsValue, dir_name: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_dirName"

#cfg(target="wasm-gc")
fn html_text_area_element_disabled_ffi(obj: JsValue) -> Bool = "webapi_HTMLTextAreaElement" "get_disabled"

#cfg(target="wasm-gc")
fn html_text_area_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_disabled"

#cfg(target="wasm-gc")
fn html_text_area_element_form_ffi(obj: JsValue) -> HTMLFormElement = "webapi_HTMLTextAreaElement" "get_form"

#cfg(target="wasm-gc")
fn html_text_area_element_max_length_ffi(obj: JsValue) -> Int = "webapi_HTMLTextAreaElement" "get_maxLength"

#cfg(target="wasm-gc")
fn html_text_area_element_set_max_length_ffi(obj: JsValue, max_length: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_maxLength"

#cfg(target="wasm-gc")
fn html_text_area_element_min_length_ffi(obj: JsValue) -> Int = "webapi_HTMLTextAreaElement" "get_minLength"

#cfg(target="wasm-gc")
fn html_text_area_element_set_min_length_ffi(obj: JsValue, min_length: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_minLength"

#cfg(target="wasm-gc")
fn html_text_area_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_text_area_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_text_area_element_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_text_area_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_name"

#cfg(target="wasm-gc")
fn html_text_area_element_placeholder_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_placeholder"

///|
#cfg(target="wasm-gc")
fn html_text_area_element_placeholder_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_text_area_element_placeholder_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_text_area_element_set_placeholder_ffi(obj: JsValue, placeholder: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_placeholder"

#cfg(target="wasm-gc")
fn html_text_area_element_read_only_ffi(obj: JsValue) -> Bool = "webapi_HTMLTextAreaElement" "get_readOnly"

#cfg(target="wasm-gc")
fn html_text_area_element_set_read_only_ffi(obj: JsValue, read_only: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_readOnly"

#cfg(target="wasm-gc")
fn html_text_area_element_required_ffi(obj: JsValue) -> Bool = "webapi_HTMLTextAreaElement" "get_required"

#cfg(target="wasm-gc")
fn html_text_area_element_set_required_ffi(obj: JsValue, required: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_required"

#cfg(target="wasm-gc")
fn html_text_area_element_rows_ffi(obj: JsValue) -> UInt = "webapi_HTMLTextAreaElement" "get_rows"

#cfg(target="wasm-gc")
fn html_text_area_element_set_rows_ffi(obj: JsValue, rows: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_rows"

#cfg(target="wasm-gc")
fn html_text_area_element_wrap_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_wrap"

///|
#cfg(target="wasm-gc")
fn html_text_area_element_wrap_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_text_area_element_wrap_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_text_area_element_set_wrap_ffi(obj: JsValue, wrap: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_wrap"

#cfg(target="wasm-gc")
fn html_text_area_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_text_area_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_text_area_element_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_text_area_element_default_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_defaultValue"

///|
#cfg(target="wasm-gc")
fn html_text_area_element_default_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_text_area_element_default_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_text_area_element_set_default_value_ffi(obj: JsValue, default_value: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_defaultValue"

#cfg(target="wasm-gc")
fn html_text_area_element_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_value"

///|
#cfg(target="wasm-gc")
fn html_text_area_element_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_text_area_element_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_text_area_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_value"

#cfg(target="wasm-gc")
fn html_text_area_element_text_length_ffi(obj: JsValue) -> UInt = "webapi_HTMLTextAreaElement" "get_textLength"

#cfg(target="wasm-gc")
fn html_text_area_element_will_validate_ffi(obj: JsValue) -> Bool = "webapi_HTMLTextAreaElement" "get_willValidate"

#cfg(target="wasm-gc")
fn html_text_area_element_validity_ffi(obj: JsValue) -> ValidityState = "webapi_HTMLTextAreaElement" "get_validity"

#cfg(target="wasm-gc")
fn html_text_area_element_validation_message_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_validationMessage"

///|
#cfg(target="wasm-gc")
fn html_text_area_element_validation_message_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_text_area_element_validation_message_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_text_area_element_check_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLTextAreaElement" "checkValidity"

#cfg(target="wasm-gc")
fn html_text_area_element_report_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLTextAreaElement" "reportValidity"

#cfg(target="wasm-gc")
fn html_text_area_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "setCustomValidity"

#cfg(target="wasm-gc")
fn html_text_area_element_labels_ffi(obj: JsValue) -> NodeList = "webapi_HTMLTextAreaElement" "get_labels"

#cfg(target="wasm-gc")
fn html_text_area_element_select_ffi(obj: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "select"

#cfg(target="wasm-gc")
fn html_text_area_element_selection_start_ffi(obj: JsValue) -> UInt = "webapi_HTMLTextAreaElement" "get_selectionStart"

#cfg(target="wasm-gc")
fn html_text_area_element_set_selection_start_ffi(obj: JsValue, selection_start: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_selectionStart"

#cfg(target="wasm-gc")
fn html_text_area_element_selection_end_ffi(obj: JsValue) -> UInt = "webapi_HTMLTextAreaElement" "get_selectionEnd"

#cfg(target="wasm-gc")
fn html_text_area_element_set_selection_end_ffi(obj: JsValue, selection_end: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_selectionEnd"

#cfg(target="wasm-gc")
fn html_text_area_element_selection_direction_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_selectionDirection"

///|
#cfg(target="wasm-gc")
fn html_text_area_element_selection_direction_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_text_area_element_selection_direction_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_text_area_element_set_selection_direction_ffi(obj: JsValue, selection_direction: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_selectionDirection"

#cfg(target="wasm-gc")
fn html_text_area_element_set_range_text_ffi(obj: JsValue, replacement: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "setRangeText"

#cfg(target="wasm-gc")
fn html_text_area_element_set_range_text_in_range_ffi(obj: JsValue, replacement: JsValue, start: JsValue, end: JsValue, selection_mode: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_range_text_in_range"

#cfg(target="wasm-gc")
fn html_text_area_element_set_selection_range_ffi(obj: JsValue, start: JsValue, end: JsValue, direction: JsValue) -> Unit = "webapi_HTMLTextAreaElement" "setSelectionRange"