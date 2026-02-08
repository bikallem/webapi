// Do not edit. This file is generated.
// MoonBit type: HTMLOutputElement
// Specifications: html.idl

///|
/// [HTMLOutputElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement)
#external
pub type HTMLOutputElement

///|
pub impl TJsValue for HTMLOutputElement with to_js(self : HTMLOutputElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLOutputElement] HTMLOutputElement::into(
  self : HTMLOutputElement,
) -> T = "%identity"

///|
pub impl THTMLOutputElement for HTMLOutputElement

///|
pub impl THTMLElement for HTMLOutputElement

///|
pub impl TElement for HTMLOutputElement

///|
pub impl TNode for HTMLOutputElement

///|
pub impl TEventTarget for HTMLOutputElement

///|
pub fn HTMLOutputElement::new() -> HTMLOutputElement {
  html_output_element_new_ffi()
}

///|
/// [HTMLOutputElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement) interface.
pub trait THTMLOutputElement: THTMLElement {
  html_for(self : Self) -> DOMTokenList = _
  form(self : Self) -> HTMLFormElement = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  type_(self : Self) -> String = _
  default_value(self : Self) -> String = _
  set_default_value(self : Self, default_value : String) -> Unit = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  will_validate(self : Self) -> Bool = _
  validity(self : Self) -> ValidityState = _
  validation_message(self : Self) -> String = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
  labels(self : Self) -> NodeList = _
}

///|
/// [HTMLOutputElement.htmlFor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/htmlFor)
impl THTMLOutputElement with html_for(self : Self) -> DOMTokenList {
  html_output_element_html_for_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOutputElement.form](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/form)
impl THTMLOutputElement with form(self : Self) -> HTMLFormElement {
  html_output_element_form_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOutputElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/name)
impl THTMLOutputElement with name(self : Self) -> String {
  html_output_element_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOutputElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/name)
impl THTMLOutputElement with set_name(self : Self, name : String) -> Unit {
  html_output_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [HTMLOutputElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/type)
impl THTMLOutputElement with type_(self : Self) -> String {
  html_output_element_type_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOutputElement.defaultValue](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/defaultValue)
impl THTMLOutputElement with default_value(self : Self) -> String {
  html_output_element_default_value_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOutputElement.defaultValue](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/defaultValue)
impl THTMLOutputElement with set_default_value(
  self : Self,
  default_value : String,
) -> Unit {
  html_output_element_set_default_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(default_value),
  )
}

///|
/// [HTMLOutputElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/value)
impl THTMLOutputElement with value(self : Self) -> String {
  html_output_element_value_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOutputElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/value)
impl THTMLOutputElement with set_value(self : Self, value : String) -> Unit {
  html_output_element_set_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
/// [HTMLOutputElement.willValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/willValidate)
impl THTMLOutputElement with will_validate(self : Self) -> Bool {
  html_output_element_will_validate_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOutputElement.validity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/validity)
impl THTMLOutputElement with validity(self : Self) -> ValidityState {
  html_output_element_validity_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOutputElement.validationMessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/validationMessage)
impl THTMLOutputElement with validation_message(self : Self) -> String {
  html_output_element_validation_message_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOutputElement.checkValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/checkValidity)
impl THTMLOutputElement with check_validity(self : Self) -> Bool {
  html_output_element_check_validity_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOutputElement.reportValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/reportValidity)
impl THTMLOutputElement with report_validity(self : Self) -> Bool {
  html_output_element_report_validity_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOutputElement.setCustomValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/setCustomValidity)
impl THTMLOutputElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_output_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}

///|
/// [HTMLOutputElement.labels](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement/labels)
impl THTMLOutputElement with labels(self : Self) -> NodeList {
  html_output_element_labels_ffi(TJsValue::to_js(self)).unsafe_cast()
}
