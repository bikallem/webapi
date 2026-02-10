///|
fn radio_node_list_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_RadioNodeList" "get_value"

///|
fn radio_node_list_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(radio_node_list_value_ffi_wasm(obj))
}

///|
fn radio_node_list_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_RadioNodeList" "set_value"
