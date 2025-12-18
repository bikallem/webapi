// Auto-generated MoonBit bindings for HTMLOutputElement interface
// Do not edit manually

#external
pub type HTMLOutputElement

pub impl TJsValue for HTMLOutputElement with to_js(self: HTMLOutputElement) -> JsValue = "%identity"


pub fn[T: THTMLOutputElement] HTMLOutputElement::into(self : HTMLOutputElement) -> T = "%identity"
pub impl THTMLOutputElement for HTMLOutputElement

pub fn HTMLOutputElement::new() -> HTMLOutputElement = "webapi_HTMLOutputElement" "new"

pub trait THTMLOutputElement: TJsValue + TTHTMLElement {
  html_for(self: Self) -> &TDOMTokenList = _
  form(self: Self) -> &THTMLFormElement = _
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  type_(self: Self) -> String = _
  default_value(self: Self) -> String = _
  set_default_value(self: Self, value : String) -> Unit = _
  value(self: Self) -> String = _
  set_value(self: Self, value : String) -> Unit = _
  will_validate(self: Self) -> Bool = _
  validity(self: Self) -> ValidityState = _
  validation_message(self: Self) -> String = _
  check_validity(self: Self) -> Bool = _
  report_validity(self: Self) -> Bool = _
  set_custom_validity(self: Self, error : String) -> Unit = _
  labels(self: Self) -> &TNodeList = _
}

///|
fn h_t_m_l_output_element_html_for_ffi(obj : JsValue) -> JsValue = "webapi_HTMLOutputElement" "htmlFor"

///|
impl THTMLOutputElement with html_for(self : Self) -> &TDOMTokenList {
  h_t_m_l_output_element_html_for_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_output_element_form_ffi(obj : JsValue) -> JsValue = "webapi_HTMLOutputElement" "form"

///|
impl THTMLOutputElement with form(self : Self) -> &THTMLFormElement {
  h_t_m_l_output_element_form_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_output_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLOutputElement" "name"

///|
impl THTMLOutputElement with name(self : Self) -> String {
  h_t_m_l_output_element_name_ffi(self.to_js())
}

///|
fn h_t_m_l_output_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLOutputElement" "set_name"

///|
impl THTMLOutputElement with set_name(self : Self, value : String) -> Unit {
  h_t_m_l_output_element_set_name_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_output_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLOutputElement" "type"

///|
impl THTMLOutputElement with type_(self : Self) -> String {
  h_t_m_l_output_element_type_ffi(self.to_js())
}

///|
fn h_t_m_l_output_element_default_value_ffi(obj : JsValue) -> String = "webapi_HTMLOutputElement" "defaultValue"

///|
impl THTMLOutputElement with default_value(self : Self) -> String {
  h_t_m_l_output_element_default_value_ffi(self.to_js())
}

///|
fn h_t_m_l_output_element_set_default_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLOutputElement" "set_defaultValue"

///|
impl THTMLOutputElement with set_default_value(self : Self, value : String) -> Unit {
  h_t_m_l_output_element_set_default_value_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_output_element_value_ffi(obj : JsValue) -> String = "webapi_HTMLOutputElement" "value"

///|
impl THTMLOutputElement with value(self : Self) -> String {
  h_t_m_l_output_element_value_ffi(self.to_js())
}

///|
fn h_t_m_l_output_element_set_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLOutputElement" "set_value"

///|
impl THTMLOutputElement with set_value(self : Self, value : String) -> Unit {
  h_t_m_l_output_element_set_value_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_output_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLOutputElement" "willValidate"

///|
impl THTMLOutputElement with will_validate(self : Self) -> Bool {
  h_t_m_l_output_element_will_validate_ffi(self.to_js())
}

///|
fn h_t_m_l_output_element_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLOutputElement" "validity"

///|
impl THTMLOutputElement with validity(self : Self) -> ValidityState {
  h_t_m_l_output_element_validity_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_output_element_validation_message_ffi(obj : JsValue) -> String = "webapi_HTMLOutputElement" "validationMessage"

///|
impl THTMLOutputElement with validation_message(self : Self) -> String {
  h_t_m_l_output_element_validation_message_ffi(self.to_js())
}

///|
fn h_t_m_l_output_element_labels_ffi(obj : JsValue) -> JsValue = "webapi_HTMLOutputElement" "labels"

///|
impl THTMLOutputElement with labels(self : Self) -> &TNodeList {
  h_t_m_l_output_element_labels_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_output_element_check_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLOutputElement" "checkValidity"

///|
impl THTMLOutputElement with check_validity(self : Self) -> Bool {
  h_t_m_l_output_element_check_validity_ffi(self.to_js())
}

///|
fn h_t_m_l_output_element_report_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLOutputElement" "reportValidity"

///|
impl THTMLOutputElement with report_validity(self : Self) -> Bool {
  h_t_m_l_output_element_report_validity_ffi(self.to_js())
}

///|
fn h_t_m_l_output_element_set_custom_validity_ffi(obj : JsValue, error : JsValue) -> Unit = "webapi_HTMLOutputElement" "setCustomValidity"

///|
impl THTMLOutputElement with set_custom_validity(self : Self, error : String) -> Unit {
  h_t_m_l_output_element_set_custom_validity_ffi(self.to_js(), TJsValue::to_js(error))
}