fn html_data_element_new_ffi() -> HTMLDataElement = "webapi_HTMLDataElement" "new"

fn html_data_element_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLDataElement" "get_value"

///|
fn html_data_element_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_data_element_value_ffi_wasm(obj))
}

fn html_data_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_HTMLDataElement" "set_value"