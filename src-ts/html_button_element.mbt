// Auto-generated MoonBit bindings for HTMLButtonElement

// Do not edit manually

///|
#external
pub type HTMLButtonElement

///|
pub trait THTMLButtonElement: TJsValue + THTMLElement {
  command(self : Self) -> String = _
  set_command(self : Self, value : String) -> Unit = _
  command_for_element(self : Self) -> Element? = _
  set_command_for_element(self : Self, value : Element) -> Unit = _
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, value : Bool) -> Unit = _
  form(self : Self) -> HTMLFormElement? = _
  form_action(self : Self) -> String = _
  set_form_action(self : Self, value : String) -> Unit = _
  form_enctype(self : Self) -> String = _
  set_form_enctype(self : Self, value : String) -> Unit = _
  form_method(self : Self) -> String = _
  set_form_method(self : Self, value : String) -> Unit = _
  form_no_validate(self : Self) -> Bool = _
  set_form_no_validate(self : Self, value : Bool) -> Unit = _
  form_target(self : Self) -> String = _
  set_form_target(self : Self, value : String) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, value : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, value : String) -> Unit = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  will_validate(self : Self) -> Bool = _
  validity(self : Self) -> JsValue = _
  validation_message(self : Self) -> String = _
  labels(self : Self) -> NodeList = _
  popover_target_element(self : Self) -> Element? = _
  set_popover_target_element(self : Self, value : Element) -> Unit = _
  popover_target_action(self : Self) -> String = _
  set_popover_target_action(self : Self, value : String) -> Unit = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
}

///|
pub impl TEventTarget for HTMLButtonElement

///|
pub impl TNode for HTMLButtonElement

///|
pub impl TElement for HTMLButtonElement

///|
pub impl THTMLElement for HTMLButtonElement

///|
pub impl THTMLButtonElement for HTMLButtonElement

///|
pub impl TJsValue for HTMLButtonElement with to_js(self : HTMLButtonElement) -> JsValue = "%identity"

///|
fn html_button_element_check_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLButtonElement" "checkValidity"

///|
impl THTMLButtonElement with check_validity(self : Self) -> Bool {
  html_button_element_check_validity_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn html_button_element_report_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLButtonElement" "reportValidity"

///|
impl THTMLButtonElement with report_validity(self : Self) -> Bool {
  html_button_element_report_validity_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn html_button_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "webapi_HTMLButtonElement" "setCustomValidity"

///|
impl THTMLButtonElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_button_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}

///|
fn html_button_element_command_ffi(obj : JsValue) -> String = "webapi_HTMLButtonElement" "command"

///|
impl THTMLButtonElement with command(self : Self) -> String {
  html_button_element_command_ffi(self.to_js())
}

///|
fn html_button_element_set_command_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLButtonElement" "set_command"

///|
impl THTMLButtonElement with set_command(self : Self, value : String) -> Unit {
  html_button_element_set_command_ffi(self.to_js(), value)
}

///|
fn html_button_element_command_for_element_ffi(obj : JsValue) -> JsValue = "webapi_HTMLButtonElement" "commandForElement"

///|
impl THTMLButtonElement with command_for_element(self : Self) -> Element? {
  html_button_element_command_for_element_ffi(self.to_js()).as_option()
}

///|
fn html_button_element_set_command_for_element_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLButtonElement" "set_commandForElement"

///|
impl THTMLButtonElement with set_command_for_element(
  self : Self,
  value : Element,
) -> Unit {
  html_button_element_set_command_for_element_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn html_button_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLButtonElement" "disabled"

///|
impl THTMLButtonElement with disabled(self : Self) -> Bool {
  html_button_element_disabled_ffi(self.to_js())
}

///|
fn html_button_element_set_disabled_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLButtonElement" "set_disabled"

///|
impl THTMLButtonElement with set_disabled(self : Self, value : Bool) -> Unit {
  html_button_element_set_disabled_ffi(self.to_js(), value)
}

///|
fn html_button_element_form_ffi(obj : JsValue) -> JsValue = "webapi_HTMLButtonElement" "form"

///|
impl THTMLButtonElement with form(self : Self) -> HTMLFormElement? {
  html_button_element_form_ffi(self.to_js()).as_option()
}

///|
fn html_button_element_form_action_ffi(obj : JsValue) -> String = "webapi_HTMLButtonElement" "formAction"

///|
impl THTMLButtonElement with form_action(self : Self) -> String {
  html_button_element_form_action_ffi(self.to_js())
}

///|
fn html_button_element_set_form_action_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLButtonElement" "set_formAction"

///|
impl THTMLButtonElement with set_form_action(self : Self, value : String) -> Unit {
  html_button_element_set_form_action_ffi(self.to_js(), value)
}

///|
fn html_button_element_form_enctype_ffi(obj : JsValue) -> String = "webapi_HTMLButtonElement" "formEnctype"

///|
impl THTMLButtonElement with form_enctype(self : Self) -> String {
  html_button_element_form_enctype_ffi(self.to_js())
}

///|
fn html_button_element_set_form_enctype_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLButtonElement" "set_formEnctype"

///|
impl THTMLButtonElement with set_form_enctype(self : Self, value : String) -> Unit {
  html_button_element_set_form_enctype_ffi(self.to_js(), value)
}

///|
fn html_button_element_form_method_ffi(obj : JsValue) -> String = "webapi_HTMLButtonElement" "formMethod"

///|
impl THTMLButtonElement with form_method(self : Self) -> String {
  html_button_element_form_method_ffi(self.to_js())
}

///|
fn html_button_element_set_form_method_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLButtonElement" "set_formMethod"

///|
impl THTMLButtonElement with set_form_method(self : Self, value : String) -> Unit {
  html_button_element_set_form_method_ffi(self.to_js(), value)
}

///|
fn html_button_element_form_no_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLButtonElement" "formNoValidate"

///|
impl THTMLButtonElement with form_no_validate(self : Self) -> Bool {
  html_button_element_form_no_validate_ffi(self.to_js())
}

///|
fn html_button_element_set_form_no_validate_ffi(
  obj : JsValue,
  value : Bool,
) -> Unit = "webapi_HTMLButtonElement" "set_formNoValidate"

///|
impl THTMLButtonElement with set_form_no_validate(self : Self, value : Bool) -> Unit {
  html_button_element_set_form_no_validate_ffi(self.to_js(), value)
}

///|
fn html_button_element_form_target_ffi(obj : JsValue) -> String = "webapi_HTMLButtonElement" "formTarget"

///|
impl THTMLButtonElement with form_target(self : Self) -> String {
  html_button_element_form_target_ffi(self.to_js())
}

///|
fn html_button_element_set_form_target_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLButtonElement" "set_formTarget"

///|
impl THTMLButtonElement with set_form_target(self : Self, value : String) -> Unit {
  html_button_element_set_form_target_ffi(self.to_js(), value)
}

///|
fn html_button_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLButtonElement" "name"

///|
impl THTMLButtonElement with name(self : Self) -> String {
  html_button_element_name_ffi(self.to_js())
}

///|
fn html_button_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLButtonElement" "set_name"

///|
impl THTMLButtonElement with set_name(self : Self, value : String) -> Unit {
  html_button_element_set_name_ffi(self.to_js(), value)
}

///|
fn html_button_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLButtonElement" "type"

///|
impl THTMLButtonElement with type_(self : Self) -> String {
  html_button_element_type_ffi(self.to_js())
}

///|
fn html_button_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLButtonElement" "set_type"

///|
impl THTMLButtonElement with set_type_(self : Self, value : String) -> Unit {
  html_button_element_set_type_ffi(self.to_js(), value)
}

///|
fn html_button_element_value_ffi(obj : JsValue) -> String = "webapi_HTMLButtonElement" "value"

///|
impl THTMLButtonElement with value(self : Self) -> String {
  html_button_element_value_ffi(self.to_js())
}

///|
fn html_button_element_set_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLButtonElement" "set_value"

///|
impl THTMLButtonElement with set_value(self : Self, value : String) -> Unit {
  html_button_element_set_value_ffi(self.to_js(), value)
}

///|
fn html_button_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLButtonElement" "willValidate"

///|
impl THTMLButtonElement with will_validate(self : Self) -> Bool {
  html_button_element_will_validate_ffi(self.to_js())
}

///|
fn html_button_element_validity_ffi(obj : JsValue) -> JsValue = "webapi_HTMLButtonElement" "validity"

///|
impl THTMLButtonElement with validity(self : Self) -> JsValue {
  html_button_element_validity_ffi(self.to_js())
}

///|
fn html_button_element_validation_message_ffi(obj : JsValue) -> String = "webapi_HTMLButtonElement" "validationMessage"

///|
impl THTMLButtonElement with validation_message(self : Self) -> String {
  html_button_element_validation_message_ffi(self.to_js())
}

///|
fn html_button_element_labels_ffi(obj : JsValue) -> JsValue = "webapi_HTMLButtonElement" "labels"

///|
impl THTMLButtonElement with labels(self : Self) -> NodeList {
  html_button_element_labels_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_button_element_popover_target_element_ffi(obj : JsValue) -> JsValue = "webapi_HTMLButtonElement" "popoverTargetElement"

///|
impl THTMLButtonElement with popover_target_element(self : Self) -> Element? {
  html_button_element_popover_target_element_ffi(self.to_js()).as_option()
}

///|
fn html_button_element_set_popover_target_element_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "webapi_HTMLButtonElement" "set_popoverTargetElement"

///|
impl THTMLButtonElement with set_popover_target_element(
  self : Self,
  value : Element,
) -> Unit {
  html_button_element_set_popover_target_element_ffi(
    self.to_js(),
    TJsValue::to_js(value),
  )
}

///|
fn html_button_element_popover_target_action_ffi(obj : JsValue) -> String = "webapi_HTMLButtonElement" "popoverTargetAction"

///|
impl THTMLButtonElement with popover_target_action(self : Self) -> String {
  html_button_element_popover_target_action_ffi(self.to_js())
}

///|
fn html_button_element_set_popover_target_action_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLButtonElement" "set_popoverTargetAction"

///|
impl THTMLButtonElement with set_popover_target_action(
  self : Self,
  value : String,
) -> Unit {
  html_button_element_set_popover_target_action_ffi(self.to_js(), value)
}
