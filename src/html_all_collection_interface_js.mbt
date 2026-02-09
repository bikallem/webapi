///|
extern "js" fn html_all_collection_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn html_all_collection_length_ffi(obj : JsValue) -> UInt {
  html_all_collection_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_all_collection_item_ffi(
  obj : JsValue,
  name_or_index : JsValue,
) -> JsValue = "(obj, name_or_index) => obj.item(name_or_index)"
