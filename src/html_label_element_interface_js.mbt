///|
extern "js" fn html_label_element_new_ffi() -> HTMLLabelElement = "() => new HTMLLabelElement()"

///|
extern "js" fn html_label_element_form_ffi(obj : JsValue) -> JsValue = "(obj) => obj.form"

///|
extern "js" fn html_label_element_html_for_ffi(obj : JsValue) -> JsValue = "(obj) => obj.htmlFor"

///|
extern "js" fn html_label_element_set_html_for_ffi(
  obj : JsValue,
  html_for : JsValue,
) -> Unit = "(obj, htmlFor) => { obj.htmlFor = htmlFor; }"

///|
extern "js" fn html_label_element_control_ffi(obj : JsValue) -> JsValue = "(obj) => obj.control"
