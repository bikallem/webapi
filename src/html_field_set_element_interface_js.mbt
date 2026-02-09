///|
extern "js" fn html_field_set_element_new_ffi() -> HTMLFieldSetElement = "() => new HTMLFieldSetElement()"

///|
extern "js" fn html_field_set_element_disabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.disabled"

///|
fn html_field_set_element_disabled_ffi(obj : JsValue) -> Bool {
  html_field_set_element_disabled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_field_set_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
extern "js" fn html_field_set_element_form_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
fn html_field_set_element_form_ffi(obj : JsValue) -> HTMLFormElement {
  html_field_set_element_form_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_field_set_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn html_field_set_element_name_ffi(obj : JsValue) -> String {
  html_field_set_element_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_field_set_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn html_field_set_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn html_field_set_element_type_ffi(obj : JsValue) -> String {
  html_field_set_element_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_field_set_element_elements_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.elements"

///|
fn html_field_set_element_elements_ffi(obj : JsValue) -> HTMLCollection {
  html_field_set_element_elements_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_field_set_element_will_validate_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.willValidate"

///|
fn html_field_set_element_will_validate_ffi(obj : JsValue) -> Bool {
  html_field_set_element_will_validate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_field_set_element_validity_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.validity"

///|
fn html_field_set_element_validity_ffi(obj : JsValue) -> ValidityState {
  html_field_set_element_validity_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_field_set_element_validation_message_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.validationMessage"

///|
fn html_field_set_element_validation_message_ffi(obj : JsValue) -> String {
  html_field_set_element_validation_message_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_field_set_element_check_validity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.checkValidity()"

///|
fn html_field_set_element_check_validity_ffi(obj : JsValue) -> Bool {
  html_field_set_element_check_validity_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_field_set_element_report_validity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.reportValidity()"

///|
fn html_field_set_element_report_validity_ffi(obj : JsValue) -> Bool {
  html_field_set_element_report_validity_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_field_set_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(error)"
