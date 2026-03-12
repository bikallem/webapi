// Do not edit. This file is generated.
// MoonBit type: CacheStorage
// Specifications: service-workers.idl

///|
/// [CacheStorage](https://developer.mozilla.org/en-US/docs/Web/API/CacheStorage)
#external
pub type CacheStorage

///|
pub impl TJsValue for CacheStorage with to_js(self : CacheStorage) -> JsValue = "%identity"

///|
pub impl FromJsAny for CacheStorage with from_js_any(value : JsAny) -> CacheStorage = "%identity"

///|
pub fn[T : TCacheStorage] CacheStorage::into(self : CacheStorage) -> T = "%identity"

///|
pub impl TCacheStorage for CacheStorage

///|
pub(open) trait TCacheStorageMatch: TJsValue {}

///|
pub impl TCacheStorageMatch for Response

///|
pub impl TCacheStorageMatch for JsUndefined

///|
/// [CacheStorage](https://developer.mozilla.org/en-US/docs/Web/API/CacheStorage) interface.
pub trait TCacheStorage: TJsValue {
  match_(
    self : Self,
    request : &TRequestInfo,
    options? : MultiCacheQueryOptions,
  ) -> JsPromise[&TCacheStorageMatch] = _
  has(self : Self, cache_name : String) -> JsPromise[Bool] = _
  open(self : Self, cache_name : String) -> JsPromise[Cache] = _
  delete(self : Self, cache_name : String) -> JsPromise[Bool] = _
  keys(self : Self) -> JsPromise[Array[String]] = _
}

///|
/// [CacheStorage.match](https://developer.mozilla.org/en-US/docs/Web/API/CacheStorage/match)
impl TCacheStorage with match_(
  self : Self,
  request : &TRequestInfo,
  options? : MultiCacheQueryOptions,
) -> JsPromise[&TCacheStorageMatch] {
  cache_storage_match_ffi(
    TJsValue::to_js(self),
    request.to_js(),
    opt_to_js(options),
  )
}

///|
/// [CacheStorage.has](https://developer.mozilla.org/en-US/docs/Web/API/CacheStorage/has)
impl TCacheStorage with has(self : Self, cache_name : String) -> JsPromise[Bool] {
  cache_storage_has_ffi(TJsValue::to_js(self), TJsValue::to_js(cache_name))
}

///|
/// [CacheStorage.open](https://developer.mozilla.org/en-US/docs/Web/API/CacheStorage/open)
impl TCacheStorage with open(self : Self, cache_name : String) -> JsPromise[
  Cache,
] {
  cache_storage_open_ffi(TJsValue::to_js(self), TJsValue::to_js(cache_name))
}

///|
/// [CacheStorage.delete](https://developer.mozilla.org/en-US/docs/Web/API/CacheStorage/delete)
impl TCacheStorage with delete(self : Self, cache_name : String) -> JsPromise[
  Bool,
] {
  cache_storage_delete_ffi(TJsValue::to_js(self), TJsValue::to_js(cache_name))
}

///|
/// [CacheStorage.keys](https://developer.mozilla.org/en-US/docs/Web/API/CacheStorage/keys)
impl TCacheStorage with keys(self : Self) -> JsPromise[Array[String]] {
  cache_storage_keys_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn cache_storage_match_ffi_js(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsValue = "(obj, request, options) => obj.match(request, options)"

///|
#cfg(target="js")
fn cache_storage_match_ffi(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsPromise[&TCacheStorageMatch] {
  cache_storage_match_ffi_js(obj, request, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn cache_storage_has_ffi_js(
  obj : JsValue,
  cache_name : JsValue,
) -> JsValue = "(obj, cache_name) => obj.has(cache_name)"

///|
#cfg(target="js")
fn cache_storage_has_ffi(
  obj : JsValue,
  cache_name : JsValue,
) -> JsPromise[Bool] {
  cache_storage_has_ffi_js(obj, cache_name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn cache_storage_open_ffi_js(
  obj : JsValue,
  cache_name : JsValue,
) -> JsValue = "(obj, cache_name) => obj.open(cache_name)"

///|
#cfg(target="js")
fn cache_storage_open_ffi(
  obj : JsValue,
  cache_name : JsValue,
) -> JsPromise[Cache] {
  cache_storage_open_ffi_js(obj, cache_name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn cache_storage_delete_ffi_js(
  obj : JsValue,
  cache_name : JsValue,
) -> JsValue = "(obj, cache_name) => obj.delete(cache_name)"

///|
#cfg(target="js")
fn cache_storage_delete_ffi(
  obj : JsValue,
  cache_name : JsValue,
) -> JsPromise[Bool] {
  cache_storage_delete_ffi_js(obj, cache_name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn cache_storage_keys_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.keys()"

///|
#cfg(target="js")
fn cache_storage_keys_ffi(obj : JsValue) -> JsPromise[Array[String]] {
  cache_storage_keys_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn cache_storage_match_ffi_wasm(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsValue = "webapi_CacheStorage" "match"

///|
#cfg(target="wasm-gc")
fn cache_storage_match_ffi(
  obj : JsValue,
  request : JsValue,
  options : JsValue,
) -> JsPromise[&TCacheStorageMatch] {
  cache_storage_match_ffi_wasm(obj, request, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn cache_storage_has_ffi_wasm(obj : JsValue, cache_name : JsValue) -> JsValue = "webapi_CacheStorage" "has"

///|
#cfg(target="wasm-gc")
fn cache_storage_has_ffi(
  obj : JsValue,
  cache_name : JsValue,
) -> JsPromise[Bool] {
  cache_storage_has_ffi_wasm(obj, cache_name).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn cache_storage_open_ffi_wasm(obj : JsValue, cache_name : JsValue) -> JsValue = "webapi_CacheStorage" "open"

///|
#cfg(target="wasm-gc")
fn cache_storage_open_ffi(
  obj : JsValue,
  cache_name : JsValue,
) -> JsPromise[Cache] {
  cache_storage_open_ffi_wasm(obj, cache_name).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn cache_storage_delete_ffi_wasm(
  obj : JsValue,
  cache_name : JsValue,
) -> JsValue = "webapi_CacheStorage" "delete"

///|
#cfg(target="wasm-gc")
fn cache_storage_delete_ffi(
  obj : JsValue,
  cache_name : JsValue,
) -> JsPromise[Bool] {
  cache_storage_delete_ffi_wasm(obj, cache_name).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn cache_storage_keys_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CacheStorage" "keys"

///|
#cfg(target="wasm-gc")
fn cache_storage_keys_ffi(obj : JsValue) -> JsPromise[Array[String]] {
  cache_storage_keys_ffi_wasm(obj).unsafe_cast()
}
