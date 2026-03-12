fn html_output_element_new_ffi() -> HTMLOutputElement = "webapi_HTMLOutputElement" "new"

fn html_output_element_html_for_ffi(obj: JsValue) -> DOMTokenList = "webapi_HTMLOutputElement" "get_htmlFor"

fn html_output_element_form_ffi(obj: JsValue) -> HTMLFormElement = "webapi_HTMLOutputElement" "get_form"

fn html_output_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOutputElement" "get_name"

///|
fn html_output_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_output_element_name_ffi_wasm(obj))
}

fn html_output_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLOutputElement" "set_name"

fn html_output_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOutputElement" "get_type"

///|
fn html_output_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_output_element_type_ffi_wasm(obj))
}

fn html_output_element_default_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOutputElement" "get_defaultValue"

///|
fn html_output_element_default_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_output_element_default_value_ffi_wasm(obj))
}

fn html_output_element_set_default_value_ffi(obj: JsValue, default_value: JsValue) -> Unit = "webapi_HTMLOutputElement" "set_defaultValue"

fn html_output_element_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOutputElement" "get_value"

///|
fn html_output_element_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_output_element_value_ffi_wasm(obj))
}

fn html_output_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_HTMLOutputElement" "set_value"

fn html_output_element_will_validate_ffi(obj: JsValue) -> Bool = "webapi_HTMLOutputElement" "get_willValidate"

fn html_output_element_validity_ffi(obj: JsValue) -> ValidityState = "webapi_HTMLOutputElement" "get_validity"

fn html_output_element_validation_message_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOutputElement" "get_validationMessage"

///|
fn html_output_element_validation_message_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_output_element_validation_message_ffi_wasm(obj))
}

fn html_output_element_check_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLOutputElement" "checkValidity"

fn html_output_element_report_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLOutputElement" "reportValidity"

fn html_output_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "webapi_HTMLOutputElement" "setCustomValidity"

fn html_output_element_labels_ffi(obj: JsValue) -> NodeList = "webapi_HTMLOutputElement" "get_labels"