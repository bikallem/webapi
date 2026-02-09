///|
fn html_field_set_element_new_ffi() -> HTMLFieldSetElement = "webapi_HTMLFieldSetElement" "new"

///|
fn html_field_set_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLFieldSetElement" "get_disabled"

///|
fn html_field_set_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "webapi_HTMLFieldSetElement" "set_disabled"

///|
fn html_field_set_element_form_ffi(obj : JsValue) -> HTMLFormElement = "webapi_HTMLFieldSetElement" "get_form"

///|
fn html_field_set_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFieldSetElement" "get_name"

///|
fn html_field_set_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_field_set_element_name_ffi_wasm(obj))
}

///|
fn html_field_set_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLFieldSetElement" "set_name"

///|
fn html_field_set_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFieldSetElement" "get_type"

///|
fn html_field_set_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_field_set_element_type_ffi_wasm(obj))
}

///|
fn html_field_set_element_elements_ffi(obj : JsValue) -> HTMLCollection = "webapi_HTMLFieldSetElement" "get_elements"

///|
fn html_field_set_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLFieldSetElement" "get_willValidate"

///|
fn html_field_set_element_validity_ffi(obj : JsValue) -> ValidityState = "webapi_HTMLFieldSetElement" "get_validity"

///|
fn html_field_set_element_validation_message_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLFieldSetElement" "get_validationMessage"

///|
fn html_field_set_element_validation_message_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_field_set_element_validation_message_ffi_wasm(obj))
}

///|
fn html_field_set_element_check_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLFieldSetElement" "checkValidity"

///|
fn html_field_set_element_report_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLFieldSetElement" "reportValidity"

///|
fn html_field_set_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "webapi_HTMLFieldSetElement" "setCustomValidity"
