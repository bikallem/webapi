///|
fn htmlu_list_element_new_ffi() -> HTMLUListElement = "webapi_HTMLUListElement" "new"

///|
fn htmlu_list_element_compact_ffi(obj : JsValue) -> Bool = "webapi_HTMLUListElement" "get_compact"

///|
fn htmlu_list_element_set_compact_ffi(obj : JsValue, compact : JsValue) -> Unit = "webapi_HTMLUListElement" "set_compact"

///|
fn htmlu_list_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLUListElement" "get_type"

///|
fn htmlu_list_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmlu_list_element_type_ffi_wasm(obj))
}

///|
fn htmlu_list_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_HTMLUListElement" "set_type"
