// Do not edit. This file is generated.
// MoonBit type: HTMLSelectElement
// Specifications: html.idl

///|
/// [HTMLSelectElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement)
#external
pub type HTMLSelectElement

///|
pub impl TJsValue for HTMLSelectElement with to_js(self : HTMLSelectElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLSelectElement with from_js_any(value : JsAny) -> HTMLSelectElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLSelectElement] HTMLSelectElement::into(
  self : HTMLSelectElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLSelectElement] HTMLSelectElement::unsafe_into(
  self : HTMLSelectElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLSelectElement with constructor_name() {
  "HTMLSelectElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLSelectElement + HasConstructor] HTMLSelectElement::try_into(
  self : HTMLSelectElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
pub fn HTMLSelectElement::new() -> HTMLSelectElement {
  html_select_element_new_ffi()
}

///|
pub(open) trait THTMLSelectElementAddElement: TJsValue {}

///|
pub impl THTMLSelectElementAddElement for HTMLOptionElement

///|
pub impl THTMLSelectElementAddElement for HTMLOptGroupElement

///|
pub(open) trait THTMLSelectElementAddBefore: TJsValue {}

///|
pub impl THTMLSelectElementAddBefore for HTMLElement

///|
pub impl THTMLSelectElementAddBefore for Int

///|
/// [HTMLSelectElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement) interface.
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
  item_opt(self : Self, index : UInt) -> HTMLOptionElement? = _
  named_item_opt(self : Self, name : String) -> HTMLOptionElement? = _
  add(
    self : Self,
    element : &THTMLSelectElementAddElement,
    before? : &THTMLSelectElementAddBefore,
  ) -> Unit = _
  remove(self : Self) -> Unit = _
  remove_at(self : Self, index : Int) -> Unit = _
  set(self : Self, index : UInt, option : &THTMLOptionElement) -> Unit = _
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
  item(self : Self, index : UInt) -> HTMLOptionElement = _
  named_item(self : Self, name : String) -> HTMLOptionElement = _
}

///|
/// [HTMLSelectElement.autocomplete](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/autocomplete)
impl THTMLSelectElement with autocomplete(self : Self) -> String {
  html_select_element_autocomplete_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.autocomplete](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/autocomplete)
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
/// [HTMLSelectElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/disabled)
impl THTMLSelectElement with disabled(self : Self) -> Bool {
  html_select_element_disabled_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/disabled)
impl THTMLSelectElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_select_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
/// [HTMLSelectElement.form](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/form)
impl THTMLSelectElement with form(self : Self) -> HTMLFormElement {
  html_select_element_form_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.multiple](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/multiple)
impl THTMLSelectElement with multiple(self : Self) -> Bool {
  html_select_element_multiple_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.multiple](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/multiple)
impl THTMLSelectElement with set_multiple(self : Self, multiple : Bool) -> Unit {
  html_select_element_set_multiple_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(multiple),
  )
}

///|
/// [HTMLSelectElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/name)
impl THTMLSelectElement with name(self : Self) -> String {
  html_select_element_name_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/name)
impl THTMLSelectElement with set_name(self : Self, name : String) -> Unit {
  html_select_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [HTMLSelectElement.required](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/required)
impl THTMLSelectElement with required(self : Self) -> Bool {
  html_select_element_required_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.required](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/required)
impl THTMLSelectElement with set_required(self : Self, required : Bool) -> Unit {
  html_select_element_set_required_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(required),
  )
}

///|
/// [HTMLSelectElement.size](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/size)
impl THTMLSelectElement with size(self : Self) -> UInt {
  html_select_element_size_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.size](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/size)
impl THTMLSelectElement with set_size(self : Self, size : UInt) -> Unit {
  html_select_element_set_size_ffi(TJsValue::to_js(self), TJsValue::to_js(size))
}

///|
/// [HTMLSelectElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/type)
impl THTMLSelectElement with type_(self : Self) -> String {
  html_select_element_type_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.options](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/options)
impl THTMLSelectElement with options(self : Self) -> HTMLOptionsCollection {
  html_select_element_options_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.length](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/length)
impl THTMLSelectElement with length(self : Self) -> UInt {
  html_select_element_length_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.length](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/length)
impl THTMLSelectElement with set_length(self : Self, length : UInt) -> Unit {
  html_select_element_set_length_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(length),
  )
}

///|
/// [HTMLSelectElement.item](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/item)
impl THTMLSelectElement with item_opt(self : Self, index : UInt) -> HTMLOptionElement? {
  html_select_element_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [HTMLSelectElement.namedItem](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/namedItem)
impl THTMLSelectElement with named_item_opt(self : Self, name : String) -> HTMLOptionElement? {
  html_select_element_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  ).to_option()
}

///|
/// [HTMLSelectElement.add](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/add)
impl THTMLSelectElement with add(
  self : Self,
  element : &THTMLSelectElementAddElement,
  before? : &THTMLSelectElementAddBefore,
) -> Unit {
  html_select_element_add_ffi(
    TJsValue::to_js(self),
    element.to_js(),
    match before {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [HTMLSelectElement.remove](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/remove)
impl THTMLSelectElement with remove(self : Self) -> Unit {
  html_select_element_remove_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.remove](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/remove)
impl THTMLSelectElement with remove_at(self : Self, index : Int) -> Unit {
  html_select_element_remove_at_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
/// [HTMLSelectElement.set](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/set)
impl THTMLSelectElement with set(
  self : Self,
  index : UInt,
  option : &THTMLOptionElement,
) -> Unit {
  html_select_element_set_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
    TJsValue::to_js(option),
  )
}

///|
/// [HTMLSelectElement.selectedOptions](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/selectedOptions)
impl THTMLSelectElement with selected_options(self : Self) -> HTMLCollection {
  html_select_element_selected_options_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.selectedIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/selectedIndex)
impl THTMLSelectElement with selected_index(self : Self) -> Int {
  html_select_element_selected_index_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.selectedIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/selectedIndex)
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
/// [HTMLSelectElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/value)
impl THTMLSelectElement with value(self : Self) -> String {
  html_select_element_value_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/value)
impl THTMLSelectElement with set_value(self : Self, value : String) -> Unit {
  html_select_element_set_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
/// [HTMLSelectElement.willValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/willValidate)
impl THTMLSelectElement with will_validate(self : Self) -> Bool {
  html_select_element_will_validate_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.validity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/validity)
impl THTMLSelectElement with validity(self : Self) -> ValidityState {
  html_select_element_validity_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.validationMessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/validationMessage)
impl THTMLSelectElement with validation_message(self : Self) -> String {
  html_select_element_validation_message_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.checkValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/checkValidity)
impl THTMLSelectElement with check_validity(self : Self) -> Bool {
  html_select_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.reportValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/reportValidity)
impl THTMLSelectElement with report_validity(self : Self) -> Bool {
  html_select_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.setCustomValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/setCustomValidity)
impl THTMLSelectElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_select_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}

///|
/// [HTMLSelectElement.showPicker](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/showPicker)
impl THTMLSelectElement with show_picker(self : Self) -> Unit {
  html_select_element_show_picker_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSelectElement.labels](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement/labels)
impl THTMLSelectElement with labels(self : Self) -> NodeList {
  html_select_element_labels_ffi(TJsValue::to_js(self))
}

///|
impl THTMLSelectElement with item(self : Self, index : UInt) -> HTMLOptionElement {
  self.item_opt(index).unwrap()
}

///|
impl THTMLSelectElement with named_item(self : Self, name : String) -> HTMLOptionElement {
  self.named_item_opt(name).unwrap()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_new_ffi() -> HTMLSelectElement = "() => new HTMLSelectElement()"

///|
#cfg(target="js")
extern "js" fn html_select_element_autocomplete_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.autocomplete"

///|
#cfg(target="js")
fn html_select_element_autocomplete_ffi(obj : JsValue) -> String {
  html_select_element_autocomplete_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_set_autocomplete_ffi(
  obj : JsValue,
  autocomplete : JsValue,
) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

///|
#cfg(target="js")
extern "js" fn html_select_element_disabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.disabled"

///|
#cfg(target="js")
fn html_select_element_disabled_ffi(obj : JsValue) -> Bool {
  html_select_element_disabled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
#cfg(target="js")
extern "js" fn html_select_element_form_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
#cfg(target="js")
fn html_select_element_form_ffi(obj : JsValue) -> HTMLFormElement {
  html_select_element_form_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_multiple_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.multiple"

///|
#cfg(target="js")
fn html_select_element_multiple_ffi(obj : JsValue) -> Bool {
  html_select_element_multiple_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_set_multiple_ffi(
  obj : JsValue,
  multiple : JsValue,
) -> Unit = "(obj, multiple) => { obj.multiple = multiple; }"

///|
#cfg(target="js")
extern "js" fn html_select_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_select_element_name_ffi(obj : JsValue) -> String {
  html_select_element_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
#cfg(target="js")
extern "js" fn html_select_element_required_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.required"

///|
#cfg(target="js")
fn html_select_element_required_ffi(obj : JsValue) -> Bool {
  html_select_element_required_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_set_required_ffi(
  obj : JsValue,
  required : JsValue,
) -> Unit = "(obj, required) => { obj.required = required; }"

///|
#cfg(target="js")
extern "js" fn html_select_element_size_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.size"

///|
#cfg(target="js")
fn html_select_element_size_ffi(obj : JsValue) -> UInt {
  html_select_element_size_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_set_size_ffi(
  obj : JsValue,
  size : JsValue,
) -> Unit = "(obj, size) => { obj.size = size; }"

///|
#cfg(target="js")
extern "js" fn html_select_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_select_element_type_ffi(obj : JsValue) -> String {
  html_select_element_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_options_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.options"

///|
#cfg(target="js")
fn html_select_element_options_ffi(obj : JsValue) -> HTMLOptionsCollection {
  html_select_element_options_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn html_select_element_length_ffi(obj : JsValue) -> UInt {
  html_select_element_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_set_length_ffi(
  obj : JsValue,
  length : JsValue,
) -> Unit = "(obj, length) => { obj.length = length; }"

///|
#cfg(target="js")
extern "js" fn html_select_element_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.item(index)"

///|
#cfg(target="js")
extern "js" fn html_select_element_named_item_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.namedItem(name)"

///|
#cfg(target="js")
extern "js" fn html_select_element_add_ffi(
  obj : JsValue,
  element : JsValue,
  before : JsValue,
) -> Unit = "(obj, element, before) => obj.add(element, before)"

///|
#cfg(target="js")
extern "js" fn html_select_element_remove_ffi(obj : JsValue) -> Unit = "(obj) => obj.remove()"

///|
#cfg(target="js")
extern "js" fn html_select_element_remove_at_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.remove(index)"

///|
#cfg(target="js")
extern "js" fn html_select_element_set_ffi(
  obj : JsValue,
  index : JsValue,
  option : JsValue,
) -> Unit = "(obj, index, option) => { obj[index] = option; }"

///|
#cfg(target="js")
extern "js" fn html_select_element_selected_options_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.selectedOptions"

///|
#cfg(target="js")
fn html_select_element_selected_options_ffi(obj : JsValue) -> HTMLCollection {
  html_select_element_selected_options_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_selected_index_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.selectedIndex"

///|
#cfg(target="js")
fn html_select_element_selected_index_ffi(obj : JsValue) -> Int {
  html_select_element_selected_index_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_set_selected_index_ffi(
  obj : JsValue,
  selected_index : JsValue,
) -> Unit = "(obj, selectedIndex) => { obj.selectedIndex = selectedIndex; }"

///|
#cfg(target="js")
extern "js" fn html_select_element_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn html_select_element_value_ffi(obj : JsValue) -> String {
  html_select_element_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
#cfg(target="js")
extern "js" fn html_select_element_will_validate_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.willValidate"

///|
#cfg(target="js")
fn html_select_element_will_validate_ffi(obj : JsValue) -> Bool {
  html_select_element_will_validate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_validity_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.validity"

///|
#cfg(target="js")
fn html_select_element_validity_ffi(obj : JsValue) -> ValidityState {
  html_select_element_validity_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_validation_message_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.validationMessage"

///|
#cfg(target="js")
fn html_select_element_validation_message_ffi(obj : JsValue) -> String {
  html_select_element_validation_message_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_check_validity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.checkValidity()"

///|
#cfg(target="js")
fn html_select_element_check_validity_ffi(obj : JsValue) -> Bool {
  html_select_element_check_validity_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_report_validity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.reportValidity()"

///|
#cfg(target="js")
fn html_select_element_report_validity_ffi(obj : JsValue) -> Bool {
  html_select_element_report_validity_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_select_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

///|
#cfg(target="js")
extern "js" fn html_select_element_show_picker_ffi(obj : JsValue) -> Unit = "(obj) => obj.showPicker()"

///|
#cfg(target="js")
extern "js" fn html_select_element_labels_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.labels"

///|
#cfg(target="js")
fn html_select_element_labels_ffi(obj : JsValue) -> NodeList {
  html_select_element_labels_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_select_element_new_ffi() -> HTMLSelectElement = "webapi_HTMLSelectElement" "new"

///|
#cfg(target="wasm-gc")
fn html_select_element_autocomplete_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLSelectElement" "get_autocomplete"

///|
#cfg(target="wasm-gc")
fn html_select_element_autocomplete_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_select_element_autocomplete_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_select_element_set_autocomplete_ffi(
  obj : JsValue,
  autocomplete : JsValue,
) -> Unit = "webapi_HTMLSelectElement" "set_autocomplete"

///|
#cfg(target="wasm-gc")
fn html_select_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLSelectElement" "get_disabled"

///|
#cfg(target="wasm-gc")
fn html_select_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "webapi_HTMLSelectElement" "set_disabled"

///|
#cfg(target="wasm-gc")
fn html_select_element_form_ffi(obj : JsValue) -> HTMLFormElement = "webapi_HTMLSelectElement" "get_form"

///|
#cfg(target="wasm-gc")
fn html_select_element_multiple_ffi(obj : JsValue) -> Bool = "webapi_HTMLSelectElement" "get_multiple"

///|
#cfg(target="wasm-gc")
fn html_select_element_set_multiple_ffi(
  obj : JsValue,
  multiple : JsValue,
) -> Unit = "webapi_HTMLSelectElement" "set_multiple"

///|
#cfg(target="wasm-gc")
fn html_select_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLSelectElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_select_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_select_element_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_select_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLSelectElement" "set_name"

///|
#cfg(target="wasm-gc")
fn html_select_element_required_ffi(obj : JsValue) -> Bool = "webapi_HTMLSelectElement" "get_required"

///|
#cfg(target="wasm-gc")
fn html_select_element_set_required_ffi(
  obj : JsValue,
  required : JsValue,
) -> Unit = "webapi_HTMLSelectElement" "set_required"

///|
#cfg(target="wasm-gc")
fn html_select_element_size_ffi(obj : JsValue) -> UInt = "webapi_HTMLSelectElement" "get_size"

///|
#cfg(target="wasm-gc")
fn html_select_element_set_size_ffi(obj : JsValue, size : JsValue) -> Unit = "webapi_HTMLSelectElement" "set_size"

///|
#cfg(target="wasm-gc")
fn html_select_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLSelectElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_select_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_select_element_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_select_element_options_ffi(obj : JsValue) -> HTMLOptionsCollection = "webapi_HTMLSelectElement" "get_options"

///|
#cfg(target="wasm-gc")
fn html_select_element_length_ffi(obj : JsValue) -> UInt = "webapi_HTMLSelectElement" "get_length"

///|
#cfg(target="wasm-gc")
fn html_select_element_set_length_ffi(obj : JsValue, length : JsValue) -> Unit = "webapi_HTMLSelectElement" "set_length"

///|
#cfg(target="wasm-gc")
fn html_select_element_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_HTMLSelectElement" "item"

///|
#cfg(target="wasm-gc")
fn html_select_element_named_item_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_HTMLSelectElement" "namedItem"

///|
#cfg(target="wasm-gc")
fn html_select_element_add_ffi(
  obj : JsValue,
  element : JsValue,
  before : JsValue,
) -> Unit = "webapi_HTMLSelectElement" "add"

///|
#cfg(target="wasm-gc")
fn html_select_element_remove_ffi(obj : JsValue) -> Unit = "webapi_HTMLSelectElement" "remove"

///|
#cfg(target="wasm-gc")
fn html_select_element_remove_at_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_HTMLSelectElement" "remove_at"

///|
#cfg(target="wasm-gc")
fn html_select_element_set_ffi(
  obj : JsValue,
  index : JsValue,
  option : JsValue,
) -> Unit = "webapi_HTMLSelectElement" "set"

///|
#cfg(target="wasm-gc")
fn html_select_element_selected_options_ffi(obj : JsValue) -> HTMLCollection = "webapi_HTMLSelectElement" "get_selectedOptions"

///|
#cfg(target="wasm-gc")
fn html_select_element_selected_index_ffi(obj : JsValue) -> Int = "webapi_HTMLSelectElement" "get_selectedIndex"

///|
#cfg(target="wasm-gc")
fn html_select_element_set_selected_index_ffi(
  obj : JsValue,
  selected_index : JsValue,
) -> Unit = "webapi_HTMLSelectElement" "set_selectedIndex"

///|
#cfg(target="wasm-gc")
fn html_select_element_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLSelectElement" "get_value"

///|
#cfg(target="wasm-gc")
fn html_select_element_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_select_element_value_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_select_element_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLSelectElement" "set_value"

///|
#cfg(target="wasm-gc")
fn html_select_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLSelectElement" "get_willValidate"

///|
#cfg(target="wasm-gc")
fn html_select_element_validity_ffi(obj : JsValue) -> ValidityState = "webapi_HTMLSelectElement" "get_validity"

///|
#cfg(target="wasm-gc")
fn html_select_element_validation_message_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLSelectElement" "get_validationMessage"

///|
#cfg(target="wasm-gc")
fn html_select_element_validation_message_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_select_element_validation_message_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_select_element_check_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLSelectElement" "checkValidity"

///|
#cfg(target="wasm-gc")
fn html_select_element_report_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLSelectElement" "reportValidity"

///|
#cfg(target="wasm-gc")
fn html_select_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "webapi_HTMLSelectElement" "setCustomValidity"

///|
#cfg(target="wasm-gc")
fn html_select_element_show_picker_ffi(obj : JsValue) -> Unit = "webapi_HTMLSelectElement" "showPicker"

///|
#cfg(target="wasm-gc")
fn html_select_element_labels_ffi(obj : JsValue) -> NodeList = "webapi_HTMLSelectElement" "get_labels"
