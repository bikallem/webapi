///|
extern "js" fn x_path_result_result_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.resultType"

///|
fn x_path_result_result_type_ffi(obj : JsValue) -> UInt {
  x_path_result_result_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn x_path_result_number_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.numberValue"

///|
fn x_path_result_number_value_ffi(obj : JsValue) -> Double {
  x_path_result_number_value_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn x_path_result_string_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.stringValue"

///|
fn x_path_result_string_value_ffi(obj : JsValue) -> String {
  x_path_result_string_value_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn x_path_result_boolean_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.booleanValue"

///|
fn x_path_result_boolean_value_ffi(obj : JsValue) -> Bool {
  x_path_result_boolean_value_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn x_path_result_single_node_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.singleNodeValue"

///|
fn x_path_result_single_node_value_ffi(obj : JsValue) -> Node {
  x_path_result_single_node_value_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn x_path_result_invalid_iterator_state_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.invalidIteratorState"

///|
fn x_path_result_invalid_iterator_state_ffi(obj : JsValue) -> Bool {
  x_path_result_invalid_iterator_state_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn x_path_result_snapshot_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.snapshotLength"

///|
fn x_path_result_snapshot_length_ffi(obj : JsValue) -> UInt {
  x_path_result_snapshot_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn x_path_result_iterate_next_ffi(obj : JsValue) -> JsValue = "(obj) => obj.iterateNext()"

///|
extern "js" fn x_path_result_snapshot_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.snapshotItem(index)"
