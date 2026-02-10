extern "js" fn html_text_area_element_new_ffi() -> HTMLTextAreaElement = "() => new HTMLTextAreaElement()"

extern "js" fn html_text_area_element_autocomplete_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.autocomplete"

///|
fn html_text_area_element_autocomplete_ffi(obj: JsValue) -> String {
  html_text_area_element_autocomplete_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_autocomplete_ffi(obj: JsValue, autocomplete: JsValue) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

extern "js" fn html_text_area_element_cols_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cols"

///|
fn html_text_area_element_cols_ffi(obj: JsValue) -> UInt {
  html_text_area_element_cols_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_cols_ffi(obj: JsValue, cols: JsValue) -> Unit = "(obj, cols) => { obj.cols = cols; }"

extern "js" fn html_text_area_element_dir_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.dirName"

///|
fn html_text_area_element_dir_name_ffi(obj: JsValue) -> String {
  html_text_area_element_dir_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_dir_name_ffi(obj: JsValue, dir_name: JsValue) -> Unit = "(obj, dirName) => { obj.dirName = dirName; }"

extern "js" fn html_text_area_element_disabled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.disabled"

///|
fn html_text_area_element_disabled_ffi(obj: JsValue) -> Bool {
  html_text_area_element_disabled_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

extern "js" fn html_text_area_element_form_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.form"

///|
fn html_text_area_element_form_ffi(obj: JsValue) -> HTMLFormElement {
  html_text_area_element_form_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_max_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.maxLength"

///|
fn html_text_area_element_max_length_ffi(obj: JsValue) -> Int {
  html_text_area_element_max_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_max_length_ffi(obj: JsValue, max_length: JsValue) -> Unit = "(obj, maxLength) => { obj.maxLength = maxLength; }"

extern "js" fn html_text_area_element_min_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.minLength"

///|
fn html_text_area_element_min_length_ffi(obj: JsValue) -> Int {
  html_text_area_element_min_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_min_length_ffi(obj: JsValue, min_length: JsValue) -> Unit = "(obj, minLength) => { obj.minLength = minLength; }"

extern "js" fn html_text_area_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn html_text_area_element_name_ffi(obj: JsValue) -> String {
  html_text_area_element_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn html_text_area_element_placeholder_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.placeholder"

///|
fn html_text_area_element_placeholder_ffi(obj: JsValue) -> String {
  html_text_area_element_placeholder_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_placeholder_ffi(obj: JsValue, placeholder: JsValue) -> Unit = "(obj, placeholder) => { obj.placeholder = placeholder; }"

extern "js" fn html_text_area_element_read_only_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.readOnly"

///|
fn html_text_area_element_read_only_ffi(obj: JsValue) -> Bool {
  html_text_area_element_read_only_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_read_only_ffi(obj: JsValue, read_only: JsValue) -> Unit = "(obj, readOnly) => { obj.readOnly = readOnly; }"

extern "js" fn html_text_area_element_required_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.required"

///|
fn html_text_area_element_required_ffi(obj: JsValue) -> Bool {
  html_text_area_element_required_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_required_ffi(obj: JsValue, required: JsValue) -> Unit = "(obj, required) => { obj.required = required; }"

extern "js" fn html_text_area_element_rows_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rows"

///|
fn html_text_area_element_rows_ffi(obj: JsValue) -> UInt {
  html_text_area_element_rows_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_rows_ffi(obj: JsValue, rows: JsValue) -> Unit = "(obj, rows) => { obj.rows = rows; }"

extern "js" fn html_text_area_element_wrap_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.wrap"

///|
fn html_text_area_element_wrap_ffi(obj: JsValue) -> String {
  html_text_area_element_wrap_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_wrap_ffi(obj: JsValue, wrap: JsValue) -> Unit = "(obj, wrap) => { obj.wrap = wrap; }"

extern "js" fn html_text_area_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn html_text_area_element_type_ffi(obj: JsValue) -> String {
  html_text_area_element_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_default_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.defaultValue"

///|
fn html_text_area_element_default_value_ffi(obj: JsValue) -> String {
  html_text_area_element_default_value_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_default_value_ffi(obj: JsValue, default_value: JsValue) -> Unit = "(obj, defaultValue) => { obj.defaultValue = defaultValue; }"

extern "js" fn html_text_area_element_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
fn html_text_area_element_value_ffi(obj: JsValue) -> String {
  html_text_area_element_value_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

extern "js" fn html_text_area_element_text_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.textLength"

///|
fn html_text_area_element_text_length_ffi(obj: JsValue) -> UInt {
  html_text_area_element_text_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_will_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.willValidate"

///|
fn html_text_area_element_will_validate_ffi(obj: JsValue) -> Bool {
  html_text_area_element_will_validate_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validity"

///|
fn html_text_area_element_validity_ffi(obj: JsValue) -> ValidityState {
  html_text_area_element_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_validation_message_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validationMessage"

///|
fn html_text_area_element_validation_message_ffi(obj: JsValue) -> String {
  html_text_area_element_validation_message_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_check_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
fn html_text_area_element_check_validity_ffi(obj: JsValue) -> Bool {
  html_text_area_element_check_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_report_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

///|
fn html_text_area_element_report_validity_ffi(obj: JsValue) -> Bool {
  html_text_area_element_report_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

extern "js" fn html_text_area_element_labels_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.labels"

///|
fn html_text_area_element_labels_ffi(obj: JsValue) -> NodeList {
  html_text_area_element_labels_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_select_ffi(obj: JsValue) -> Unit = "(obj) => obj.select()"

extern "js" fn html_text_area_element_selection_start_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectionStart"

///|
fn html_text_area_element_selection_start_ffi(obj: JsValue) -> UInt {
  html_text_area_element_selection_start_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_selection_start_ffi(obj: JsValue, selection_start: JsValue) -> Unit = "(obj, selectionStart) => { obj.selectionStart = selectionStart; }"

extern "js" fn html_text_area_element_selection_end_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectionEnd"

///|
fn html_text_area_element_selection_end_ffi(obj: JsValue) -> UInt {
  html_text_area_element_selection_end_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_selection_end_ffi(obj: JsValue, selection_end: JsValue) -> Unit = "(obj, selectionEnd) => { obj.selectionEnd = selectionEnd; }"

extern "js" fn html_text_area_element_selection_direction_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectionDirection"

///|
fn html_text_area_element_selection_direction_ffi(obj: JsValue) -> String {
  html_text_area_element_selection_direction_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_text_area_element_set_selection_direction_ffi(obj: JsValue, selection_direction: JsValue) -> Unit = "(obj, selectionDirection) => { obj.selectionDirection = selectionDirection; }"

extern "js" fn html_text_area_element_set_range_text_ffi(obj: JsValue, replacement: JsValue) -> Unit = "(obj, replacement) => obj.setRangeText(replacement)"

extern "js" fn html_text_area_element_set_range_text_2_ffi(obj: JsValue, replacement: JsValue, start: JsValue, end: JsValue, selection_mode: JsValue) -> Unit = "(obj, replacement, start, end, selection_mode) => obj.setRangeText_2(replacement, start, end, selection_mode)"

extern "js" fn html_text_area_element_set_selection_range_ffi(obj: JsValue, start: JsValue, end: JsValue, direction: JsValue) -> Unit = "(obj, start, end, direction) => obj.setSelectionRange(start, end, direction)"