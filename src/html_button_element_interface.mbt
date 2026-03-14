// Do not edit. This file is generated.
// MoonBit type: HTMLButtonElement
// Specifications: html.idl

/// [HTMLButtonElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement)
#external
pub type HTMLButtonElement

pub impl TJsValue for HTMLButtonElement with to_js(self: HTMLButtonElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLButtonElement with from_js_any(value : JsAny) -> HTMLButtonElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLButtonElement] HTMLButtonElement::into(self : HTMLButtonElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLButtonElement] HTMLButtonElement::unsafe_into(self : HTMLButtonElement) -> T = "%identity"

pub impl HasConstructor for HTMLButtonElement with constructor_name() { "HTMLButtonElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLButtonElement + HasConstructor] HTMLButtonElement::try_into(self : HTMLButtonElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLButtonElement for HTMLButtonElement

pub impl THTMLElement for HTMLButtonElement

pub impl TElement for HTMLButtonElement

pub impl TNode for HTMLButtonElement

pub impl TEventTarget for HTMLButtonElement

pub fn HTMLButtonElement::new() -> HTMLButtonElement {
  html_button_element_new_ffi()
}

/// [HTMLButtonElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement) interface.
pub trait THTMLButtonElement: THTMLElement {
  command(self : Self) -> String = _
  set_command(self : Self, command : String) -> Unit = _
  command_for_element(self : Self) -> Element = _
  set_command_for_element(self : Self, command_for_element : &TElement) -> Unit = _
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
  set_popover_target_element(self : Self, popover_target_element : &TElement) -> Unit = _
  popover_target_action(self : Self) -> String = _
  set_popover_target_action(self : Self, popover_target_action : String) -> Unit = _
}

/// [HTMLButtonElement.command](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/command)
impl THTMLButtonElement with command(self : Self) -> String {
  html_button_element_command_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.command](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/command)
impl THTMLButtonElement with set_command(self : Self, 
command : String) -> Unit {
  html_button_element_set_command_ffi(TJsValue::to_js(self), TJsValue::to_js(command))
}

/// [HTMLButtonElement.commandForElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/commandForElement)
impl THTMLButtonElement with command_for_element(self : Self) -> Element {
  html_button_element_command_for_element_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.commandForElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/commandForElement)
impl THTMLButtonElement with set_command_for_element(self : Self, 
command_for_element : &TElement) -> Unit {
  html_button_element_set_command_for_element_ffi(TJsValue::to_js(self), TJsValue::to_js(command_for_element))
}

/// [HTMLButtonElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/disabled)
impl THTMLButtonElement with disabled(self : Self) -> Bool {
  html_button_element_disabled_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/disabled)
impl THTMLButtonElement with set_disabled(self : Self, 
disabled : Bool) -> Unit {
  html_button_element_set_disabled_ffi(TJsValue::to_js(self), TJsValue::to_js(disabled))
}

/// [HTMLButtonElement.form](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/form)
impl THTMLButtonElement with form(self : Self) -> HTMLFormElement {
  html_button_element_form_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.formAction](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/formAction)
impl THTMLButtonElement with form_action(self : Self) -> String {
  html_button_element_form_action_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.formAction](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/formAction)
impl THTMLButtonElement with set_form_action(self : Self, 
form_action : String) -> Unit {
  html_button_element_set_form_action_ffi(TJsValue::to_js(self), TJsValue::to_js(form_action))
}

/// [HTMLButtonElement.formEnctype](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/formEnctype)
impl THTMLButtonElement with form_enctype(self : Self) -> String {
  html_button_element_form_enctype_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.formEnctype](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/formEnctype)
impl THTMLButtonElement with set_form_enctype(self : Self, 
form_enctype : String) -> Unit {
  html_button_element_set_form_enctype_ffi(TJsValue::to_js(self), TJsValue::to_js(form_enctype))
}

/// [HTMLButtonElement.formMethod](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/formMethod)
impl THTMLButtonElement with form_method(self : Self) -> String {
  html_button_element_form_method_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.formMethod](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/formMethod)
impl THTMLButtonElement with set_form_method(self : Self, 
form_method : String) -> Unit {
  html_button_element_set_form_method_ffi(TJsValue::to_js(self), TJsValue::to_js(form_method))
}

/// [HTMLButtonElement.formNoValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/formNoValidate)
impl THTMLButtonElement with form_no_validate(self : Self) -> Bool {
  html_button_element_form_no_validate_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.formNoValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/formNoValidate)
impl THTMLButtonElement with set_form_no_validate(self : Self, 
form_no_validate : Bool) -> Unit {
  html_button_element_set_form_no_validate_ffi(TJsValue::to_js(self), TJsValue::to_js(form_no_validate))
}

/// [HTMLButtonElement.formTarget](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/formTarget)
impl THTMLButtonElement with form_target(self : Self) -> String {
  html_button_element_form_target_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.formTarget](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/formTarget)
impl THTMLButtonElement with set_form_target(self : Self, 
form_target : String) -> Unit {
  html_button_element_set_form_target_ffi(TJsValue::to_js(self), TJsValue::to_js(form_target))
}

/// [HTMLButtonElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/name)
impl THTMLButtonElement with name(self : Self) -> String {
  html_button_element_name_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/name)
impl THTMLButtonElement with set_name(self : Self, 
name : String) -> Unit {
  html_button_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLButtonElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/type)
impl THTMLButtonElement with type_(self : Self) -> String {
  html_button_element_type_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/type)
impl THTMLButtonElement with set_type_(self : Self, 
type_ : String) -> Unit {
  html_button_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [HTMLButtonElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/value)
impl THTMLButtonElement with value(self : Self) -> String {
  html_button_element_value_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/value)
impl THTMLButtonElement with set_value(self : Self, 
value : String) -> Unit {
  html_button_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

/// [HTMLButtonElement.willValidate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/willValidate)
impl THTMLButtonElement with will_validate(self : Self) -> Bool {
  html_button_element_will_validate_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.validity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/validity)
impl THTMLButtonElement with validity(self : Self) -> ValidityState {
  html_button_element_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.validationMessage](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/validationMessage)
impl THTMLButtonElement with validation_message(self : Self) -> String {
  html_button_element_validation_message_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.checkValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/checkValidity)
impl THTMLButtonElement with check_validity(self : Self) -> Bool {
  html_button_element_check_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.reportValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/reportValidity)
impl THTMLButtonElement with report_validity(self : Self) -> Bool {
  html_button_element_report_validity_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.setCustomValidity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/setCustomValidity)
impl THTMLButtonElement with set_custom_validity(self : Self, 
error : String) -> Unit {
  html_button_element_set_custom_validity_ffi(TJsValue::to_js(self), TJsValue::to_js(error))
}

/// [HTMLButtonElement.labels](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/labels)
impl THTMLButtonElement with labels(self : Self) -> NodeList {
  html_button_element_labels_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.popoverTargetElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/popoverTargetElement)
impl THTMLButtonElement with popover_target_element(self : Self) -> Element {
  html_button_element_popover_target_element_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.popoverTargetElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/popoverTargetElement)
impl THTMLButtonElement with set_popover_target_element(self : Self, 
popover_target_element : &TElement) -> Unit {
  html_button_element_set_popover_target_element_ffi(TJsValue::to_js(self), TJsValue::to_js(popover_target_element))
}

/// [HTMLButtonElement.popoverTargetAction](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/popoverTargetAction)
impl THTMLButtonElement with popover_target_action(self : Self) -> String {
  html_button_element_popover_target_action_ffi(TJsValue::to_js(self))
}

/// [HTMLButtonElement.popoverTargetAction](https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement/popoverTargetAction)
impl THTMLButtonElement with set_popover_target_action(self : Self, 
popover_target_action : String) -> Unit {
  html_button_element_set_popover_target_action_ffi(TJsValue::to_js(self), TJsValue::to_js(popover_target_action))
}

#cfg(target="js")
extern "js" fn html_button_element_new_ffi() -> HTMLButtonElement = "() => new HTMLButtonElement()"

#cfg(target="js")
extern "js" fn html_button_element_command_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.command"

///|
#cfg(target="js")
fn html_button_element_command_ffi(obj: JsValue) -> String {
  html_button_element_command_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_command_ffi(obj: JsValue, command: JsValue) -> Unit = "(obj, command) => { obj.command = command; }"

#cfg(target="js")
extern "js" fn html_button_element_command_for_element_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.commandForElement"

///|
#cfg(target="js")
fn html_button_element_command_for_element_ffi(obj: JsValue) -> Element {
  html_button_element_command_for_element_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_command_for_element_ffi(obj: JsValue, command_for_element: JsValue) -> Unit = "(obj, commandForElement) => { obj.commandForElement = commandForElement; }"

#cfg(target="js")
extern "js" fn html_button_element_disabled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.disabled"

///|
#cfg(target="js")
fn html_button_element_disabled_ffi(obj: JsValue) -> Bool {
  html_button_element_disabled_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

#cfg(target="js")
extern "js" fn html_button_element_form_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.form"

///|
#cfg(target="js")
fn html_button_element_form_ffi(obj: JsValue) -> HTMLFormElement {
  html_button_element_form_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_form_action_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formAction"

///|
#cfg(target="js")
fn html_button_element_form_action_ffi(obj: JsValue) -> String {
  html_button_element_form_action_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_form_action_ffi(obj: JsValue, form_action: JsValue) -> Unit = "(obj, formAction) => { obj.formAction = formAction; }"

#cfg(target="js")
extern "js" fn html_button_element_form_enctype_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formEnctype"

///|
#cfg(target="js")
fn html_button_element_form_enctype_ffi(obj: JsValue) -> String {
  html_button_element_form_enctype_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_form_enctype_ffi(obj: JsValue, form_enctype: JsValue) -> Unit = "(obj, formEnctype) => { obj.formEnctype = formEnctype; }"

#cfg(target="js")
extern "js" fn html_button_element_form_method_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formMethod"

///|
#cfg(target="js")
fn html_button_element_form_method_ffi(obj: JsValue) -> String {
  html_button_element_form_method_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_form_method_ffi(obj: JsValue, form_method: JsValue) -> Unit = "(obj, formMethod) => { obj.formMethod = formMethod; }"

#cfg(target="js")
extern "js" fn html_button_element_form_no_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formNoValidate"

///|
#cfg(target="js")
fn html_button_element_form_no_validate_ffi(obj: JsValue) -> Bool {
  html_button_element_form_no_validate_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_form_no_validate_ffi(obj: JsValue, form_no_validate: JsValue) -> Unit = "(obj, formNoValidate) => { obj.formNoValidate = formNoValidate; }"

#cfg(target="js")
extern "js" fn html_button_element_form_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formTarget"

///|
#cfg(target="js")
fn html_button_element_form_target_ffi(obj: JsValue) -> String {
  html_button_element_form_target_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_form_target_ffi(obj: JsValue, form_target: JsValue) -> Unit = "(obj, formTarget) => { obj.formTarget = formTarget; }"

#cfg(target="js")
extern "js" fn html_button_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_button_element_name_ffi(obj: JsValue) -> String {
  html_button_element_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

#cfg(target="js")
extern "js" fn html_button_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_button_element_type_ffi(obj: JsValue) -> String {
  html_button_element_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

#cfg(target="js")
extern "js" fn html_button_element_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn html_button_element_value_ffi(obj: JsValue) -> String {
  html_button_element_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

#cfg(target="js")
extern "js" fn html_button_element_will_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.willValidate"

///|
#cfg(target="js")
fn html_button_element_will_validate_ffi(obj: JsValue) -> Bool {
  html_button_element_will_validate_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validity"

///|
#cfg(target="js")
fn html_button_element_validity_ffi(obj: JsValue) -> ValidityState {
  html_button_element_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_validation_message_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validationMessage"

///|
#cfg(target="js")
fn html_button_element_validation_message_ffi(obj: JsValue) -> String {
  html_button_element_validation_message_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_check_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
#cfg(target="js")
fn html_button_element_check_validity_ffi(obj: JsValue) -> Bool {
  html_button_element_check_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_report_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

///|
#cfg(target="js")
fn html_button_element_report_validity_ffi(obj: JsValue) -> Bool {
  html_button_element_report_validity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

#cfg(target="js")
extern "js" fn html_button_element_labels_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.labels"

///|
#cfg(target="js")
fn html_button_element_labels_ffi(obj: JsValue) -> NodeList {
  html_button_element_labels_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_popover_target_element_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.popoverTargetElement"

///|
#cfg(target="js")
fn html_button_element_popover_target_element_ffi(obj: JsValue) -> Element {
  html_button_element_popover_target_element_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_popover_target_element_ffi(obj: JsValue, popover_target_element: JsValue) -> Unit = "(obj, popoverTargetElement) => { obj.popoverTargetElement = popoverTargetElement; }"

#cfg(target="js")
extern "js" fn html_button_element_popover_target_action_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.popoverTargetAction"

///|
#cfg(target="js")
fn html_button_element_popover_target_action_ffi(obj: JsValue) -> String {
  html_button_element_popover_target_action_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_button_element_set_popover_target_action_ffi(obj: JsValue, popover_target_action: JsValue) -> Unit = "(obj, popoverTargetAction) => { obj.popoverTargetAction = popoverTargetAction; }"

#cfg(target="wasm-gc")
fn html_button_element_new_ffi() -> HTMLButtonElement = "webapi_HTMLButtonElement" "new"

#cfg(target="wasm-gc")
fn html_button_element_command_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLButtonElement" "get_command"

///|
#cfg(target="wasm-gc")
fn html_button_element_command_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_button_element_command_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_button_element_set_command_ffi(obj: JsValue, command: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_command"

#cfg(target="wasm-gc")
fn html_button_element_command_for_element_ffi(obj: JsValue) -> Element = "webapi_HTMLButtonElement" "get_commandForElement"

#cfg(target="wasm-gc")
fn html_button_element_set_command_for_element_ffi(obj: JsValue, command_for_element: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_commandForElement"

#cfg(target="wasm-gc")
fn html_button_element_disabled_ffi(obj: JsValue) -> Bool = "webapi_HTMLButtonElement" "get_disabled"

#cfg(target="wasm-gc")
fn html_button_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_disabled"

#cfg(target="wasm-gc")
fn html_button_element_form_ffi(obj: JsValue) -> HTMLFormElement = "webapi_HTMLButtonElement" "get_form"

#cfg(target="wasm-gc")
fn html_button_element_form_action_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLButtonElement" "get_formAction"

///|
#cfg(target="wasm-gc")
fn html_button_element_form_action_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_button_element_form_action_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_button_element_set_form_action_ffi(obj: JsValue, form_action: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_formAction"

#cfg(target="wasm-gc")
fn html_button_element_form_enctype_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLButtonElement" "get_formEnctype"

///|
#cfg(target="wasm-gc")
fn html_button_element_form_enctype_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_button_element_form_enctype_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_button_element_set_form_enctype_ffi(obj: JsValue, form_enctype: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_formEnctype"

#cfg(target="wasm-gc")
fn html_button_element_form_method_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLButtonElement" "get_formMethod"

///|
#cfg(target="wasm-gc")
fn html_button_element_form_method_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_button_element_form_method_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_button_element_set_form_method_ffi(obj: JsValue, form_method: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_formMethod"

#cfg(target="wasm-gc")
fn html_button_element_form_no_validate_ffi(obj: JsValue) -> Bool = "webapi_HTMLButtonElement" "get_formNoValidate"

#cfg(target="wasm-gc")
fn html_button_element_set_form_no_validate_ffi(obj: JsValue, form_no_validate: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_formNoValidate"

#cfg(target="wasm-gc")
fn html_button_element_form_target_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLButtonElement" "get_formTarget"

///|
#cfg(target="wasm-gc")
fn html_button_element_form_target_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_button_element_form_target_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_button_element_set_form_target_ffi(obj: JsValue, form_target: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_formTarget"

#cfg(target="wasm-gc")
fn html_button_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLButtonElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_button_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_button_element_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_button_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_name"

#cfg(target="wasm-gc")
fn html_button_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLButtonElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_button_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_button_element_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_button_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_type"

#cfg(target="wasm-gc")
fn html_button_element_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLButtonElement" "get_value"

///|
#cfg(target="wasm-gc")
fn html_button_element_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_button_element_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_button_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_value"

#cfg(target="wasm-gc")
fn html_button_element_will_validate_ffi(obj: JsValue) -> Bool = "webapi_HTMLButtonElement" "get_willValidate"

#cfg(target="wasm-gc")
fn html_button_element_validity_ffi(obj: JsValue) -> ValidityState = "webapi_HTMLButtonElement" "get_validity"

#cfg(target="wasm-gc")
fn html_button_element_validation_message_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLButtonElement" "get_validationMessage"

///|
#cfg(target="wasm-gc")
fn html_button_element_validation_message_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_button_element_validation_message_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_button_element_check_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLButtonElement" "checkValidity"

#cfg(target="wasm-gc")
fn html_button_element_report_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLButtonElement" "reportValidity"

#cfg(target="wasm-gc")
fn html_button_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "webapi_HTMLButtonElement" "setCustomValidity"

#cfg(target="wasm-gc")
fn html_button_element_labels_ffi(obj: JsValue) -> NodeList = "webapi_HTMLButtonElement" "get_labels"

#cfg(target="wasm-gc")
fn html_button_element_popover_target_element_ffi(obj: JsValue) -> Element = "webapi_HTMLButtonElement" "get_popoverTargetElement"

#cfg(target="wasm-gc")
fn html_button_element_set_popover_target_element_ffi(obj: JsValue, popover_target_element: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_popoverTargetElement"

#cfg(target="wasm-gc")
fn html_button_element_popover_target_action_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLButtonElement" "get_popoverTargetAction"

///|
#cfg(target="wasm-gc")
fn html_button_element_popover_target_action_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_button_element_popover_target_action_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_button_element_set_popover_target_action_ffi(obj: JsValue, popover_target_action: JsValue) -> Unit = "webapi_HTMLButtonElement" "set_popoverTargetAction"