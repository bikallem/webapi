///|
fn headers_new_ffi(init : JsValue) -> Headers = "webapi_Headers" "new"

///|
fn headers_append_ffi(obj : JsValue, name : JsValue, value : JsValue) -> Unit = "webapi_Headers" "append"

///|
fn headers_delete_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_Headers" "delete"

///|
fn headers_get_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_Headers" "get"

///|
fn headers_get_set_cookie_ffi_wasm(obj : JsValue) -> JsArray = "webapi_Headers" "getSetCookie"

///|
fn headers_get_set_cookie_ffi(obj : JsValue) -> Array[String] {
  headers_get_set_cookie_ffi_wasm(obj).to_string_array()
}

///|
fn headers_has_ffi(obj : JsValue, name : JsValue) -> Bool = "webapi_Headers" "has"

///|
fn headers_set_ffi(obj : JsValue, name : JsValue, value : JsValue) -> Unit = "webapi_Headers" "set"
