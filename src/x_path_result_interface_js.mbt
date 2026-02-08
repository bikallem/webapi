///|
extern "js" fn x_path_result_result_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.resultType"

///|
extern "js" fn x_path_result_number_value_ffi(obj : JsValue) -> JsValue = "(obj) => obj.numberValue"

///|
extern "js" fn x_path_result_string_value_ffi(obj : JsValue) -> JsValue = "(obj) => obj.stringValue"

///|
extern "js" fn x_path_result_boolean_value_ffi(obj : JsValue) -> JsValue = "(obj) => obj.booleanValue"

///|
extern "js" fn x_path_result_single_node_value_ffi(obj : JsValue) -> JsValue = "(obj) => obj.singleNodeValue"

///|
extern "js" fn x_path_result_invalid_iterator_state_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.invalidIteratorState"

///|
extern "js" fn x_path_result_snapshot_length_ffi(obj : JsValue) -> JsValue = "(obj) => obj.snapshotLength"

///|
extern "js" fn x_path_result_iterate_next_ffi(obj : JsValue) -> JsValue = "(obj) => obj.iterateNext()"

///|
extern "js" fn x_path_result_snapshot_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.snapshotItem(index)"
