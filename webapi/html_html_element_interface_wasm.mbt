///|
fn html_html_element_new_ffi() -> HTMLHtmlElement = "webapi_HTMLHtmlElement" "new"

///|
fn html_html_element_version_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLHtmlElement" "get_version"

///|
fn html_html_element_version_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_html_element_version_ffi_wasm(obj))
}

///|
fn html_html_element_set_version_ffi(obj : JsValue, version : JsValue) -> Unit = "webapi_HTMLHtmlElement" "set_version"
