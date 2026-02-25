///|
extern "js" fn mime_type_array_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn mime_type_array_length_ffi(obj : JsValue) -> UInt {
  mime_type_array_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn mime_type_array_item_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.item(index)"

///|
extern "js" fn mime_type_array_named_item_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.namedItem(name)"
