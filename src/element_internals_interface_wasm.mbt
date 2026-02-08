///|
fn element_internals_shadow_root_ffi(obj : JsValue) -> JsValue = "webapi_ElementInternals" "get_shadowRoot"

///|
fn element_internals_set_form_value_ffi(
  obj : JsValue,
  value : JsValue,
  state : JsValue,
) -> Unit = "webapi_ElementInternals" "setFormValue"

///|
fn element_internals_form_ffi(obj : JsValue) -> JsValue = "webapi_ElementInternals" "get_form"

///|
fn element_internals_set_validity_ffi(
  obj : JsValue,
  flags : JsValue,
  message : JsValue,
  anchor : JsValue,
) -> Unit = "webapi_ElementInternals" "setValidity"

///|
fn element_internals_will_validate_ffi(obj : JsValue) -> JsValue = "webapi_ElementInternals" "get_willValidate"

///|
fn element_internals_validity_ffi(obj : JsValue) -> JsValue = "webapi_ElementInternals" "get_validity"

///|
fn element_internals_validation_message_ffi(obj : JsValue) -> JsValue = "webapi_ElementInternals" "get_validationMessage"

///|
fn element_internals_check_validity_ffi(obj : JsValue) -> JsValue = "webapi_ElementInternals" "checkValidity"

///|
fn element_internals_report_validity_ffi(obj : JsValue) -> JsValue = "webapi_ElementInternals" "reportValidity"

///|
fn element_internals_labels_ffi(obj : JsValue) -> JsValue = "webapi_ElementInternals" "get_labels"

///|
fn element_internals_states_ffi(obj : JsValue) -> JsValue = "webapi_ElementInternals" "get_states"
