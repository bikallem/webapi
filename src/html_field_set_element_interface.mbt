// Do not edit. This file is generated.
// MoonBit type: HTMLFieldSetElement
// Specifications: html.idl

///|
#external
pub type HTMLFieldSetElement

///|
pub impl TJsValue for HTMLFieldSetElement with to_js(self : HTMLFieldSetElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLFieldSetElement] HTMLFieldSetElement::into(
  self : HTMLFieldSetElement,
) -> T = "%identity"

///|
pub impl THTMLFieldSetElement for HTMLFieldSetElement

///|
pub impl THTMLElement for HTMLFieldSetElement

///|
pub impl TElement for HTMLFieldSetElement

///|
pub impl TNode for HTMLFieldSetElement

///|
pub impl TEventTarget for HTMLFieldSetElement

///|
extern "js" fn html_field_set_element_new_ffi() -> HTMLFieldSetElement = "() => new HTMLFieldSetElement()"

///|
pub fn HTMLFieldSetElement::new() -> HTMLFieldSetElement {
  html_field_set_element_new_ffi()
}

///|
pub trait THTMLFieldSetElement: THTMLElement {
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  form(self : Self) -> HTMLFormElement = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  type_(self : Self) -> String = _
  elements(self : Self) -> HTMLCollection = _
  will_validate(self : Self) -> Bool = _
  validity(self : Self) -> ValidityState = _
  validation_message(self : Self) -> String = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
}

///|
extern "js" fn html_field_set_element_disabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.disabled"

///|
impl THTMLFieldSetElement with disabled(self : Self) -> Bool {
  html_field_set_element_disabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_field_set_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
impl THTMLFieldSetElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_field_set_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
extern "js" fn html_field_set_element_form_ffi(
  obj : JsValue,
) -> HTMLFormElement = "(obj) => obj.form"

///|
impl THTMLFieldSetElement with form(self : Self) -> HTMLFormElement {
  html_field_set_element_form_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_field_set_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLFieldSetElement with name(self : Self) -> String {
  html_field_set_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_field_set_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLFieldSetElement with set_name(self : Self, name : String) -> Unit {
  html_field_set_element_set_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
extern "js" fn html_field_set_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl THTMLFieldSetElement with type_(self : Self) -> String {
  html_field_set_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_field_set_element_elements_ffi(
  obj : JsValue,
) -> HTMLCollection = "(obj) => obj.elements"

///|
impl THTMLFieldSetElement with elements(self : Self) -> HTMLCollection {
  html_field_set_element_elements_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_field_set_element_will_validate_ffi(obj : JsValue) -> Bool = "(obj) => obj.willValidate"

///|
impl THTMLFieldSetElement with will_validate(self : Self) -> Bool {
  html_field_set_element_will_validate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_field_set_element_validity_ffi(
  obj : JsValue,
) -> ValidityState = "(obj) => obj.validity"

///|
impl THTMLFieldSetElement with validity(self : Self) -> ValidityState {
  html_field_set_element_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_field_set_element_validation_message_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.validationMessage"

///|
impl THTMLFieldSetElement with validation_message(self : Self) -> String {
  html_field_set_element_validation_message_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_field_set_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity()"

///|
impl THTMLFieldSetElement with check_validity(self : Self) -> Bool {
  html_field_set_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_field_set_element_report_validity_ffi(
  obj : JsValue,
) -> Bool = "(obj) => obj.reportValidity()"

///|
impl THTMLFieldSetElement with report_validity(self : Self) -> Bool {
  html_field_set_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_field_set_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

///|
impl THTMLFieldSetElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_field_set_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}
