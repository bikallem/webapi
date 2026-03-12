fn htmlli_element_new_ffi() -> HTMLLIElement = "webapi_HTMLLIElement" "new"

fn htmlli_element_value_ffi(obj: JsValue) -> Int = "webapi_HTMLLIElement" "get_value"

fn htmlli_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_HTMLLIElement" "set_value"

fn htmlli_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLIElement" "get_type"

///|
fn htmlli_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(htmlli_element_type_ffi_wasm(obj))
}

fn htmlli_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "webapi_HTMLLIElement" "set_type"