// Auto-generated MoonBit bindings for HTMLFieldSetElement interface
// Do not edit manually

#external
pub type HTMLFieldSetElement

pub impl TJsValue for HTMLFieldSetElement with to_js(self: HTMLFieldSetElement) -> JsValue = "%identity"


pub fn[T: THTMLFieldSetElement] HTMLFieldSetElement::into(self : HTMLFieldSetElement) -> T = "%identity"
pub impl THTMLFieldSetElement for HTMLFieldSetElement

pub fn HTMLFieldSetElement::new() -> HTMLFieldSetElement = "webapi_HTMLFieldSetElement" "new"

pub trait THTMLFieldSetElement: TJsValue + TTHTMLElement {
  disabled(self: Self) -> Bool = _
  set_disabled(self: Self, value : Bool) -> Unit = _
  form(self: Self) -> &THTMLFormElement = _
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  type_(self: Self) -> String = _
  elements(self: Self) -> &THTMLCollection = _
  will_validate(self: Self) -> Bool = _
  validity(self: Self) -> ValidityState = _
  validation_message(self: Self) -> String = _
  check_validity(self: Self) -> Bool = _
  report_validity(self: Self) -> Bool = _
  set_custom_validity(self: Self, error : String) -> Unit = _
}

///|
fn h_t_m_l_field_set_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLFieldSetElement" "disabled"

///|
impl THTMLFieldSetElement with disabled(self : Self) -> Bool {
  h_t_m_l_field_set_element_disabled_ffi(self.to_js())
}

///|
fn h_t_m_l_field_set_element_set_disabled_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLFieldSetElement" "set_disabled"

///|
impl THTMLFieldSetElement with set_disabled(self : Self, value : Bool) -> Unit {
  h_t_m_l_field_set_element_set_disabled_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_field_set_element_form_ffi(obj : JsValue) -> JsValue = "webapi_HTMLFieldSetElement" "form"

///|
impl THTMLFieldSetElement with form(self : Self) -> &THTMLFormElement {
  h_t_m_l_field_set_element_form_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_field_set_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLFieldSetElement" "name"

///|
impl THTMLFieldSetElement with name(self : Self) -> String {
  h_t_m_l_field_set_element_name_ffi(self.to_js())
}

///|
fn h_t_m_l_field_set_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFieldSetElement" "set_name"

///|
impl THTMLFieldSetElement with set_name(self : Self, value : String) -> Unit {
  h_t_m_l_field_set_element_set_name_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_field_set_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLFieldSetElement" "type"

///|
impl THTMLFieldSetElement with type_(self : Self) -> String {
  h_t_m_l_field_set_element_type_ffi(self.to_js())
}

///|
fn h_t_m_l_field_set_element_elements_ffi(obj : JsValue) -> JsValue = "webapi_HTMLFieldSetElement" "elements"

///|
impl THTMLFieldSetElement with elements(self : Self) -> &THTMLCollection {
  h_t_m_l_field_set_element_elements_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_field_set_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLFieldSetElement" "willValidate"

///|
impl THTMLFieldSetElement with will_validate(self : Self) -> Bool {
  h_t_m_l_field_set_element_will_validate_ffi(self.to_js())
}

///|
fn h_t_m_l_field_set_element_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLFieldSetElement" "validity"

///|
impl THTMLFieldSetElement with validity(self : Self) -> ValidityState {
  h_t_m_l_field_set_element_validity_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_field_set_element_validation_message_ffi(obj : JsValue) -> String = "webapi_HTMLFieldSetElement" "validationMessage"

///|
impl THTMLFieldSetElement with validation_message(self : Self) -> String {
  h_t_m_l_field_set_element_validation_message_ffi(self.to_js())
}

///|
fn h_t_m_l_field_set_element_check_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLFieldSetElement" "checkValidity"

///|
impl THTMLFieldSetElement with check_validity(self : Self) -> Bool {
  h_t_m_l_field_set_element_check_validity_ffi(self.to_js())
}

///|
fn h_t_m_l_field_set_element_report_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLFieldSetElement" "reportValidity"

///|
impl THTMLFieldSetElement with report_validity(self : Self) -> Bool {
  h_t_m_l_field_set_element_report_validity_ffi(self.to_js())
}

///|
fn h_t_m_l_field_set_element_set_custom_validity_ffi(obj : JsValue, error : JsValue) -> Unit = "webapi_HTMLFieldSetElement" "setCustomValidity"

///|
impl THTMLFieldSetElement with set_custom_validity(self : Self, error : String) -> Unit {
  h_t_m_l_field_set_element_set_custom_validity_ffi(self.to_js(), TJsValue::to_js(error))
}