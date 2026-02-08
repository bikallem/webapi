///|
extern "js" fn html_all_collection_length_ffi(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
extern "js" fn html_all_collection_item_ffi(
  obj : JsValue,
  name_or_index : JsValue,
) -> JsValue = "(obj, name_or_index) => obj.item(name_or_index)"
