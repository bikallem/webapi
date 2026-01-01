// Do not edit. This file is generated.
// MoonBit type: HTMLButtonElement
// Specifications: html.idl

///|
#external
pub type HTMLButtonElement

///|
pub impl TJsValue for HTMLButtonElement with to_js(self : HTMLButtonElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLButtonElement] HTMLButtonElement::into(
  self : HTMLButtonElement,
) -> T = "%identity"

///|
pub impl THTMLButtonElement for HTMLButtonElement

///|
pub impl THTMLElement for HTMLButtonElement

///|
pub impl TElement for HTMLButtonElement

///|
pub impl TNode for HTMLButtonElement

///|
pub impl TEventTarget for HTMLButtonElement

///|
extern "js" fn html_button_element_new_ffi() -> HTMLButtonElement = "() => new HTMLButtonElement()"

///|
pub fn HTMLButtonElement::new() -> HTMLButtonElement {
  html_button_element_new_ffi()
}

///|
pub trait THTMLButtonElement: THTMLElement {
  command(self : Self) -> String = _
  set_command(self : Self, command : String) -> Unit = _
  command_for_element(self : Self) -> Element = _
  set_command_for_element(self : Self, command_for_element : Element) -> Unit = _
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  form(self : Self) -> HTMLFormElement = _
  form_action(self : Self) -> String = _
  set_form_action(self : Self, form_action : String) -> Unit = _
  form_enctype(self : Self) -> String = _
  set_form_enctype(self : Self, form_enctype : String) -> Unit = _
  form_method(self : Self) -> String = _
  set_form_method(self : Self, form_method : String) -> Unit = _
  form_no_validate(self : Self) -> Bool = _
  set_form_no_validate(self : Self, form_no_validate : Bool) -> Unit = _
  form_target(self : Self) -> String = _
  set_form_target(self : Self, form_target : String) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  will_validate(self : Self) -> Bool = _
  validity(self : Self) -> ValidityState = _
  validation_message(self : Self) -> String = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
  labels(self : Self) -> NodeList = _
  popover_target_element(self : Self) -> Element = _
  set_popover_target_element(self : Self, popover_target_element : Element) -> Unit = _
  popover_target_action(self : Self) -> String = _
  set_popover_target_action(self : Self, popover_target_action : String) -> Unit = _
}

///|
extern "js" fn html_button_element_command_ffi(obj : JsValue) -> String = "(obj) => obj.command"

///|
impl THTMLButtonElement with command(self : Self) -> String {
  html_button_element_command_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_command_ffi(
  obj : JsValue,
  command : JsValue,
) -> Unit = "(obj, command) => { obj.command = command; }"

///|
impl THTMLButtonElement with set_command(self : Self, command : String) -> Unit {
  html_button_element_set_command_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command),
  )
}

///|
extern "js" fn html_button_element_command_for_element_ffi(
  obj : JsValue,
) -> Element = "(obj) => obj.commandForElement"

///|
impl THTMLButtonElement with command_for_element(self : Self) -> Element {
  html_button_element_command_for_element_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_command_for_element_ffi(
  obj : JsValue,
  command_for_element : JsValue,
) -> Unit = "(obj, commandForElement) => { obj.commandForElement = command_for_element; }"

///|
impl THTMLButtonElement with set_command_for_element(
  self : Self,
  command_for_element : Element,
) -> Unit {
  html_button_element_set_command_for_element_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(command_for_element),
  )
}

///|
extern "js" fn html_button_element_disabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.disabled"

///|
impl THTMLButtonElement with disabled(self : Self) -> Bool {
  html_button_element_disabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
impl THTMLButtonElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_button_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
extern "js" fn html_button_element_form_ffi(obj : JsValue) -> HTMLFormElement = "(obj) => obj.form"

///|
impl THTMLButtonElement with form(self : Self) -> HTMLFormElement {
  html_button_element_form_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_form_action_ffi(obj : JsValue) -> String = "(obj) => obj.formAction"

///|
impl THTMLButtonElement with form_action(self : Self) -> String {
  html_button_element_form_action_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_form_action_ffi(
  obj : JsValue,
  form_action : JsValue,
) -> Unit = "(obj, formAction) => { obj.formAction = form_action; }"

///|
impl THTMLButtonElement with set_form_action(self : Self, form_action : String) -> Unit {
  html_button_element_set_form_action_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(form_action),
  )
}

///|
extern "js" fn html_button_element_form_enctype_ffi(obj : JsValue) -> String = "(obj) => obj.formEnctype"

///|
impl THTMLButtonElement with form_enctype(self : Self) -> String {
  html_button_element_form_enctype_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_form_enctype_ffi(
  obj : JsValue,
  form_enctype : JsValue,
) -> Unit = "(obj, formEnctype) => { obj.formEnctype = form_enctype; }"

///|
impl THTMLButtonElement with set_form_enctype(
  self : Self,
  form_enctype : String,
) -> Unit {
  html_button_element_set_form_enctype_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(form_enctype),
  )
}

///|
extern "js" fn html_button_element_form_method_ffi(obj : JsValue) -> String = "(obj) => obj.formMethod"

///|
impl THTMLButtonElement with form_method(self : Self) -> String {
  html_button_element_form_method_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_form_method_ffi(
  obj : JsValue,
  form_method : JsValue,
) -> Unit = "(obj, formMethod) => { obj.formMethod = form_method; }"

///|
impl THTMLButtonElement with set_form_method(self : Self, form_method : String) -> Unit {
  html_button_element_set_form_method_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(form_method),
  )
}

///|
extern "js" fn html_button_element_form_no_validate_ffi(obj : JsValue) -> Bool = "(obj) => obj.formNoValidate"

///|
impl THTMLButtonElement with form_no_validate(self : Self) -> Bool {
  html_button_element_form_no_validate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_form_no_validate_ffi(
  obj : JsValue,
  form_no_validate : JsValue,
) -> Unit = "(obj, formNoValidate) => { obj.formNoValidate = form_no_validate; }"

///|
impl THTMLButtonElement with set_form_no_validate(
  self : Self,
  form_no_validate : Bool,
) -> Unit {
  html_button_element_set_form_no_validate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(form_no_validate),
  )
}

///|
extern "js" fn html_button_element_form_target_ffi(obj : JsValue) -> String = "(obj) => obj.formTarget"

///|
impl THTMLButtonElement with form_target(self : Self) -> String {
  html_button_element_form_target_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_form_target_ffi(
  obj : JsValue,
  form_target : JsValue,
) -> Unit = "(obj, formTarget) => { obj.formTarget = form_target; }"

///|
impl THTMLButtonElement with set_form_target(self : Self, form_target : String) -> Unit {
  html_button_element_set_form_target_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(form_target),
  )
}

///|
extern "js" fn html_button_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLButtonElement with name(self : Self) -> String {
  html_button_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLButtonElement with set_name(self : Self, name : String) -> Unit {
  html_button_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn html_button_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl THTMLButtonElement with type_(self : Self) -> String {
  html_button_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type_; }"

///|
impl THTMLButtonElement with set_type_(self : Self, type_ : String) -> Unit {
  html_button_element_set_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
  )
}

///|
extern "js" fn html_button_element_value_ffi(obj : JsValue) -> String = "(obj) => obj.value"

///|
impl THTMLButtonElement with value(self : Self) -> String {
  html_button_element_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl THTMLButtonElement with set_value(self : Self, value : String) -> Unit {
  html_button_element_set_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn html_button_element_will_validate_ffi(obj : JsValue) -> Bool = "(obj) => obj.willValidate"

///|
impl THTMLButtonElement with will_validate(self : Self) -> Bool {
  html_button_element_will_validate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_validity_ffi(obj : JsValue) -> ValidityState = "(obj) => obj.validity"

///|
impl THTMLButtonElement with validity(self : Self) -> ValidityState {
  html_button_element_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_validation_message_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.validationMessage"

///|
impl THTMLButtonElement with validation_message(self : Self) -> String {
  html_button_element_validation_message_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity(obj)"

///|
impl THTMLButtonElement with check_validity(self : Self) -> Bool {
  html_button_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_report_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.reportValidity(obj)"

///|
impl THTMLButtonElement with report_validity(self : Self) -> Bool {
  html_button_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(obj, error)"

///|
impl THTMLButtonElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_button_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}

///|
extern "js" fn html_button_element_labels_ffi(obj : JsValue) -> NodeList = "(obj) => obj.labels"

///|
impl THTMLButtonElement with labels(self : Self) -> NodeList {
  html_button_element_labels_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_popover_target_element_ffi(
  obj : JsValue,
) -> Element = "(obj) => obj.popoverTargetElement"

///|
impl THTMLButtonElement with popover_target_element(self : Self) -> Element {
  html_button_element_popover_target_element_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_popover_target_element_ffi(
  obj : JsValue,
  popover_target_element : JsValue,
) -> Unit = "(obj, popoverTargetElement) => { obj.popoverTargetElement = popover_target_element; }"

///|
impl THTMLButtonElement with set_popover_target_element(
  self : Self,
  popover_target_element : Element,
) -> Unit {
  html_button_element_set_popover_target_element_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(popover_target_element),
  )
}

///|
extern "js" fn html_button_element_popover_target_action_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.popoverTargetAction"

///|
impl THTMLButtonElement with popover_target_action(self : Self) -> String {
  html_button_element_popover_target_action_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_button_element_set_popover_target_action_ffi(
  obj : JsValue,
  popover_target_action : JsValue,
) -> Unit = "(obj, popoverTargetAction) => { obj.popoverTargetAction = popover_target_action; }"

///|
impl THTMLButtonElement with set_popover_target_action(
  self : Self,
  popover_target_action : String,
) -> Unit {
  html_button_element_set_popover_target_action_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(popover_target_action),
  )
}
