extern "js" fn dom_string_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
fn dom_string_list_length_ffi(obj: JsValue) -> UInt {
  dom_string_list_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn dom_string_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

extern "js" fn dom_string_list_contains_ffi_js(obj: JsValue, string: JsValue) -> JsValue = "(obj, string) => obj.contains(string)"

///|
fn dom_string_list_contains_ffi(obj: JsValue, string: JsValue) -> Bool {
  dom_string_list_contains_ffi_js(obj, string).unsafe_cast()
}