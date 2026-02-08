///|
extern "js" fn html_button_element_new_ffi() -> HTMLButtonElement = "() => new HTMLButtonElement()"

///|
extern "js" fn html_button_element_command_ffi(obj : JsValue) -> JsValue = "(obj) => obj.command"

///|
extern "js" fn html_button_element_set_command_ffi(
  obj : JsValue,
  command : JsValue,
) -> Unit = "(obj, command) => { obj.command = command; }"

///|
extern "js" fn html_button_element_command_for_element_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.commandForElement"

///|
extern "js" fn html_button_element_set_command_for_element_ffi(
  obj : JsValue,
  command_for_element : JsValue,
) -> Unit = "(obj, commandForElement) => { obj.commandForElement = commandForElement; }"

///|
extern "js" fn html_button_element_disabled_ffi(obj : JsValue) -> JsValue = "(obj) => obj.disabled"

///|
extern "js" fn html_button_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
extern "js" fn html_button_element_form_ffi(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
extern "js" fn html_button_element_form_action_ffi(obj : JsValue) -> JsValue = "(obj) => obj.formAction"

///|
extern "js" fn html_button_element_set_form_action_ffi(
  obj : JsValue,
  form_action : JsValue,
) -> Unit = "(obj, formAction) => { obj.formAction = formAction; }"

///|
extern "js" fn html_button_element_form_enctype_ffi(obj : JsValue) -> JsValue = "(obj) => obj.formEnctype"

///|
extern "js" fn html_button_element_set_form_enctype_ffi(
  obj : JsValue,
  form_enctype : JsValue,
) -> Unit = "(obj, formEnctype) => { obj.formEnctype = formEnctype; }"

///|
extern "js" fn html_button_element_form_method_ffi(obj : JsValue) -> JsValue = "(obj) => obj.formMethod"

///|
extern "js" fn html_button_element_set_form_method_ffi(
  obj : JsValue,
  form_method : JsValue,
) -> Unit = "(obj, formMethod) => { obj.formMethod = formMethod; }"

///|
extern "js" fn html_button_element_form_no_validate_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.formNoValidate"

///|
extern "js" fn html_button_element_set_form_no_validate_ffi(
  obj : JsValue,
  form_no_validate : JsValue,
) -> Unit = "(obj, formNoValidate) => { obj.formNoValidate = formNoValidate; }"

///|
extern "js" fn html_button_element_form_target_ffi(obj : JsValue) -> JsValue = "(obj) => obj.formTarget"

///|
extern "js" fn html_button_element_set_form_target_ffi(
  obj : JsValue,
  form_target : JsValue,
) -> Unit = "(obj, formTarget) => { obj.formTarget = formTarget; }"

///|
extern "js" fn html_button_element_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn html_button_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn html_button_element_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
extern "js" fn html_button_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
extern "js" fn html_button_element_value_ffi(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
extern "js" fn html_button_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
extern "js" fn html_button_element_will_validate_ffi(obj : JsValue) -> JsValue = "(obj) => obj.willValidate"

///|
extern "js" fn html_button_element_validity_ffi(obj : JsValue) -> JsValue = "(obj) => obj.validity"

///|
extern "js" fn html_button_element_validation_message_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.validationMessage"

///|
extern "js" fn html_button_element_check_validity_ffi(obj : JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
extern "js" fn html_button_element_report_validity_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.reportValidity()"

///|
extern "js" fn html_button_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

///|
extern "js" fn html_button_element_labels_ffi(obj : JsValue) -> JsValue = "(obj) => obj.labels"

///|
extern "js" fn html_button_element_popover_target_element_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.popoverTargetElement"

///|
extern "js" fn html_button_element_set_popover_target_element_ffi(
  obj : JsValue,
  popover_target_element : JsValue,
) -> Unit = "(obj, popoverTargetElement) => { obj.popoverTargetElement = popoverTargetElement; }"

///|
extern "js" fn html_button_element_popover_target_action_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.popoverTargetAction"

///|
extern "js" fn html_button_element_set_popover_target_action_ffi(
  obj : JsValue,
  popover_target_action : JsValue,
) -> Unit = "(obj, popoverTargetAction) => { obj.popoverTargetAction = popoverTargetAction; }"
