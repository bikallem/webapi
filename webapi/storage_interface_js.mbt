extern "js" fn storage_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
fn storage_length_ffi(obj: JsValue) -> UInt {
  storage_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn storage_key_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.key(index)"

extern "js" fn storage_get_item_ffi(obj: JsValue, key: JsValue) -> JsValue = "(obj, key) => obj.getItem(key)"

extern "js" fn storage_set_item_ffi(obj: JsValue, key: JsValue, value: JsValue) -> Unit = "(obj, key, value) => obj.setItem(key, value)"

extern "js" fn storage_remove_item_ffi(obj: JsValue, key: JsValue) -> Unit = "(obj, key) => obj.removeItem(key)"

extern "js" fn storage_clear_ffi(obj: JsValue) -> Unit = "(obj) => obj.clear()"