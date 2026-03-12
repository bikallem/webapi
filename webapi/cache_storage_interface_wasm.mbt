fn cache_storage_match_ffi_wasm(obj: JsValue, request: JsValue, options: JsValue) -> JsValue = "webapi_CacheStorage" "match"

///|
fn cache_storage_match_ffi(obj: JsValue, request: JsValue, options: JsValue) -> JsPromise[&TCacheStorageMatch] {
  cache_storage_match_ffi_wasm(obj, request, options).unsafe_cast()
}

fn cache_storage_has_ffi_wasm(obj: JsValue, cache_name: JsValue) -> JsValue = "webapi_CacheStorage" "has"

///|
fn cache_storage_has_ffi(obj: JsValue, cache_name: JsValue) -> JsPromise[Bool] {
  cache_storage_has_ffi_wasm(obj, cache_name).unsafe_cast()
}

fn cache_storage_open_ffi_wasm(obj: JsValue, cache_name: JsValue) -> JsValue = "webapi_CacheStorage" "open"

///|
fn cache_storage_open_ffi(obj: JsValue, cache_name: JsValue) -> JsPromise[Cache] {
  cache_storage_open_ffi_wasm(obj, cache_name).unsafe_cast()
}

fn cache_storage_delete_ffi_wasm(obj: JsValue, cache_name: JsValue) -> JsValue = "webapi_CacheStorage" "delete"

///|
fn cache_storage_delete_ffi(obj: JsValue, cache_name: JsValue) -> JsPromise[Bool] {
  cache_storage_delete_ffi_wasm(obj, cache_name).unsafe_cast()
}

fn cache_storage_keys_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CacheStorage" "keys"

///|
fn cache_storage_keys_ffi(obj: JsValue) -> JsPromise[Array[String]] {
  cache_storage_keys_ffi_wasm(obj).unsafe_cast()
}