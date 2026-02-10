fn html_opt_group_element_new_ffi() -> HTMLOptGroupElement = "webapi_HTMLOptGroupElement" "new"

fn html_opt_group_element_disabled_ffi(obj: JsValue) -> Bool = "webapi_HTMLOptGroupElement" "get_disabled"

fn html_opt_group_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "webapi_HTMLOptGroupElement" "set_disabled"

fn html_opt_group_element_label_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLOptGroupElement" "get_label"

///|
fn html_opt_group_element_label_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_opt_group_element_label_ffi_wasm(obj))
}

fn html_opt_group_element_set_label_ffi(obj: JsValue, label: JsValue) -> Unit = "webapi_HTMLOptGroupElement" "set_label"