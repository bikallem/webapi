extern "js" fn html_input_element_new_ffi() -> HTMLInputElement = "() => new HTMLInputElement()"

extern "js" fn html_input_element_accept_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.accept"

///|
fn html_input_element_accept_ffi(obj: JsValue) -> String {
  html_input_element_accept_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_accept_ffi(obj: JsValue, accept: JsValue) -> Unit = "(obj, accept) => { obj.accept = accept; }"

extern "js" fn html_input_element_alpha_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.alpha"

///|
fn html_input_element_alpha_ffi(obj: JsValue) -> Bool {
  html_input_element_alpha_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_alpha_ffi(obj: JsValue, alpha: JsValue) -> Unit = "(obj, alpha) => { obj.alpha = alpha; }"

extern "js" fn html_input_element_alt_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.alt"

///|
fn html_input_element_alt_ffi(obj: JsValue) -> String {
  html_input_element_alt_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_alt_ffi(obj: JsValue, alt: JsValue) -> Unit = "(obj, alt) => { obj.alt = alt; }"

extern "js" fn html_input_element_autocomplete_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.autocomplete"

///|
fn html_input_element_autocomplete_ffi(obj: JsValue) -> String {
  html_input_element_autocomplete_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_autocomplete_ffi(obj: JsValue, autocomplete: JsValue) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

extern "js" fn html_input_element_default_checked_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.defaultChecked"

///|
fn html_input_element_default_checked_ffi(obj: JsValue) -> Bool {
  html_input_element_default_checked_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_default_checked_ffi(obj: JsValue, default_checked: JsValue) -> Unit = "(obj, defaultChecked) => { obj.defaultChecked = defaultChecked; }"

extern "js" fn html_input_element_checked_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.checked"

///|
fn html_input_element_checked_ffi(obj: JsValue) -> Bool {
  html_input_element_checked_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_checked_ffi(obj: JsValue, checked: JsValue) -> Unit = "(obj, checked) => { obj.checked = checked; }"

extern "js" fn html_input_element_color_space_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.colorSpace"

///|
fn html_input_element_color_space_ffi(obj: JsValue) -> String {
  html_input_element_color_space_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_color_space_ffi(obj: JsValue, color_space: JsValue) -> Unit = "(obj, colorSpace) => { obj.colorSpace = colorSpace; }"

extern "js" fn html_input_element_dir_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.dirName"

///|
fn html_input_element_dir_name_ffi(obj: JsValue) -> String {
  html_input_element_dir_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_dir_name_ffi(obj: JsValue, dir_name: JsValue) -> Unit = "(obj, dirName) => { obj.dirName = dirName; }"

extern "js" fn html_input_element_disabled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.disabled"

///|
fn html_input_element_disabled_ffi(obj: JsValue) -> Bool {
  html_input_element_disabled_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

extern "js" fn html_input_element_form_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.form"

///|
fn html_input_element_form_ffi(obj: JsValue) -> HTMLFormElement {
  html_input_element_form_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_files_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.files"

///|
fn html_input_element_files_ffi(obj: JsValue) -> FileList {
  html_input_element_files_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_files_ffi(obj: JsValue, files: JsValue) -> Unit = "(obj, files) => { obj.files = files; }"

extern "js" fn html_input_element_form_action_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formAction"

///|
fn html_input_element_form_action_ffi(obj: JsValue) -> String {
  html_input_element_form_action_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_form_action_ffi(obj: JsValue, form_action: JsValue) -> Unit = "(obj, formAction) => { obj.formAction = formAction; }"

extern "js" fn html_input_element_form_enctype_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formEnctype"

///|
fn html_input_element_form_enctype_ffi(obj: JsValue) -> String {
  html_input_element_form_enctype_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_form_enctype_ffi(obj: JsValue, form_enctype: JsValue) -> Unit = "(obj, formEnctype) => { obj.formEnctype = formEnctype; }"

extern "js" fn html_input_element_form_method_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formMethod"

///|
fn html_input_element_form_method_ffi(obj: JsValue) -> String {
  html_input_element_form_method_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_form_method_ffi(obj: JsValue, form_method: JsValue) -> Unit = "(obj, formMethod) => { obj.formMethod = formMethod; }"

extern "js" fn html_input_element_form_no_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formNoValidate"

///|
fn html_input_element_form_no_validate_ffi(obj: JsValue) -> Bool {
  html_input_element_form_no_validate_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_form_no_validate_ffi(obj: JsValue, form_no_validate: JsValue) -> Unit = "(obj, formNoValidate) => { obj.formNoValidate = formNoValidate; }"

extern "js" fn html_input_element_form_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formTarget"

///|
fn html_input_element_form_target_ffi(obj: JsValue) -> String {
  html_input_element_form_target_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_form_target_ffi(obj: JsValue, form_target: JsValue) -> Unit = "(obj, formTarget) => { obj.formTarget = formTarget; }"

extern "js" fn html_input_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
fn html_input_element_height_ffi(obj: JsValue) -> UInt {
  html_input_element_height_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

extern "js" fn html_input_element_indeterminate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.indeterminate"

///|
fn html_input_element_indeterminate_ffi(obj: JsValue) -> Bool {
  html_input_element_indeterminate_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_indeterminate_ffi(obj: JsValue, indeterminate: JsValue) -> Unit = "(obj, indeterminate) => { obj.indeterminate = indeterminate; }"

extern "js" fn html_input_element_list_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.list"

///|
fn html_input_element_list_ffi(obj: JsValue) -> HTMLDataListElement {
  html_input_element_list_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_max_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.max"

///|
fn html_input_element_max_ffi(obj: JsValue) -> String {
  html_input_element_max_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_max_ffi(obj: JsValue, max: JsValue) -> Unit = "(obj, max) => { obj.max = max; }"

extern "js" fn html_input_element_max_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.maxLength"

///|
fn html_input_element_max_length_ffi(obj: JsValue) -> Int {
  html_input_element_max_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_max_length_ffi(obj: JsValue, max_length: JsValue) -> Unit = "(obj, maxLength) => { obj.maxLength = maxLength; }"

extern "js" fn html_input_element_min_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.min"

///|
fn html_input_element_min_ffi(obj: JsValue) -> String {
  html_input_element_min_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_min_ffi(obj: JsValue, min: JsValue) -> Unit = "(obj, min) => { obj.min = min; }"

extern "js" fn html_input_element_min_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.minLength"

///|
fn html_input_element_min_length_ffi(obj: JsValue) -> Int {
  html_input_element_min_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_min_length_ffi(obj: JsValue, min_length: JsValue) -> Unit = "(obj, minLength) => { obj.minLength = minLength; }"

extern "js" fn html_input_element_multiple_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.multiple"

///|
fn html_input_element_multiple_ffi(obj: JsValue) -> Bool {
  html_input_element_multiple_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_multiple_ffi(obj: JsValue, multiple: JsValue) -> Unit = "(obj, multiple) => { obj.multiple = multiple; }"

extern "js" fn html_input_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn html_input_element_name_ffi(obj: JsValue) -> String {
  html_input_element_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn html_input_element_pattern_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pattern"

///|
fn html_input_element_pattern_ffi(obj: JsValue) -> String {
  html_input_element_pattern_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_pattern_ffi(obj: JsValue, pattern: JsValue) -> Unit = "(obj, pattern) => { obj.pattern = pattern; }"

extern "js" fn html_input_element_placeholder_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.placeholder"

///|
fn html_input_element_placeholder_ffi(obj: JsValue) -> String {
  html_input_element_placeholder_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_placeholder_ffi(obj: JsValue, placeholder: JsValue) -> Unit = "(obj, placeholder) => { obj.placeholder = placeholder; }"

extern "js" fn html_input_element_read_only_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.readOnly"

///|
fn html_input_element_read_only_ffi(obj: JsValue) -> Bool {
  html_input_element_read_only_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_read_only_ffi(obj: JsValue, read_only: JsValue) -> Unit = "(obj, readOnly) => { obj.readOnly = readOnly; }"

extern "js" fn html_input_element_required_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.required"

///|
fn html_input_element_required_ffi(obj: JsValue) -> Bool {
  html_input_element_required_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_required_ffi(obj: JsValue, required: JsValue) -> Unit = "(obj, required) => { obj.required = required; }"

extern "js" fn html_input_element_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.size"

///|
fn html_input_element_size_ffi(obj: JsValue) -> UInt {
  html_input_element_size_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_size_ffi(obj: JsValue, size: JsValue) -> Unit = "(obj, size) => { obj.size = size; }"

extern "js" fn html_input_element_src_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.src"

///|
fn html_input_element_src_ffi(obj: JsValue) -> String {
  html_input_element_src_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "(obj, src) => { obj.src = src; }"

extern "js" fn html_input_element_step_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.step"

///|
fn html_input_element_step_ffi(obj: JsValue) -> String {
  html_input_element_step_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_step_ffi(obj: JsValue, step: JsValue) -> Unit = "(obj, step) => { obj.step = step; }"

extern "js" fn html_input_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn html_input_element_type_ffi(obj: JsValue) -> String {
  html_input_element_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

extern "js" fn html_input_element_default_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.defaultValue"

///|
fn html_input_element_default_value_ffi(obj: JsValue) -> String {
  html_input_element_default_value_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_default_value_ffi(obj: JsValue, default_value: JsValue) -> Unit = "(obj, defaultValue) => { obj.defaultValue = defaultValue; }"

extern "js" fn html_input_element_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
fn html_input_element_value_ffi(obj: JsValue) -> String {
  html_input_element_value_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

extern "js" fn html_input_element_value_as_date_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.valueAsDate"

///|
fn html_input_element_value_as_date_ffi(obj: JsValue) -> JsValue {
  html_input_element_value_as_date_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_value_as_date_ffi(obj: JsValue, value_as_date: JsValue) -> Unit = "(obj, valueAsDate) => { obj.valueAsDate = valueAsDate; }"

extern "js" fn html_input_element_value_as_number_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.valueAsNumber"

///|
fn html_input_element_value_as_number_ffi(obj: JsValue) -> Double {
  html_input_element_value_as_number_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_value_as_number_ffi(obj: JsValue, value_as_number: JsValue) -> Unit = "(obj, valueAsNumber) => { obj.valueAsNumber = valueAsNumber; }"

extern "js" fn html_input_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
fn html_input_element_width_ffi(obj: JsValue) -> UInt {
  html_input_element_width_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

extern "js" fn html_input_element_step_up_ffi(obj: JsValue, n: JsValue) -> Unit = "(obj, n) => obj.stepUp(n)"

extern "js" fn html_input_element_step_down_ffi(obj: JsValue, n: JsValue) -> Unit = "(obj, n) => obj.stepDown(n)"

extern "js" fn html_input_element_will_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.willValidate"

///|
fn html_input_element_will_validate_ffi(obj: JsValue) -> Bool {
  html_input_element_will_validate_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validity"

///|
fn html_input_element_validity_ffi(obj: JsValue) -> ValidityState {
  html_input_element_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_validation_message_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validationMessage"

///|
fn html_input_element_validation_message_ffi(obj: JsValue) -> String {
  html_input_element_validation_message_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_check_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
fn html_input_element_check_validity_ffi(obj: JsValue) -> Bool {
  html_input_element_check_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_report_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

///|
fn html_input_element_report_validity_ffi(obj: JsValue) -> Bool {
  html_input_element_report_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

extern "js" fn html_input_element_labels_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.labels"

///|
fn html_input_element_labels_ffi(obj: JsValue) -> NodeList {
  html_input_element_labels_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_select_ffi(obj: JsValue) -> Unit = "(obj) => obj.select()"

extern "js" fn html_input_element_selection_start_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectionStart"

///|
fn html_input_element_selection_start_ffi(obj: JsValue) -> UInt {
  html_input_element_selection_start_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_selection_start_ffi(obj: JsValue, selection_start: JsValue) -> Unit = "(obj, selectionStart) => { obj.selectionStart = selectionStart; }"

extern "js" fn html_input_element_selection_end_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectionEnd"

///|
fn html_input_element_selection_end_ffi(obj: JsValue) -> UInt {
  html_input_element_selection_end_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_selection_end_ffi(obj: JsValue, selection_end: JsValue) -> Unit = "(obj, selectionEnd) => { obj.selectionEnd = selectionEnd; }"

extern "js" fn html_input_element_selection_direction_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectionDirection"

///|
fn html_input_element_selection_direction_ffi(obj: JsValue) -> String {
  html_input_element_selection_direction_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_selection_direction_ffi(obj: JsValue, selection_direction: JsValue) -> Unit = "(obj, selectionDirection) => { obj.selectionDirection = selectionDirection; }"

extern "js" fn html_input_element_set_range_text_ffi(obj: JsValue, replacement: JsValue) -> Unit = "(obj, replacement) => obj.setRangeText(replacement)"

extern "js" fn html_input_element_set_range_text_2_ffi(obj: JsValue, replacement: JsValue, start: JsValue, end: JsValue, selection_mode: JsValue) -> Unit = "(obj, replacement, start, end, selection_mode) => obj.setRangeText_2(replacement, start, end, selection_mode)"

extern "js" fn html_input_element_set_selection_range_ffi(obj: JsValue, start: JsValue, end: JsValue, direction: JsValue) -> Unit = "(obj, start, end, direction) => obj.setSelectionRange(start, end, direction)"

extern "js" fn html_input_element_show_picker_ffi(obj: JsValue) -> Unit = "(obj) => obj.showPicker()"

extern "js" fn html_input_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
fn html_input_element_align_ffi(obj: JsValue) -> String {
  html_input_element_align_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

extern "js" fn html_input_element_use_map_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.useMap"

///|
fn html_input_element_use_map_ffi(obj: JsValue) -> String {
  html_input_element_use_map_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_use_map_ffi(obj: JsValue, use_map: JsValue) -> Unit = "(obj, useMap) => { obj.useMap = useMap; }"

extern "js" fn html_input_element_popover_target_element_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.popoverTargetElement"

///|
fn html_input_element_popover_target_element_ffi(obj: JsValue) -> Element {
  html_input_element_popover_target_element_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_popover_target_element_ffi(obj: JsValue, popover_target_element: JsValue) -> Unit = "(obj, popoverTargetElement) => { obj.popoverTargetElement = popoverTargetElement; }"

extern "js" fn html_input_element_popover_target_action_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.popoverTargetAction"

///|
fn html_input_element_popover_target_action_ffi(obj: JsValue) -> String {
  html_input_element_popover_target_action_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_input_element_set_popover_target_action_ffi(obj: JsValue, popover_target_action: JsValue) -> Unit = "(obj, popoverTargetAction) => { obj.popoverTargetAction = popoverTargetAction; }"