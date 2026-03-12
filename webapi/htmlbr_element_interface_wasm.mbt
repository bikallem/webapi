///|
fn htmlbr_element_new_ffi() -> HTMLBRElement = "webapi_HTMLBRElement" "new"

///|
fn htmlbr_element_clear_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLBRElement" "get_clear"

///|
fn htmlbr_element_clear_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmlbr_element_clear_ffi_wasm(obj))
}

///|
fn htmlbr_element_set_clear_ffi(obj : JsValue, clear : JsValue) -> Unit = "webapi_HTMLBRElement" "set_clear"
