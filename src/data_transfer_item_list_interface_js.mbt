///|
extern "js" fn data_transfer_item_list_length_ffi(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
extern "js" fn data_transfer_item_list_add_ffi(
  obj : JsValue,
  data : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, data, type_) => obj.add(data, type_)"

///|
extern "js" fn data_transfer_item_list_add_2_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.add_2(data)"

///|
extern "js" fn data_transfer_item_list_remove_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.remove(index)"

///|
extern "js" fn data_transfer_item_list_clear_ffi(obj : JsValue) -> Unit = "(obj) => obj.clear()"
