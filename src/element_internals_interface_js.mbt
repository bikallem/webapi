///|
extern "js" fn element_internals_shadow_root_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.shadowRoot"

///|
fn element_internals_shadow_root_ffi(obj : JsValue) -> ShadowRoot {
  element_internals_shadow_root_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_internals_set_form_value_ffi(
  obj : JsValue,
  value : JsValue,
  state : JsValue,
) -> Unit = "(obj, value, state) => obj.setFormValue(value, state)"

///|
extern "js" fn element_internals_form_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
fn element_internals_form_ffi(obj : JsValue) -> HTMLFormElement {
  element_internals_form_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_internals_set_validity_ffi(
  obj : JsValue,
  flags : JsValue,
  message : JsValue,
  anchor : JsValue,
) -> Unit = "(obj, flags, message, anchor) => obj.setValidity(flags, message, anchor)"

///|
extern "js" fn element_internals_will_validate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.willValidate"

///|
fn element_internals_will_validate_ffi(obj : JsValue) -> Bool {
  element_internals_will_validate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_internals_validity_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.validity"

///|
fn element_internals_validity_ffi(obj : JsValue) -> ValidityState {
  element_internals_validity_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_internals_validation_message_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.validationMessage"

///|
fn element_internals_validation_message_ffi(obj : JsValue) -> String {
  element_internals_validation_message_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_internals_check_validity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.checkValidity()"

///|
fn element_internals_check_validity_ffi(obj : JsValue) -> Bool {
  element_internals_check_validity_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_internals_report_validity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.reportValidity()"

///|
fn element_internals_report_validity_ffi(obj : JsValue) -> Bool {
  element_internals_report_validity_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_internals_labels_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.labels"

///|
fn element_internals_labels_ffi(obj : JsValue) -> NodeList {
  element_internals_labels_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn element_internals_states_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.states"

///|
fn element_internals_states_ffi(obj : JsValue) -> CustomStateSet {
  element_internals_states_ffi_js(obj).unsafe_cast()
}
