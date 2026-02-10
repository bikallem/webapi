///|
fn html_input_element_new_ffi() -> HTMLInputElement = "webapi_HTMLInputElement" "new"

///|
fn html_input_element_accept_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_accept"

///|
fn html_input_element_accept_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_accept_ffi_wasm(obj))
}

///|
fn html_input_element_set_accept_ffi(obj : JsValue, accept : JsValue) -> Unit = "webapi_HTMLInputElement" "set_accept"

///|
fn html_input_element_alpha_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "get_alpha"

///|
fn html_input_element_set_alpha_ffi(obj : JsValue, alpha : JsValue) -> Unit = "webapi_HTMLInputElement" "set_alpha"

///|
fn html_input_element_alt_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_alt"

///|
fn html_input_element_alt_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_alt_ffi_wasm(obj))
}

///|
fn html_input_element_set_alt_ffi(obj : JsValue, alt : JsValue) -> Unit = "webapi_HTMLInputElement" "set_alt"

///|
fn html_input_element_autocomplete_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_autocomplete"

///|
fn html_input_element_autocomplete_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_autocomplete_ffi_wasm(obj))
}

///|
fn html_input_element_set_autocomplete_ffi(
  obj : JsValue,
  autocomplete : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_autocomplete"

///|
fn html_input_element_default_checked_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "get_defaultChecked"

///|
fn html_input_element_set_default_checked_ffi(
  obj : JsValue,
  default_checked : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_defaultChecked"

///|
fn html_input_element_checked_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "get_checked"

///|
fn html_input_element_set_checked_ffi(obj : JsValue, checked : JsValue) -> Unit = "webapi_HTMLInputElement" "set_checked"

///|
fn html_input_element_color_space_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_colorSpace"

///|
fn html_input_element_color_space_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_color_space_ffi_wasm(obj))
}

///|
fn html_input_element_set_color_space_ffi(
  obj : JsValue,
  color_space : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_colorSpace"

///|
fn html_input_element_dir_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_dirName"

///|
fn html_input_element_dir_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_dir_name_ffi_wasm(obj))
}

///|
fn html_input_element_set_dir_name_ffi(
  obj : JsValue,
  dir_name : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_dirName"

///|
fn html_input_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "get_disabled"

///|
fn html_input_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_disabled"

///|
fn html_input_element_form_ffi(obj : JsValue) -> HTMLFormElement = "webapi_HTMLInputElement" "get_form"

///|
fn html_input_element_files_ffi(obj : JsValue) -> FileList = "webapi_HTMLInputElement" "get_files"

///|
fn html_input_element_set_files_ffi(obj : JsValue, files : JsValue) -> Unit = "webapi_HTMLInputElement" "set_files"

///|
fn html_input_element_form_action_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_formAction"

///|
fn html_input_element_form_action_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_form_action_ffi_wasm(obj))
}

///|
fn html_input_element_set_form_action_ffi(
  obj : JsValue,
  form_action : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_formAction"

///|
fn html_input_element_form_enctype_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_formEnctype"

///|
fn html_input_element_form_enctype_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_form_enctype_ffi_wasm(obj))
}

///|
fn html_input_element_set_form_enctype_ffi(
  obj : JsValue,
  form_enctype : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_formEnctype"

///|
fn html_input_element_form_method_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_formMethod"

///|
fn html_input_element_form_method_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_form_method_ffi_wasm(obj))
}

///|
fn html_input_element_set_form_method_ffi(
  obj : JsValue,
  form_method : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_formMethod"

///|
fn html_input_element_form_no_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "get_formNoValidate"

///|
fn html_input_element_set_form_no_validate_ffi(
  obj : JsValue,
  form_no_validate : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_formNoValidate"

///|
fn html_input_element_form_target_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_formTarget"

///|
fn html_input_element_form_target_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_form_target_ffi_wasm(obj))
}

///|
fn html_input_element_set_form_target_ffi(
  obj : JsValue,
  form_target : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_formTarget"

///|
fn html_input_element_height_ffi(obj : JsValue) -> UInt = "webapi_HTMLInputElement" "get_height"

///|
fn html_input_element_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "webapi_HTMLInputElement" "set_height"

///|
fn html_input_element_indeterminate_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "get_indeterminate"

///|
fn html_input_element_set_indeterminate_ffi(
  obj : JsValue,
  indeterminate : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_indeterminate"

///|
fn html_input_element_list_ffi(obj : JsValue) -> HTMLDataListElement = "webapi_HTMLInputElement" "get_list"

///|
fn html_input_element_max_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_max"

///|
fn html_input_element_max_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_max_ffi_wasm(obj))
}

///|
fn html_input_element_set_max_ffi(obj : JsValue, max : JsValue) -> Unit = "webapi_HTMLInputElement" "set_max"

///|
fn html_input_element_max_length_ffi(obj : JsValue) -> Int = "webapi_HTMLInputElement" "get_maxLength"

///|
fn html_input_element_set_max_length_ffi(
  obj : JsValue,
  max_length : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_maxLength"

///|
fn html_input_element_min_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_min"

///|
fn html_input_element_min_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_min_ffi_wasm(obj))
}

///|
fn html_input_element_set_min_ffi(obj : JsValue, min : JsValue) -> Unit = "webapi_HTMLInputElement" "set_min"

///|
fn html_input_element_min_length_ffi(obj : JsValue) -> Int = "webapi_HTMLInputElement" "get_minLength"

///|
fn html_input_element_set_min_length_ffi(
  obj : JsValue,
  min_length : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_minLength"

///|
fn html_input_element_multiple_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "get_multiple"

///|
fn html_input_element_set_multiple_ffi(
  obj : JsValue,
  multiple : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_multiple"

///|
fn html_input_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_name"

///|
fn html_input_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_name_ffi_wasm(obj))
}

///|
fn html_input_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLInputElement" "set_name"

///|
fn html_input_element_pattern_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_pattern"

///|
fn html_input_element_pattern_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_pattern_ffi_wasm(obj))
}

///|
fn html_input_element_set_pattern_ffi(obj : JsValue, pattern : JsValue) -> Unit = "webapi_HTMLInputElement" "set_pattern"

///|
fn html_input_element_placeholder_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_placeholder"

///|
fn html_input_element_placeholder_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_placeholder_ffi_wasm(obj))
}

///|
fn html_input_element_set_placeholder_ffi(
  obj : JsValue,
  placeholder : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_placeholder"

///|
fn html_input_element_read_only_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "get_readOnly"

///|
fn html_input_element_set_read_only_ffi(
  obj : JsValue,
  read_only : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_readOnly"

///|
fn html_input_element_required_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "get_required"

///|
fn html_input_element_set_required_ffi(
  obj : JsValue,
  required : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_required"

///|
fn html_input_element_size_ffi(obj : JsValue) -> UInt = "webapi_HTMLInputElement" "get_size"

///|
fn html_input_element_set_size_ffi(obj : JsValue, size : JsValue) -> Unit = "webapi_HTMLInputElement" "set_size"

///|
fn html_input_element_src_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_src"

///|
fn html_input_element_src_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_src_ffi_wasm(obj))
}

///|
fn html_input_element_set_src_ffi(obj : JsValue, src : JsValue) -> Unit = "webapi_HTMLInputElement" "set_src"

///|
fn html_input_element_step_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_step"

///|
fn html_input_element_step_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_step_ffi_wasm(obj))
}

///|
fn html_input_element_set_step_ffi(obj : JsValue, step : JsValue) -> Unit = "webapi_HTMLInputElement" "set_step"

///|
fn html_input_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_type"

///|
fn html_input_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_type_ffi_wasm(obj))
}

///|
fn html_input_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_HTMLInputElement" "set_type"

///|
fn html_input_element_default_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_defaultValue"

///|
fn html_input_element_default_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_default_value_ffi_wasm(obj))
}

///|
fn html_input_element_set_default_value_ffi(
  obj : JsValue,
  default_value : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_defaultValue"

///|
fn html_input_element_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_value"

///|
fn html_input_element_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_value_ffi_wasm(obj))
}

///|
fn html_input_element_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLInputElement" "set_value"

///|
fn html_input_element_value_as_date_ffi(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_valueAsDate"

///|
fn html_input_element_set_value_as_date_ffi(
  obj : JsValue,
  value_as_date : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_valueAsDate"

///|
fn html_input_element_value_as_number_ffi(obj : JsValue) -> Double = "webapi_HTMLInputElement" "get_valueAsNumber"

///|
fn html_input_element_set_value_as_number_ffi(
  obj : JsValue,
  value_as_number : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_valueAsNumber"

///|
fn html_input_element_width_ffi(obj : JsValue) -> UInt = "webapi_HTMLInputElement" "get_width"

///|
fn html_input_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLInputElement" "set_width"

///|
fn html_input_element_step_up_ffi(obj : JsValue, n : JsValue) -> Unit = "webapi_HTMLInputElement" "stepUp"

///|
fn html_input_element_step_down_ffi(obj : JsValue, n : JsValue) -> Unit = "webapi_HTMLInputElement" "stepDown"

///|
fn html_input_element_will_validate_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "get_willValidate"

///|
fn html_input_element_validity_ffi(obj : JsValue) -> ValidityState = "webapi_HTMLInputElement" "get_validity"

///|
fn html_input_element_validation_message_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_validationMessage"

///|
fn html_input_element_validation_message_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_validation_message_ffi_wasm(obj))
}

///|
fn html_input_element_check_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "checkValidity"

///|
fn html_input_element_report_validity_ffi(obj : JsValue) -> Bool = "webapi_HTMLInputElement" "reportValidity"

///|
fn html_input_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "webapi_HTMLInputElement" "setCustomValidity"

///|
fn html_input_element_labels_ffi(obj : JsValue) -> NodeList = "webapi_HTMLInputElement" "get_labels"

///|
fn html_input_element_select_ffi(obj : JsValue) -> Unit = "webapi_HTMLInputElement" "select"

///|
fn html_input_element_selection_start_ffi(obj : JsValue) -> UInt = "webapi_HTMLInputElement" "get_selectionStart"

///|
fn html_input_element_set_selection_start_ffi(
  obj : JsValue,
  selection_start : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_selectionStart"

///|
fn html_input_element_selection_end_ffi(obj : JsValue) -> UInt = "webapi_HTMLInputElement" "get_selectionEnd"

///|
fn html_input_element_set_selection_end_ffi(
  obj : JsValue,
  selection_end : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_selectionEnd"

///|
fn html_input_element_selection_direction_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_selectionDirection"

///|
fn html_input_element_selection_direction_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_selection_direction_ffi_wasm(obj))
}

///|
fn html_input_element_set_selection_direction_ffi(
  obj : JsValue,
  selection_direction : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_selectionDirection"

///|
fn html_input_element_set_range_text_ffi(
  obj : JsValue,
  replacement : JsValue,
) -> Unit = "webapi_HTMLInputElement" "setRangeText"

///|
fn html_input_element_set_range_text_2_ffi(
  obj : JsValue,
  replacement : JsValue,
  start : JsValue,
  end : JsValue,
  selection_mode : JsValue,
) -> Unit = "webapi_HTMLInputElement" "setRangeText_2"

///|
fn html_input_element_set_selection_range_ffi(
  obj : JsValue,
  start : JsValue,
  end : JsValue,
  direction : JsValue,
) -> Unit = "webapi_HTMLInputElement" "setSelectionRange"

///|
fn html_input_element_show_picker_ffi(obj : JsValue) -> Unit = "webapi_HTMLInputElement" "showPicker"

///|
fn html_input_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_align"

///|
fn html_input_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_align_ffi_wasm(obj))
}

///|
fn html_input_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLInputElement" "set_align"

///|
fn html_input_element_use_map_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_useMap"

///|
fn html_input_element_use_map_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_use_map_ffi_wasm(obj))
}

///|
fn html_input_element_set_use_map_ffi(obj : JsValue, use_map : JsValue) -> Unit = "webapi_HTMLInputElement" "set_useMap"

///|
fn html_input_element_popover_target_element_ffi(obj : JsValue) -> Element = "webapi_HTMLInputElement" "get_popoverTargetElement"

///|
fn html_input_element_set_popover_target_element_ffi(
  obj : JsValue,
  popover_target_element : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_popoverTargetElement"

///|
fn html_input_element_popover_target_action_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLInputElement" "get_popoverTargetAction"

///|
fn html_input_element_popover_target_action_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_input_element_popover_target_action_ffi_wasm(obj))
}

///|
fn html_input_element_set_popover_target_action_ffi(
  obj : JsValue,
  popover_target_action : JsValue,
) -> Unit = "webapi_HTMLInputElement" "set_popoverTargetAction"
