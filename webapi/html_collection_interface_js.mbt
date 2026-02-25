///|
extern "js" fn html_collection_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn html_collection_length_ffi(obj : JsValue) -> UInt {
  html_collection_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_collection_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.item(index)"

///|
extern "js" fn html_collection_named_item_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.namedItem(name)"
