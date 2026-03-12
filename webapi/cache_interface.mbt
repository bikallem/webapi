// Do not edit. This file is generated.
// MoonBit type: Cache
// Specifications: service-workers.idl

/// [Cache](https://developer.mozilla.org/en-US/docs/Web/API/Cache)
#external
pub type Cache

pub impl TJsValue for Cache with to_js(self: Cache) -> JsValue = "%identity"

pub impl FromJsAny for Cache with from_js_any(value : JsAny) -> Cache = "%identity"

pub fn[T: TCache] Cache::into(self : Cache) -> T = "%identity"

pub impl TCache for Cache

pub(open) trait TCacheMatch : TJsValue {}

pub impl TCacheMatch for Response

pub impl TCacheMatch for JsUndefined

/// [Cache](https://developer.mozilla.org/en-US/docs/Web/API/Cache) interface.
pub trait TCache: TJsValue {
  match_(self : Self, request : &TRequestInfo, options? : CacheQueryOptions) -> JsPromise[&TCacheMatch] = _
  match_all(self : Self, request? : &TRequestInfo, options? : CacheQueryOptions) -> JsPromise[Array[Response]] = _
  add(self : Self, request : &TRequestInfo) -> JsPromise[JsValue] = _
  add_all(self : Self, requests : Array[RequestInfo]) -> JsPromise[JsValue] = _
  put(self : Self, request : &TRequestInfo, response : &TResponse) -> JsPromise[JsValue] = _
  delete(self : Self, request : &TRequestInfo, options? : CacheQueryOptions) -> JsPromise[Bool] = _
  keys(self : Self, request? : &TRequestInfo, options? : CacheQueryOptions) -> JsPromise[Array[Request]] = _
}

/// [Cache.match](https://developer.mozilla.org/en-US/docs/Web/API/Cache/match)
impl TCache with match_(self : Self, 
request : &TRequestInfo, 
options? : CacheQueryOptions) -> JsPromise[&TCacheMatch] {
  cache_match_ffi(TJsValue::to_js(self), request.to_js(), opt_to_js(options))
}

/// [Cache.matchAll](https://developer.mozilla.org/en-US/docs/Web/API/Cache/matchAll)
impl TCache with match_all(self : Self, 
request? : &TRequestInfo, 
options? : CacheQueryOptions) -> JsPromise[Array[Response]] {
  cache_match_all_ffi(TJsValue::to_js(self), match request {
Some(v) => v.to_js()
None => JsValue::undefined()
}, opt_to_js(options))
}

/// [Cache.add](https://developer.mozilla.org/en-US/docs/Web/API/Cache/add)
impl TCache with add(self : Self, 
request : &TRequestInfo) -> JsPromise[JsValue] {
  cache_add_ffi(TJsValue::to_js(self), request.to_js())
}

/// [Cache.addAll](https://developer.mozilla.org/en-US/docs/Web/API/Cache/addAll)
impl TCache with add_all(self : Self, 
requests : Array[RequestInfo]) -> JsPromise[JsValue] {
  cache_add_all_ffi(TJsValue::to_js(self), TJsValue::to_js(requests))
}

/// [Cache.put](https://developer.mozilla.org/en-US/docs/Web/API/Cache/put)
impl TCache with put(self : Self, 
request : &TRequestInfo, 
response : &TResponse) -> JsPromise[JsValue] {
  cache_put_ffi(TJsValue::to_js(self), request.to_js(), TJsValue::to_js(response))
}

/// [Cache.delete](https://developer.mozilla.org/en-US/docs/Web/API/Cache/delete)
impl TCache with delete(self : Self, 
request : &TRequestInfo, 
options? : CacheQueryOptions) -> JsPromise[Bool] {
  cache_delete_ffi(TJsValue::to_js(self), request.to_js(), opt_to_js(options))
}

/// [Cache.keys](https://developer.mozilla.org/en-US/docs/Web/API/Cache/keys)
impl TCache with keys(self : Self, 
request? : &TRequestInfo, 
options? : CacheQueryOptions) -> JsPromise[Array[Request]] {
  cache_keys_ffi(TJsValue::to_js(self), match request {
Some(v) => v.to_js()
None => JsValue::undefined()
}, opt_to_js(options))
}