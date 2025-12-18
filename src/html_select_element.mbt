// Auto-generated MoonBit bindings for HTMLSelectElement interface
// Do not edit manually

#external
pub type HTMLSelectElement

pub impl TJsValue for HTMLSelectElement with to_js(self: HTMLSelectElement) -> JsValue = "%identity"


pub fn[T: THTMLSelectElement] HTMLSelectElement::into(self : HTMLSelectElement) -> T = "%identity"
pub impl THTMLSelectElement for HTMLSelectElement

pub fn HTMLSelectElement::new() -> HTMLSelectElement = "webapi_HTMLSelectElement" "new"

/// Union arg trait
pub(open) trait TAddElementArg {
  to_js(self : Self) -> JsValue
}

pub impl TAddElementArg for &THTMLOptionElement with to_js(self : &THTMLOptionElement) -> JsValue = "%identity"

pub impl TAddElementArg for &THTMLOptGroupElement with to_js(self : &THTMLOptGroupElement) -> JsValue = "%identity"

/// Union arg trait
pub(open) trait TAddBeforeArg {
  to_js(self : Self) -> JsValue
}

pub impl TAddBeforeArg for &THTMLElement with to_js(self : &THTMLElement) -> JsValue = "%identity"

pub impl TAddBeforeArg for Int with to_js(self : Int) -> JsValue = "%identity"

pub trait THTMLSelectElement: TJsValue + TTHTMLElement {
  autocomplete(self: Self) -> String = _
  set_autocomplete(self: Self, value : String) -> Unit = _
  disabled(self: Self) -> Bool = _
  set_disabled(self: Self, value : Bool) -> Unit = _
  form(self: Self) -> &THTMLFormElement = _
  multiple(self: Self) -> Bool = _
  set_multiple(self: Self, value : Bool) -> Unit = _
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  required(self: Self) -> Bool = _
  set_required(self: Self, value : Bool) -> Unit = _
  size(self: Self) -> UInt = _
  set_size(self: Self, value : UInt) -> Unit = _
  type_(self: Self) -> String = _
  options(self: Self) -> &THTMLOptionsCollection = _
  length(self: Self) -> UInt = _
  set_length(self: Self, value : UInt) -> Unit = _
  named_item(self: Self, name : String) -> &THTMLOptionElement = _
  add(self: Self, element : &TAddElementArg, before? : &TAddBeforeArg) -> Unit = _
  remove(self: Self) -> Unit = _
  remove(self: Self, index : Int) -> Unit = _
  selected_options(self: Self) -> &THTMLCollection = _
  selected_index(self: Self) -> Int = _
  set_selected_index(self: Self, value : Int) -> Unit = _
  value(self: Self) -> String = _
  set_value(self: Self, value : String) -> Unit = _
  will_validate(self: Self) -> Bool = _
  validity(self: Self) -> ValidityState = _
  validation_message(self: Self) -> String = _
  check_validity(self: Self) -> Bool = _
  report_validity(self: Self) -> Bool = _
  set_custom_validity(self: Self, error : String) -> Unit = _
  show_picker(self: Self) -> Unit = _
  labels(self: Self) -> &TNodeList = _
}

///|
fn html_select_element_autocomplete_ffi(obj : JsValue) -> String = "webapi_HTMLSelectElement" "autocomplete"

///|
impl THTMLSelectElement with autocomplete(self : Self) -> String {
  html_select_element_autocomplete_ffi(self.to_js())
}

///|
fn html_select_element_set_autocomplete_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLSelectElement" "set_autocomplete"

///|
impl THTMLSelectElement with set_autocomplete(self : Self, value : String) -> Unit {
  html_select_element_set_autocomplete_ffi(self.to_js(), value)
}

///|
fn html_select_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLSelectElement" "disabled"

///|
impl THTMLSelectElement with disabled(self : Self) -> Bool {
  html_select_element_disabled_ffi(self.to_js())
}

///|
fn html_select_element_set_disabled_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLSelectElement" "set_disabled"

///|
impl THTMLSelectElement with set_disabled(self : Self, value : Bool) -> Unit {
  html_select_element_set_disabled_ffi(self.to_js(), value)
}

///|
fn html_select_element_form_ffi(obj : JsValue) -> JsValue = "webapi_HTMLSelectElement" "form"

///|
impl THTMLSelectElement with form(self : Self) -> &THTMLFormElement {
  html_select_element_form_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_select_element_multiple_ffi(obj : JsValue) -> Bool = "webapi_HTMLSelectElement" "multiple"

///|
impl THTMLSelectElement with multiple(self : Self) -> Bool {
  html_select_element_multiple_ffi(self.to_js())
}

///|
fn html_select_element_set_multiple_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLSelectElement" "set_multiple"

///|
impl THTMLSelectElement with set_multiple(self : Self, value : Bool) -> Unit {
  html_select_element_set_multiple_ffi(self.to_js(), value)
}

///|
fn html_select_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLSelectElement" "name"

///|
impl THTMLSelectElement with name(self : Self) -> String {
  html_select_element_name_ffi(self.to_js())
}

///|
fn html_select_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLSelectElement" "set_name"

///|
impl THTMLSelectElement with set_name(self : Self, value : String) -> Unit {
  html_select_element_set_name_ffi(self.to_js(), value)
}

///|
fn html_select_element_required_ffi(obj : JsValue) -> Bool = "webapi_HTMLSelectElement" "required"

///|
impl THTMLSelectElement with required(self : Self) -> Bool {
  html_select_element_required_ffi(self.to_js())
}

///|
fn html_select_element_set_required_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLSelectElement" "set_required"

///|
impl THTMLSelectElement with set_required(self : Self, value : Bool) -> Unit {
  html_select_element_set_required_ffi(self.to_js(), value)
}

///|
fn html_select_element_size_ffi(obj : JsValue) -> UInt = "webapi_HTMLSelectElement" "size"

///|
impl THTMLSelectElement with size(self : Self) -> UInt {
  html_select_element_size_ffi(self.to_js())
}

///|
fn html_select_element_set_size_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLSelectElement" "set_size"

///|
impl THTMLSelectElement with set_size(self : Self, value : UInt) -> Unit {
  html_select_element_set_size_ffi(self.to_js(), value)
}

///|
fn html_select_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLSelectElement" "type"

///|
impl THTMLSelectElement with type_(self : Self) -> String {
  html_select_element_type_ffi(self.to_js())
}

///|
fn html_select_element_options_ffi(obj : JsValue) -> JsValue = "webapi_HTMLSelectElement" "options"

///|
impl THTMLSelectElement with options(self : Self) -> &THTMLOptionsCollection {
  html_select_element_options_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_select_element_length_ffi(obj : JsValue) -> UInt = "webapi_HTMLSelectElement" "length"

///|
impl THTMLSelectElement with length(self : Self) -> UInt {
  html_select_element_length_ffi(self.to_js())
}

///|
fn html_select_element_set_length_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLSelectElement" "set_length"

///|
impl THTMLSelectElement with set_length(self : Self, value : UInt) -> Unit {
  html_select_element_set_length_ffi(self.to_js(), value)
}

///|
fn html_select_element_selected_options_ffi(obj : JsValue) -> JsValue = "webapi_HTMLSelectElement" "selectedOptions"

///|
impl THTMLSelectElement with selected_options(self : Self) -> &THTMLCollection {
  html_select_element_selected_options_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_select_element_selected_index_ffi(obj : JsValue) -> Int = "webapi_HTMLSelectElement" "selectedIndex"

///|
impl THTMLSelectElement with selected_index(self : Self) -> Int {
  html_select_element_selected_index_ffi(self.to_js())
}

///|
fn html_select_element_set_selected_index_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLSelectElement" "set_selectedIndex"

///|
impl THTMLSelectElement with set_selected_index(self : Self, value : Int) -> Unit {
  html_select_element_set_selected_index_ffi(self.to_js(), value)
}

///|
fn html_select_element_value_ffi(obj : JsValue) -> String = "webapi_HTMLSelectElement" "value"

///|
impl THTMLSelectElement with value(self : Self) -> String {
  html_select_element_value_ffi(self.to_js())
}

///|
fn html_select_element_set_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLSelectElement" "set_value"

///|
impl THTMLSelectElement with set_value(self : Self, value : String) -> Unit {
  html_select_element_set_value_ffi(self.to_js(), value)
}

///|
fn html_select_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLSelectElement" "willValidate"

///|
impl THTMLSelectElement with will_validate(self : Self) -> Bool {
  html_select_element_will_validate_ffi(self.to_js())
}

///|
fn html_select_element_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLSelectElement" "validity"

///|
impl THTMLSelectElement with validity(self : Self) -> ValidityState {
  html_select_element_validity_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_select_element_validation_message_ffi(obj : JsValue) -> String = "webapi_HTMLSelectElement" "validationMessage"

///|
impl THTMLSelectElement with validation_message(self : Self) -> String {
  html_select_element_validation_message_ffi(self.to_js())
}

///|
fn html_select_element_labels_ffi(obj : JsValue) -> JsValue = "webapi_HTMLSelectElement" "labels"

///|
impl THTMLSelectElement with labels(self : Self) -> &TNodeList {
  html_select_element_labels_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_select_element_named_item_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_HTMLSelectElement" "namedItem"

///|
impl THTMLSelectElement with named_item(self : Self, name : String) -> &THTMLOptionElement {
  html_select_element_named_item_ffi(self.to_js(), TJsValue::to_js(name)).unsafe_cast()
}

///|
fn html_select_element_add_ffi(obj : JsValue, element : JsValue, before : JsValue) -> Unit = "webapi_HTMLSelectElement" "add"

///|
impl THTMLSelectElement with add(self : Self, element : &TAddElementArg, before? : &TAddBeforeArg) -> Unit {
  html_select_element_add_ffi(self.to_js(), element.to_js(), before.to_js())
}

///|
fn html_select_element_remove_ffi(obj : JsValue) -> Unit = "webapi_HTMLSelectElement" "remove"

///|
impl THTMLSelectElement with remove(self : Self) -> Unit {
  html_select_element_remove_ffi(self.to_js())
}

///|
fn html_select_element_remove_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_HTMLSelectElement" "remove"

///|
impl THTMLSelectElement with remove(self : Self, index : Int) -> Unit {
  html_select_element_remove_ffi(self.to_js(), TJsValue::to_js(index))
}

///|
fn html_select_element_check_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLSelectElement" "checkValidity"

///|
impl THTMLSelectElement with check_validity(self : Self) -> Bool {
  html_select_element_check_validity_ffi(self.to_js())
}

///|
fn html_select_element_report_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLSelectElement" "reportValidity"

///|
impl THTMLSelectElement with report_validity(self : Self) -> Bool {
  html_select_element_report_validity_ffi(self.to_js())
}

///|
fn html_select_element_set_custom_validity_ffi(obj : JsValue, error : JsValue) -> Unit = "webapi_HTMLSelectElement" "setCustomValidity"

///|
impl THTMLSelectElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_select_element_set_custom_validity_ffi(self.to_js(), TJsValue::to_js(error))
}

///|
fn html_select_element_show_picker_ffi(obj : JsValue) -> Unit = "webapi_HTMLSelectElement" "showPicker"

///|
impl THTMLSelectElement with show_picker(self : Self) -> Unit {
  html_select_element_show_picker_ffi(self.to_js())
}