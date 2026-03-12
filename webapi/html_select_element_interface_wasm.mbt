fn html_select_element_new_ffi() -> HTMLSelectElement = "webapi_HTMLSelectElement" "new"

fn html_select_element_autocomplete_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLSelectElement" "get_autocomplete"

///|
fn html_select_element_autocomplete_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_select_element_autocomplete_ffi_wasm(obj))
}

fn html_select_element_set_autocomplete_ffi(obj: JsValue, autocomplete: JsValue) -> Unit = "webapi_HTMLSelectElement" "set_autocomplete"

fn html_select_element_disabled_ffi(obj: JsValue) -> Bool = "webapi_HTMLSelectElement" "get_disabled"

fn html_select_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "webapi_HTMLSelectElement" "set_disabled"

fn html_select_element_form_ffi(obj: JsValue) -> HTMLFormElement = "webapi_HTMLSelectElement" "get_form"

fn html_select_element_multiple_ffi(obj: JsValue) -> Bool = "webapi_HTMLSelectElement" "get_multiple"

fn html_select_element_set_multiple_ffi(obj: JsValue, multiple: JsValue) -> Unit = "webapi_HTMLSelectElement" "set_multiple"

fn html_select_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLSelectElement" "get_name"

///|
fn html_select_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_select_element_name_ffi_wasm(obj))
}

fn html_select_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLSelectElement" "set_name"

fn html_select_element_required_ffi(obj: JsValue) -> Bool = "webapi_HTMLSelectElement" "get_required"

fn html_select_element_set_required_ffi(obj: JsValue, required: JsValue) -> Unit = "webapi_HTMLSelectElement" "set_required"

fn html_select_element_size_ffi(obj: JsValue) -> UInt = "webapi_HTMLSelectElement" "get_size"

fn html_select_element_set_size_ffi(obj: JsValue, size: JsValue) -> Unit = "webapi_HTMLSelectElement" "set_size"

fn html_select_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLSelectElement" "get_type"

///|
fn html_select_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_select_element_type_ffi_wasm(obj))
}

fn html_select_element_options_ffi(obj: JsValue) -> HTMLOptionsCollection = "webapi_HTMLSelectElement" "get_options"

fn html_select_element_length_ffi(obj: JsValue) -> UInt = "webapi_HTMLSelectElement" "get_length"

fn html_select_element_set_length_ffi(obj: JsValue, length: JsValue) -> Unit = "webapi_HTMLSelectElement" "set_length"

fn html_select_element_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_HTMLSelectElement" "item"

fn html_select_element_named_item_ffi(obj: JsValue, name: JsValue) -> JsValue = "webapi_HTMLSelectElement" "namedItem"

fn html_select_element_add_ffi(obj: JsValue, element: JsValue, before: JsValue) -> Unit = "webapi_HTMLSelectElement" "add"

fn html_select_element_remove_ffi(obj: JsValue) -> Unit = "webapi_HTMLSelectElement" "remove"

fn html_select_element_remove_at_ffi(obj: JsValue, index: JsValue) -> Unit = "webapi_HTMLSelectElement" "remove_at"

fn html_select_element_set_ffi(obj: JsValue, index: JsValue, option: JsValue) -> Unit = "webapi_HTMLSelectElement" "set"

fn html_select_element_selected_options_ffi(obj: JsValue) -> HTMLCollection = "webapi_HTMLSelectElement" "get_selectedOptions"

fn html_select_element_selected_index_ffi(obj: JsValue) -> Int = "webapi_HTMLSelectElement" "get_selectedIndex"

fn html_select_element_set_selected_index_ffi(obj: JsValue, selected_index: JsValue) -> Unit = "webapi_HTMLSelectElement" "set_selectedIndex"

fn html_select_element_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLSelectElement" "get_value"

///|
fn html_select_element_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_select_element_value_ffi_wasm(obj))
}

fn html_select_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_HTMLSelectElement" "set_value"

fn html_select_element_will_validate_ffi(obj: JsValue) -> Bool = "webapi_HTMLSelectElement" "get_willValidate"

fn html_select_element_validity_ffi(obj: JsValue) -> ValidityState = "webapi_HTMLSelectElement" "get_validity"

fn html_select_element_validation_message_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLSelectElement" "get_validationMessage"

///|
fn html_select_element_validation_message_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_select_element_validation_message_ffi_wasm(obj))
}

fn html_select_element_check_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLSelectElement" "checkValidity"

fn html_select_element_report_validity_ffi(obj: JsValue) -> Bool = "webapi_HTMLSelectElement" "reportValidity"

fn html_select_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "webapi_HTMLSelectElement" "setCustomValidity"

fn html_select_element_show_picker_ffi(obj: JsValue) -> Unit = "webapi_HTMLSelectElement" "showPicker"

fn html_select_element_labels_ffi(obj: JsValue) -> NodeList = "webapi_HTMLSelectElement" "get_labels"