///|
fn html_param_element_new_ffi() -> HTMLParamElement = "webapi_HTMLParamElement" "new"

///|
fn html_param_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLParamElement" "get_name"

///|
fn html_param_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_param_element_name_ffi_wasm(obj))
}

///|
fn html_param_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLParamElement" "set_name"

///|
fn html_param_element_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLParamElement" "get_value"

///|
fn html_param_element_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_param_element_value_ffi_wasm(obj))
}

///|
fn html_param_element_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLParamElement" "set_value"

///|
fn html_param_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLParamElement" "get_type"

///|
fn html_param_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_param_element_type_ffi_wasm(obj))
}

///|
fn html_param_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_HTMLParamElement" "set_type"

///|
fn html_param_element_value_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLParamElement" "get_valueType"

///|
fn html_param_element_value_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_param_element_value_type_ffi_wasm(obj))
}

///|
fn html_param_element_set_value_type_ffi(
  obj : JsValue,
  value_type : JsValue,
) -> Unit = "webapi_HTMLParamElement" "set_valueType"
