extern "js" fn html_label_element_new_ffi() -> HTMLLabelElement = "() => new HTMLLabelElement()"

extern "js" fn html_label_element_form_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.form"

///|
fn html_label_element_form_ffi(obj: JsValue) -> HTMLFormElement {
  html_label_element_form_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_label_element_html_for_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.htmlFor"

///|
fn html_label_element_html_for_ffi(obj: JsValue) -> String {
  html_label_element_html_for_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_label_element_set_html_for_ffi(obj: JsValue, html_for: JsValue) -> Unit = "(obj, htmlFor) => { obj.htmlFor = htmlFor; }"

extern "js" fn html_label_element_control_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.control"

///|
fn html_label_element_control_ffi(obj: JsValue) -> HTMLElement {
  html_label_element_control_ffi_js(obj).unsafe_cast()
}