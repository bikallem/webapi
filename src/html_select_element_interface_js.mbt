///|
extern "js" fn html_select_element_new_ffi() -> HTMLSelectElement = "() => new HTMLSelectElement()"

///|
extern "js" fn html_select_element_autocomplete_ffi(obj : JsValue) -> JsValue = "(obj) => obj.autocomplete"

///|
extern "js" fn html_select_element_set_autocomplete_ffi(
  obj : JsValue,
  autocomplete : JsValue,
) -> Unit = "(obj, autocomplete) => { obj.autocomplete = autocomplete; }"

///|
extern "js" fn html_select_element_disabled_ffi(obj : JsValue) -> JsValue = "(obj) => obj.disabled"

///|
extern "js" fn html_select_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
extern "js" fn html_select_element_form_ffi(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
extern "js" fn html_select_element_multiple_ffi(obj : JsValue) -> JsValue = "(obj) => obj.multiple"

///|
extern "js" fn html_select_element_set_multiple_ffi(
  obj : JsValue,
  multiple : JsValue,
) -> Unit = "(obj, multiple) => { obj.multiple = multiple; }"

///|
extern "js" fn html_select_element_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn html_select_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn html_select_element_required_ffi(obj : JsValue) -> JsValue = "(obj) => obj.required"

///|
extern "js" fn html_select_element_set_required_ffi(
  obj : JsValue,
  required : JsValue,
) -> Unit = "(obj, required) => { obj.required = required; }"

///|
extern "js" fn html_select_element_size_ffi(obj : JsValue) -> JsValue = "(obj) => obj.size"

///|
extern "js" fn html_select_element_set_size_ffi(
  obj : JsValue,
  size : JsValue,
) -> Unit = "(obj, size) => { obj.size = size; }"

///|
extern "js" fn html_select_element_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
extern "js" fn html_select_element_options_ffi(obj : JsValue) -> JsValue = "(obj) => obj.options"

///|
extern "js" fn html_select_element_length_ffi(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
extern "js" fn html_select_element_set_length_ffi(
  obj : JsValue,
  length : JsValue,
) -> Unit = "(obj, length) => { obj.length = length; }"

///|
extern "js" fn html_select_element_named_item_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.namedItem(name)"

///|
extern "js" fn html_select_element_add_ffi(
  obj : JsValue,
  element : JsValue,
  before : JsValue,
) -> Unit = "(obj, element, before) => obj.add(element, before)"

///|
extern "js" fn html_select_element_remove_ffi(obj : JsValue) -> Unit = "(obj) => obj.remove()"

///|
extern "js" fn html_select_element_remove_2_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.remove_2(index)"

///|
extern "js" fn html_select_element_selected_options_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.selectedOptions"

///|
extern "js" fn html_select_element_selected_index_ffi(obj : JsValue) -> JsValue = "(obj) => obj.selectedIndex"

///|
extern "js" fn html_select_element_set_selected_index_ffi(
  obj : JsValue,
  selected_index : JsValue,
) -> Unit = "(obj, selectedIndex) => { obj.selectedIndex = selectedIndex; }"

///|
extern "js" fn html_select_element_value_ffi(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
extern "js" fn html_select_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
extern "js" fn html_select_element_will_validate_ffi(obj : JsValue) -> JsValue = "(obj) => obj.willValidate"

///|
extern "js" fn html_select_element_validity_ffi(obj : JsValue) -> JsValue = "(obj) => obj.validity"

///|
extern "js" fn html_select_element_validation_message_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.validationMessage"

///|
extern "js" fn html_select_element_check_validity_ffi(obj : JsValue) -> JsValue = "(obj) => obj.checkValidity()"

///|
extern "js" fn html_select_element_report_validity_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.reportValidity()"

///|
extern "js" fn html_select_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(error)"

///|
extern "js" fn html_select_element_show_picker_ffi(obj : JsValue) -> Unit = "(obj) => obj.showPicker()"

///|
extern "js" fn html_select_element_labels_ffi(obj : JsValue) -> JsValue = "(obj) => obj.labels"
