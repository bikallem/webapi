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
pub(open) trait TCacheStorageMatch {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCacheStorageMatch for Response with to_js(self : Response) -> JsValue = "%identity"

///|
pub impl TCacheStorageMatch for JsUndefined with to_js(self : JsUndefined) -> JsValue = "%identity"

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
  options? : MultiCacheQueryOptions = MultiCacheQueryOptions::empty(),
) -> JsPromise[&TCacheStorageMatch] {
  cache_storage_match_ffi(
    TJsValue::to_js(self),
    request.to_js(),
    TJsValue::to_js(options),
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
