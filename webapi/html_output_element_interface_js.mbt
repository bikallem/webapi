extern "js" fn html_output_element_new_ffi() -> HTMLOutputElement = "() => new HTMLOutputElement()"

extern "js" fn html_output_element_html_for_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.htmlFor"

///|
fn html_output_element_html_for_ffi(obj: JsValue) -> DOMTokenList {
  html_output_element_html_for_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_output_element_form_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.form"

///|
fn html_output_element_form_ffi(obj: JsValue) -> HTMLFormElement {
  html_output_element_form_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_output_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn html_output_element_name_ffi(obj: JsValue) -> String {
  html_output_element_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_output_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn html_output_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn html_output_element_type_ffi(obj: JsValue) -> String {
  html_output_element_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_output_element_default_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.defaultValue"

///|
fn html_output_element_default_value_ffi(obj: JsValue) -> String {
  html_output_element_default_value_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_output_element_set_default_value_ffi(obj: JsValue, default_value: JsValue) -> Unit = "(obj, defaultValue) => { obj.defaultValue = defaultValue; }"

extern "js" fn html_output_element_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
fn html_output_element_value_ffi(obj: JsValue) -> String {
  html_output_element_value_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_output_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

extern "js" fn html_output_element_will_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.willValidate"

///|
fn html_output_element_will_validate_ffi(obj: JsValue) -> Bool {
  html_output_element_will_validate_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_output_element_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validity"

///|
fn html_output_element_validity_ffi(obj: JsValue) -> ValidityState {
  html_output_element_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_output_element_validation_message_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validationMessage"

///|
fn html_output_element_validation_message_ffi(obj: JsValue) -> String {
  html_output_element_validation_message_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_output_element_check_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
fn html_output_element_check_validity_ffi(obj: JsValue) -> Bool {
  html_output_element_check_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_output_element_report_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

///|
fn html_output_element_report_validity_ffi(obj: JsValue) -> Bool {
  html_output_element_report_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_output_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

extern "js" fn html_output_element_labels_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.labels"

///|
fn html_output_element_labels_ffi(obj: JsValue) -> NodeList {
  html_output_element_labels_ffi_js(obj).unsafe_cast()
}