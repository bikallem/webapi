///|
fn storage_length_ffi(obj : JsValue) -> UInt = "webapi_Storage" "get_length"

///|
fn storage_key_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_Storage" "key"

///|
fn storage_clear_ffi(obj : JsValue) -> Unit = "webapi_Storage" "clear"
