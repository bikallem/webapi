///|
extern "js" fn html_option_element_new_ffi() -> HTMLOptionElement = "() => new HTMLOptionElement()"

///|
extern "js" fn html_option_element_disabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.disabled"

///|
fn html_option_element_disabled_ffi(obj : JsValue) -> Bool {
  html_option_element_disabled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_option_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
extern "js" fn html_option_element_form_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
fn html_option_element_form_ffi(obj : JsValue) -> HTMLFormElement {
  html_option_element_form_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_option_element_label_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.label"

///|
fn html_option_element_label_ffi(obj : JsValue) -> String {
  html_option_element_label_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_option_element_set_label_ffi(
  obj : JsValue,
  label : JsValue,
) -> Unit = "(obj, label) => { obj.label = label; }"

///|
extern "js" fn html_option_element_default_selected_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.defaultSelected"

///|
fn html_option_element_default_selected_ffi(obj : JsValue) -> Bool {
  html_option_element_default_selected_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_option_element_set_default_selected_ffi(
  obj : JsValue,
  default_selected : JsValue,
) -> Unit = "(obj, defaultSelected) => { obj.defaultSelected = defaultSelected; }"

///|
extern "js" fn html_option_element_selected_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.selected"

///|
fn html_option_element_selected_ffi(obj : JsValue) -> Bool {
  html_option_element_selected_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_option_element_set_selected_ffi(
  obj : JsValue,
  selected : JsValue,
) -> Unit = "(obj, selected) => { obj.selected = selected; }"

///|
extern "js" fn html_option_element_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
fn html_option_element_value_ffi(obj : JsValue) -> String {
  html_option_element_value_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_option_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
extern "js" fn html_option_element_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.text"

///|
fn html_option_element_text_ffi(obj : JsValue) -> String {
  html_option_element_text_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_option_element_set_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> Unit = "(obj, text) => { obj.text = text; }"

///|
extern "js" fn html_option_element_index_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.index"

///|
fn html_option_element_index_ffi(obj : JsValue) -> Int {
  html_option_element_index_ffi_js(obj).unsafe_cast()
}
