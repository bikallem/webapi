extern "js" fn dom_rect_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
fn dom_rect_list_length_ffi(obj: JsValue) -> UInt {
  dom_rect_list_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_rect_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"