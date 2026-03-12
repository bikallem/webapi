extern "js" fn style_sheet_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

extern "js" fn style_sheet_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
fn style_sheet_list_length_ffi(obj: JsValue) -> UInt {
  style_sheet_list_length_ffi_js(obj).unsafe_cast()
}