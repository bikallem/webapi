///|
fn storage_length_ffi(obj : JsValue) -> UInt = "webapi_Storage" "get_length"

///|
fn storage_key_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_Storage" "key"

///|
fn storage_get_item_ffi(obj : JsValue, key : JsValue) -> JsValue = "webapi_Storage" "getItem"

///|
fn storage_set_item_ffi(obj : JsValue, key : JsValue, value : JsValue) -> Unit = "webapi_Storage" "setItem"

///|
fn storage_remove_item_ffi(obj : JsValue, key : JsValue) -> Unit = "webapi_Storage" "removeItem"

///|
fn storage_clear_ffi(obj : JsValue) -> Unit = "webapi_Storage" "clear"
