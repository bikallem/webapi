extern "js" fn html_field_set_element_new_ffi() -> HTMLFieldSetElement = "() => new HTMLFieldSetElement()"

extern "js" fn html_field_set_element_disabled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.disabled"

extern "js" fn html_field_set_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

extern "js" fn html_field_set_element_form_ffi(obj: JsValue) -> JsValue = "(obj) => obj.form"

extern "js" fn html_field_set_element_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

extern "js" fn html_field_set_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn html_field_set_element_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn html_field_set_element_elements_ffi(obj: JsValue) -> JsValue = "(obj) => obj.elements"

extern "js" fn html_field_set_element_will_validate_ffi(obj: JsValue) -> JsValue = "(obj) => obj.willValidate"

extern "js" fn html_field_set_element_validity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.validity"

extern "js" fn html_field_set_element_validation_message_ffi(obj: JsValue) -> JsValue = "(obj) => obj.validationMessage"

extern "js" fn html_field_set_element_check_validity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

extern "js" fn html_field_set_element_report_validity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

extern "js" fn html_field_set_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "(obj, error) => obj.setCustomValidity(error)"