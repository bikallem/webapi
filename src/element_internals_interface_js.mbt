extern "js" fn element_internals_shadow_root_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowRoot"

extern "js" fn element_internals_set_form_value_ffi(obj: JsValue, value: JsValue, state: JsValue) -> Unit = "(obj, value, state) => obj.setFormValue(value, state)"

extern "js" fn element_internals_form_ffi(obj: JsValue) -> JsValue = "(obj) => obj.form"

extern "js" fn element_internals_set_validity_ffi(obj: JsValue, flags: JsValue, message: JsValue, anchor: JsValue) -> Unit = "(obj, flags, message, anchor) => obj.setValidity(flags, message, anchor)"

extern "js" fn element_internals_will_validate_ffi(obj: JsValue) -> JsValue = "(obj) => obj.willValidate"

extern "js" fn element_internals_validity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.validity"

extern "js" fn element_internals_validation_message_ffi(obj: JsValue) -> JsValue = "(obj) => obj.validationMessage"

extern "js" fn element_internals_check_validity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

extern "js" fn element_internals_report_validity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

extern "js" fn element_internals_labels_ffi(obj: JsValue) -> JsValue = "(obj) => obj.labels"

extern "js" fn element_internals_states_ffi(obj: JsValue) -> JsValue = "(obj) => obj.states"