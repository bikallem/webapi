///|
fn html_label_element_new_ffi() -> HTMLLabelElement = "webapi_HTMLLabelElement" "new"

///|
fn html_label_element_form_ffi(obj : JsValue) -> HTMLFormElement = "webapi_HTMLLabelElement" "get_form"

///|
fn html_label_element_html_for_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLLabelElement" "get_htmlFor"

///|
fn html_label_element_html_for_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_label_element_html_for_ffi_wasm(obj))
}

///|
fn html_label_element_set_html_for_ffi(
  obj : JsValue,
  html_for : JsValue,
) -> Unit = "webapi_HTMLLabelElement" "set_htmlFor"

///|
fn html_label_element_control_ffi(obj : JsValue) -> HTMLElement = "webapi_HTMLLabelElement" "get_control"
