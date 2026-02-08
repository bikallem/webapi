extern "js" fn storage_length_ffi(obj: JsValue) -> JsValue = "(obj) => obj.length"

extern "js" fn storage_key_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.key(index)"

extern "js" fn storage_clear_ffi(obj: JsValue) -> Unit = "(obj) => obj.clear()"