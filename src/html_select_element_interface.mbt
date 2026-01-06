// Do not edit. This file is generated.
// MoonBit type: HTMLSelectElement
// Specifications: html.idl

///|
#external
pub type HTMLSelectElement

///|
pub impl TJsValue for HTMLSelectElement with to_js(self : HTMLSelectElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLSelectElement] HTMLSelectElement::into(
  self : HTMLSelectElement,
) -> T = "%identity"

///|
pub impl THTMLSelectElement for HTMLSelectElement

///|
pub impl THTMLElement for HTMLSelectElement

///|
pub impl TElement for HTMLSelectElement

///|
pub impl TNode for HTMLSelectElement

///|
pub impl TEventTarget for HTMLSelectElement

///|
extern "js" fn html_select_element_new_ffi() -> HTMLSelectElement = "() => new HTMLSelectElement()"

///|
pub fn HTMLSelectElement::new() -> HTMLSelectElement {
  html_select_element_new_ffi()
}

///|
pub(open) trait THTMLSelectElementAddElement {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLSelectElementAddElement for HTMLOptionElement with to_js(
  self : HTMLOptionElement,
) -> JsValue = "%identity"

///|
pub impl THTMLSelectElementAddElement for HTMLOptGroupElement with to_js(
  self : HTMLOptGroupElement,
) -> JsValue = "%identity"

///|
pub(open) trait THTMLSelectElementAddBefore {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLSelectElementAddBefore for HTMLElement with to_js(
  self : HTMLElement,
) -> JsValue = "%identity"

///|
pub impl THTMLSelectElementAddBefore for Int with to_js(self : Int) -> JsValue = "%identity"

///|
pub trait THTMLSelectElement: THTMLElement {
  autocomplete(self : Self) -> String = _
  set_autocomplete(self : Self, autocomplete : String) -> Unit = _
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  form(self : Self) -> HTMLFormElement = _
  multiple(self : Self) -> Bool = _
  set_multiple(self : Self, multiple : Bool) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  required(self : Self) -> Bool = _
  set_required(self : Self, required : Bool) -> Unit = _
  size(self : Self) -> UInt = _
  set_size(self : Self, size : UInt) -> Unit = _
  type_(self : Self) -> String = _
  options(self : Self) -> HTMLOptionsCollection = _
  length(self : Self) -> UInt = _
  set_length(self : Self, length : UInt) -> Unit = _
  named_item(self : Self, name : String) -> HTMLOptionElement? = _
  add(
    self : Self,
    element : &THTMLSelectElementAddElement,
    before? : &THTMLSelectElementAddBefore,
  ) -> Unit = _
  remove(self : Self) -> Unit = _
  remove_2(self : Self, index : Int) -> Unit = _
  selected_options(self : Self) -> HTMLCollection = _
  selected_index(self : Self) -> Int = _
  set_selected_index(self : Self, selected_index : Int) -> Unit = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  will_validate(self : Self) -> Bool = _
  validity(self : Self) -> ValidityState = _
  validation_message(self : Self) -> String = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
  show_picker(self : Self) -> Unit = _
  labels(self : Self) -> NodeList = _
}

///|
extern "js" fn html_select_element_autocomplete_ffi(obj : JsValue) -> String = "(obj) => obj.autocomplete"

///|
impl THTMLSelectElement with autocomplete(self : Self) -> String {
  html_select_element_autocomplete_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_set_autocomplete_ffi(
  obj : JsValue,
  autocomplete : JsValue,
) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

///|
impl THTMLSelectElement with set_autocomplete(
  self : Self,
  autocomplete : String,
) -> Unit {
  html_select_element_set_autocomplete_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(autocomplete),
  )
}

///|
extern "js" fn html_select_element_disabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.disabled"

///|
impl THTMLSelectElement with disabled(self : Self) -> Bool {
  html_select_element_disabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
impl THTMLSelectElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_select_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
extern "js" fn html_select_element_form_ffi(obj : JsValue) -> HTMLFormElement = "(obj) => obj.form"

///|
impl THTMLSelectElement with form(self : Self) -> HTMLFormElement {
  html_select_element_form_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_multiple_ffi(obj : JsValue) -> Bool = "(obj) => obj.multiple"

///|
impl THTMLSelectElement with multiple(self : Self) -> Bool {
  html_select_element_multiple_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_set_multiple_ffi(
  obj : JsValue,
  multiple : JsValue,
) -> Unit = "(obj, multiple) => { obj.multiple = multiple; }"

///|
impl THTMLSelectElement with set_multiple(self : Self, multiple : Bool) -> Unit {
  html_select_element_set_multiple_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(multiple),
  )
}

///|
extern "js" fn html_select_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLSelectElement with name(self : Self) -> String {
  html_select_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLSelectElement with set_name(self : Self, name : String) -> Unit {
  html_select_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn html_select_element_required_ffi(obj : JsValue) -> Bool = "(obj) => obj.required"

///|
impl THTMLSelectElement with required(self : Self) -> Bool {
  html_select_element_required_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_set_required_ffi(
  obj : JsValue,
  required : JsValue,
) -> Unit = "(obj, required) => { obj.required = required; }"

///|
impl THTMLSelectElement with set_required(self : Self, required : Bool) -> Unit {
  html_select_element_set_required_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(required),
  )
}

///|
extern "js" fn html_select_element_size_ffi(obj : JsValue) -> UInt = "(obj) => obj.size"

///|
impl THTMLSelectElement with size(self : Self) -> UInt {
  html_select_element_size_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_set_size_ffi(
  obj : JsValue,
  size : JsValue,
) -> Unit = "(obj, size) => { obj.size = size; }"

///|
impl THTMLSelectElement with set_size(self : Self, size : UInt) -> Unit {
  html_select_element_set_size_ffi(TJsValue::to_js(self), TJsValue::to_js(size))
}

///|
extern "js" fn html_select_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl THTMLSelectElement with type_(self : Self) -> String {
  html_select_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_options_ffi(
  obj : JsValue,
) -> HTMLOptionsCollection = "(obj) => obj.options"

///|
impl THTMLSelectElement with options(self : Self) -> HTMLOptionsCollection {
  html_select_element_options_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl THTMLSelectElement with length(self : Self) -> UInt {
  html_select_element_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_set_length_ffi(
  obj : JsValue,
  length : JsValue,
) -> Unit = "(obj, length) => { obj.length = length; }"

///|
impl THTMLSelectElement with set_length(self : Self, length : UInt) -> Unit {
  html_select_element_set_length_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(length),
  )
}

///|
extern "js" fn html_select_element_named_item_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.namedItem(name)"

///|
impl THTMLSelectElement with named_item(self : Self, name : String) -> HTMLOptionElement? {
  let result = html_select_element_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn html_select_element_add_ffi(
  obj : JsValue,
  element : JsValue,
  before : JsValue,
) -> Unit = "(obj, element, before) => obj.add(element, before)"

///|
impl THTMLSelectElement with add(
  self : Self,
  element : &THTMLSelectElementAddElement,
  before? : &THTMLSelectElementAddBefore = JsValue::null(),
) -> Unit {
  html_select_element_add_ffi(
    TJsValue::to_js(self),
    element.to_js(),
    before.to_js(),
  )
}

///|
extern "js" fn html_select_element_remove_ffi(obj : JsValue) -> Unit = "(obj) => obj.remove()"

///|
impl THTMLSelectElement with remove(self : Self) -> Unit {
  html_select_element_remove_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_remove_2_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.remove_2(index)"

///|
impl THTMLSelectElement with remove_2(self : Self, index : Int) -> Unit {
  html_select_element_remove_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn html_select_element_selected_options_ffi(
  obj : JsValue,
) -> HTMLCollection = "(obj) => obj.selectedOptions"

///|
impl THTMLSelectElement with selected_options(self : Self) -> HTMLCollection {
  html_select_element_selected_options_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_selected_index_ffi(obj : JsValue) -> Int = "(obj) => obj.selectedIndex"

///|
impl THTMLSelectElement with selected_index(self : Self) -> Int {
  html_select_element_selected_index_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_set_selected_index_ffi(
  obj : JsValue,
  selected_index : JsValue,
) -> Unit = "(obj, selectedIndex) => { obj.selectedIndex = selectedIndex; }"

///|
impl THTMLSelectElement with set_selected_index(
  self : Self,
  selected_index : Int,
) -> Unit {
  html_select_element_set_selected_index_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selected_index),
  )
}

///|
extern "js" fn html_select_element_value_ffi(obj : JsValue) -> String = "(obj) => obj.value"

///|
impl THTMLSelectElement with value(self : Self) -> String {
  html_select_element_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl THTMLSelectElement with set_value(self : Self, value : String) -> Unit {
  html_select_element_set_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn html_select_element_will_validate_ffi(obj : JsValue) -> Bool = "(obj) => obj.willValidate"

///|
impl THTMLSelectElement with will_validate(self : Self) -> Bool {
  html_select_element_will_validate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_validity_ffi(obj : JsValue) -> ValidityState = "(obj) => obj.validity"

///|
impl THTMLSelectElement with validity(self : Self) -> ValidityState {
  html_select_element_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_validation_message_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.validationMessage"

///|
impl THTMLSelectElement with validation_message(self : Self) -> String {
  html_select_element_validation_message_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity()"

///|
impl THTMLSelectElement with check_validity(self : Self) -> Bool {
  html_select_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_report_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.reportValidity()"

///|
impl THTMLSelectElement with report_validity(self : Self) -> Bool {
  html_select_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

///|
impl THTMLSelectElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_select_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}

///|
extern "js" fn html_select_element_show_picker_ffi(obj : JsValue) -> Unit = "(obj) => obj.showPicker()"

///|
impl THTMLSelectElement with show_picker(self : Self) -> Unit {
  html_select_element_show_picker_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_labels_ffi(obj : JsValue) -> NodeList = "(obj) => obj.labels"

///|
impl THTMLSelectElement with labels(self : Self) -> NodeList {
  html_select_element_labels_ffi(TJsValue::to_js(self))
}
