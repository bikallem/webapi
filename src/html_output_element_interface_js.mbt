extern "js" fn html_output_element_new_ffi() -> HTMLOutputElement = "() => new HTMLOutputElement()"

extern "js" fn html_output_element_html_for_ffi(obj: JsValue) -> JsValue = "(obj) => obj.htmlFor"

extern "js" fn html_output_element_form_ffi(obj: JsValue) -> JsValue = "(obj) => obj.form"

extern "js" fn html_output_element_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

extern "js" fn html_output_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn html_output_element_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn html_output_element_default_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.defaultValue"

extern "js" fn html_output_element_set_default_value_ffi(obj: JsValue, default_value: JsValue) -> Unit = "(obj, defaultValue) => { obj.defaultValue = defaultValue; }"

extern "js" fn html_output_element_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.value"

extern "js" fn html_output_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

extern "js" fn html_output_element_will_validate_ffi(obj: JsValue) -> JsValue = "(obj) => obj.willValidate"

extern "js" fn html_output_element_validity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.validity"

extern "js" fn html_output_element_validation_message_ffi(obj: JsValue) -> JsValue = "(obj) => obj.validationMessage"

extern "js" fn html_output_element_check_validity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

extern "js" fn html_output_element_report_validity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

extern "js" fn html_output_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

extern "js" fn html_output_element_labels_ffi(obj: JsValue) -> JsValue = "(obj) => obj.labels"