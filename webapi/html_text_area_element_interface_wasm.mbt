///|
fn html_text_area_element_new_ffi() -> HTMLTextAreaElement = "webapi_HTMLTextAreaElement" "new"

///|
fn html_text_area_element_autocomplete_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_autocomplete"

///|
fn html_text_area_element_autocomplete_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_text_area_element_autocomplete_ffi_wasm(obj))
}

///|
fn html_text_area_element_set_autocomplete_ffi(
  obj : JsValue,
  autocomplete : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_autocomplete"

///|
fn html_text_area_element_cols_ffi(obj : JsValue) -> UInt = "webapi_HTMLTextAreaElement" "get_cols"

///|
fn html_text_area_element_set_cols_ffi(obj : JsValue, cols : JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_cols"

///|
fn html_text_area_element_dir_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_dirName"

///|
fn html_text_area_element_dir_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_text_area_element_dir_name_ffi_wasm(obj))
}

///|
fn html_text_area_element_set_dir_name_ffi(
  obj : JsValue,
  dir_name : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_dirName"

///|
fn html_text_area_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLTextAreaElement" "get_disabled"

///|
fn html_text_area_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_disabled"

///|
fn html_text_area_element_form_ffi(obj : JsValue) -> HTMLFormElement = "webapi_HTMLTextAreaElement" "get_form"

///|
fn html_text_area_element_max_length_ffi(obj : JsValue) -> Int = "webapi_HTMLTextAreaElement" "get_maxLength"

///|
fn html_text_area_element_set_max_length_ffi(
  obj : JsValue,
  max_length : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_maxLength"

///|
fn html_text_area_element_min_length_ffi(obj : JsValue) -> Int = "webapi_HTMLTextAreaElement" "get_minLength"

///|
fn html_text_area_element_set_min_length_ffi(
  obj : JsValue,
  min_length : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_minLength"

///|
fn html_text_area_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_name"

///|
fn html_text_area_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_text_area_element_name_ffi_wasm(obj))
}

///|
fn html_text_area_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_name"

///|
fn html_text_area_element_placeholder_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_placeholder"

///|
fn html_text_area_element_placeholder_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_text_area_element_placeholder_ffi_wasm(obj))
}

///|
fn html_text_area_element_set_placeholder_ffi(
  obj : JsValue,
  placeholder : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_placeholder"

///|
fn html_text_area_element_read_only_ffi(obj : JsValue) -> Bool = "webapi_HTMLTextAreaElement" "get_readOnly"

///|
fn html_text_area_element_set_read_only_ffi(
  obj : JsValue,
  read_only : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_readOnly"

///|
fn html_text_area_element_required_ffi(obj : JsValue) -> Bool = "webapi_HTMLTextAreaElement" "get_required"

///|
fn html_text_area_element_set_required_ffi(
  obj : JsValue,
  required : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_required"

///|
fn html_text_area_element_rows_ffi(obj : JsValue) -> UInt = "webapi_HTMLTextAreaElement" "get_rows"

///|
fn html_text_area_element_set_rows_ffi(obj : JsValue, rows : JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_rows"

///|
fn html_text_area_element_wrap_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_wrap"

///|
fn html_text_area_element_wrap_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_text_area_element_wrap_ffi_wasm(obj))
}

///|
fn html_text_area_element_set_wrap_ffi(obj : JsValue, wrap : JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_wrap"

///|
fn html_text_area_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_type"

///|
fn html_text_area_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_text_area_element_type_ffi_wasm(obj))
}

///|
fn html_text_area_element_default_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_defaultValue"

///|
fn html_text_area_element_default_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_text_area_element_default_value_ffi_wasm(obj))
}

///|
fn html_text_area_element_set_default_value_ffi(
  obj : JsValue,
  default_value : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_defaultValue"

///|
fn html_text_area_element_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_value"

///|
fn html_text_area_element_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_text_area_element_value_ffi_wasm(obj))
}

///|
fn html_text_area_element_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLTextAreaElement" "set_value"

///|
fn html_text_area_element_text_length_ffi(obj : JsValue) -> UInt = "webapi_HTMLTextAreaElement" "get_textLength"

///|
fn html_text_area_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLTextAreaElement" "get_willValidate"

///|
fn html_text_area_element_validity_ffi(obj : JsValue) -> ValidityState = "webapi_HTMLTextAreaElement" "get_validity"

///|
fn html_text_area_element_validation_message_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTextAreaElement" "get_validationMessage"

///|
fn html_text_area_element_validation_message_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_text_area_element_validation_message_ffi_wasm(obj))
}

///|
fn html_text_area_element_check_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLTextAreaElement" "checkValidity"

///|
fn html_text_area_element_report_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLTextAreaElement" "reportValidity"

///|
fn html_text_area_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "setCustomValidity"

///|
fn html_text_area_element_labels_ffi(obj : JsValue) -> NodeList = "webapi_HTMLTextAreaElement" "get_labels"

///|
fn html_text_area_element_select_ffi(obj : JsValue) -> Unit = "webapi_HTMLTextAreaElement" "select"

///|
fn html_text_area_element_selection_start_ffi(obj : JsValue) -> UInt = "webapi_HTMLTextAreaElement" "get_selectionStart"

///|
fn html_text_area_element_set_selection_start_ffi(
  obj : JsValue,
  selection_start : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_selectionStart"

///|
fn html_text_area_element_selection_end_ffi(obj : JsValue) -> UInt = "webapi_HTMLTextAreaElement" "get_selectionEnd"

///|
fn html_text_area_element_set_selection_end_ffi(
  obj : JsValue,
  selection_end : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_selectionEnd"

///|
fn html_text_area_element_selection_direction_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_HTMLTextAreaElement" "get_selectionDirection"

///|
fn html_text_area_element_selection_direction_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_text_area_element_selection_direction_ffi_wasm(obj))
}

///|
fn html_text_area_element_set_selection_direction_ffi(
  obj : JsValue,
  selection_direction : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_selectionDirection"

///|
fn html_text_area_element_set_range_text_ffi(
  obj : JsValue,
  replacement : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "setRangeText"

///|
fn html_text_area_element_set_range_text_in_range_ffi(
  obj : JsValue,
  replacement : JsValue,
  start : JsValue,
  end : JsValue,
  selection_mode : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "set_range_text_in_range"

///|
fn html_text_area_element_set_selection_range_ffi(
  obj : JsValue,
  start : JsValue,
  end : JsValue,
  direction : JsValue,
) -> Unit = "webapi_HTMLTextAreaElement" "setSelectionRange"
