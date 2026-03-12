fn x_path_result_result_type_ffi(obj: JsValue) -> UInt = "webapi_XPathResult" "get_resultType"

fn x_path_result_number_value_ffi(obj: JsValue) -> Double = "webapi_XPathResult" "get_numberValue"

fn x_path_result_string_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_XPathResult" "get_stringValue"

///|
fn x_path_result_string_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(x_path_result_string_value_ffi_wasm(obj))
}

fn x_path_result_boolean_value_ffi(obj: JsValue) -> Bool = "webapi_XPathResult" "get_booleanValue"

fn x_path_result_single_node_value_ffi(obj: JsValue) -> Node = "webapi_XPathResult" "get_singleNodeValue"

fn x_path_result_invalid_iterator_state_ffi(obj: JsValue) -> Bool = "webapi_XPathResult" "get_invalidIteratorState"

fn x_path_result_snapshot_length_ffi(obj: JsValue) -> UInt = "webapi_XPathResult" "get_snapshotLength"

fn x_path_result_iterate_next_ffi(obj: JsValue) -> JsValue = "webapi_XPathResult" "iterateNext"

fn x_path_result_snapshot_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_XPathResult" "snapshotItem"