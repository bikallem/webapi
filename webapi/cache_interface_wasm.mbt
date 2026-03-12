fn cache_match_ffi_wasm(obj: JsValue, request: JsValue, options: JsValue) -> JsValue = "webapi_Cache" "match"

///|
fn cache_match_ffi(obj: JsValue, request: JsValue, options: JsValue) -> JsPromise[&TCacheMatch] {
  cache_match_ffi_wasm(obj, request, options).unsafe_cast()
}

fn cache_match_all_ffi_wasm(obj: JsValue, request: JsValue, options: JsValue) -> JsValue = "webapi_Cache" "matchAll"

///|
fn cache_match_all_ffi(obj: JsValue, request: JsValue, options: JsValue) -> JsPromise[Array[Response]] {
  cache_match_all_ffi_wasm(obj, request, options).unsafe_cast()
}

fn cache_add_ffi_wasm(obj: JsValue, request: JsValue) -> JsValue = "webapi_Cache" "add"

///|
fn cache_add_ffi(obj: JsValue, request: JsValue) -> JsPromise[JsValue] {
  cache_add_ffi_wasm(obj, request).unsafe_cast()
}

fn cache_add_all_ffi_wasm(obj: JsValue, requests: JsValue) -> JsValue = "webapi_Cache" "addAll"

///|
fn cache_add_all_ffi(obj: JsValue, requests: JsValue) -> JsPromise[JsValue] {
  cache_add_all_ffi_wasm(obj, requests).unsafe_cast()
}

fn cache_put_ffi_wasm(obj: JsValue, request: JsValue, response: JsValue) -> JsValue = "webapi_Cache" "put"

///|
fn cache_put_ffi(obj: JsValue, request: JsValue, response: JsValue) -> JsPromise[JsValue] {
  cache_put_ffi_wasm(obj, request, response).unsafe_cast()
}

fn cache_delete_ffi_wasm(obj: JsValue, request: JsValue, options: JsValue) -> JsValue = "webapi_Cache" "delete"

///|
fn cache_delete_ffi(obj: JsValue, request: JsValue, options: JsValue) -> JsPromise[Bool] {
  cache_delete_ffi_wasm(obj, request, options).unsafe_cast()
}

fn cache_keys_ffi_wasm(obj: JsValue, request: JsValue, options: JsValue) -> JsValue = "webapi_Cache" "keys"

///|
fn cache_keys_ffi(obj: JsValue, request: JsValue, options: JsValue) -> JsPromise[Array[Request]] {
  cache_keys_ffi_wasm(obj, request, options).unsafe_cast()
}