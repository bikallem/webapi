extern "js" fn touch_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
fn touch_list_length_ffi(obj: JsValue) -> UInt {
  touch_list_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn touch_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"