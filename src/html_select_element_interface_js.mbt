extern "js" fn html_select_element_new_ffi() -> HTMLSelectElement = "() => new HTMLSelectElement()"

extern "js" fn html_select_element_autocomplete_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.autocomplete"

///|
fn html_select_element_autocomplete_ffi(obj: JsValue) -> String {
  html_select_element_autocomplete_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_set_autocomplete_ffi(obj: JsValue, autocomplete: JsValue) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

extern "js" fn html_select_element_disabled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.disabled"

///|
fn html_select_element_disabled_ffi(obj: JsValue) -> Bool {
  html_select_element_disabled_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

extern "js" fn html_select_element_form_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.form"

///|
fn html_select_element_form_ffi(obj: JsValue) -> HTMLFormElement {
  html_select_element_form_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_multiple_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.multiple"

///|
fn html_select_element_multiple_ffi(obj: JsValue) -> Bool {
  html_select_element_multiple_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_set_multiple_ffi(obj: JsValue, multiple: JsValue) -> Unit = "(obj, multiple) => { obj.multiple = multiple; }"

extern "js" fn html_select_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn html_select_element_name_ffi(obj: JsValue) -> String {
  html_select_element_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn html_select_element_required_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.required"

///|
fn html_select_element_required_ffi(obj: JsValue) -> Bool {
  html_select_element_required_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_set_required_ffi(obj: JsValue, required: JsValue) -> Unit = "(obj, required) => { obj.required = required; }"

extern "js" fn html_select_element_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.size"

///|
fn html_select_element_size_ffi(obj: JsValue) -> UInt {
  html_select_element_size_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_set_size_ffi(obj: JsValue, size: JsValue) -> Unit = "(obj, size) => { obj.size = size; }"

extern "js" fn html_select_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn html_select_element_type_ffi(obj: JsValue) -> String {
  html_select_element_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_options_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.options"

///|
fn html_select_element_options_ffi(obj: JsValue) -> HTMLOptionsCollection {
  html_select_element_options_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
fn html_select_element_length_ffi(obj: JsValue) -> UInt {
  html_select_element_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_set_length_ffi(obj: JsValue, length: JsValue) -> Unit = "(obj, length) => { obj.length = length; }"

extern "js" fn html_select_element_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

extern "js" fn html_select_element_named_item_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.namedItem(name)"

extern "js" fn html_select_element_add_ffi(obj: JsValue, element: JsValue, before: JsValue) -> Unit = "(obj, element, before) => obj.add(element, before)"

extern "js" fn html_select_element_remove_ffi(obj: JsValue) -> Unit = "(obj) => obj.remove()"

extern "js" fn html_select_element_remove_2_ffi(obj: JsValue, index: JsValue) -> Unit = "(obj, index) => obj.remove_2(index)"

extern "js" fn html_select_element_set_ffi(obj: JsValue, index: JsValue, option: JsValue) -> Unit = "(obj, index, option) => { obj[index] = option; }"

extern "js" fn html_select_element_selected_options_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectedOptions"

///|
fn html_select_element_selected_options_ffi(obj: JsValue) -> HTMLCollection {
  html_select_element_selected_options_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_selected_index_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.selectedIndex"

///|
fn html_select_element_selected_index_ffi(obj: JsValue) -> Int {
  html_select_element_selected_index_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_set_selected_index_ffi(obj: JsValue, selected_index: JsValue) -> Unit = "(obj, selectedIndex) => { obj.selectedIndex = selectedIndex; }"

extern "js" fn html_select_element_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
fn html_select_element_value_ffi(obj: JsValue) -> String {
  html_select_element_value_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

extern "js" fn html_select_element_will_validate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.willValidate"

///|
fn html_select_element_will_validate_ffi(obj: JsValue) -> Bool {
  html_select_element_will_validate_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validity"

///|
fn html_select_element_validity_ffi(obj: JsValue) -> ValidityState {
  html_select_element_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_validation_message_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.validationMessage"

///|
fn html_select_element_validation_message_ffi(obj: JsValue) -> String {
  html_select_element_validation_message_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_check_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
fn html_select_element_check_validity_ffi(obj: JsValue) -> Bool {
  html_select_element_check_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_report_validity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reportValidity()"

///|
fn html_select_element_report_validity_ffi(obj: JsValue) -> Bool {
  html_select_element_report_validity_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_select_element_set_custom_validity_ffi(obj: JsValue, error: JsValue) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

extern "js" fn html_select_element_show_picker_ffi(obj: JsValue) -> Unit = "(obj) => obj.showPicker()"

extern "js" fn html_select_element_labels_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.labels"

///|
fn html_select_element_labels_ffi(obj: JsValue) -> NodeList {
  html_select_element_labels_ffi_js(obj).unsafe_cast()
}