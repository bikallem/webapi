// Do not edit. This file is generated.
// MoonBit type: MultiCacheQueryOptions
// Specifications: service-workers.idl

///|
/// [MultiCacheQueryOptions](https://developer.mozilla.org/en-US/docs/Web/API/MultiCacheQueryOptions)
#external
pub type MultiCacheQueryOptions

///|
pub impl TJsValue for MultiCacheQueryOptions with to_js(
  self : MultiCacheQueryOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for MultiCacheQueryOptions with from_js_any(value : JsAny) -> MultiCacheQueryOptions = "%identity"

///|
pub fn MultiCacheQueryOptions::new(
  ignore_search? : Bool,
  ignore_method? : Bool,
  ignore_vary? : Bool,
  cache_name? : String,
) -> MultiCacheQueryOptions {
  multi_cache_query_options_ffi(
    opt_to_js(ignore_search),
    opt_to_js(ignore_method),
    opt_to_js(ignore_vary),
    opt_to_js(cache_name),
  )
}

///|
pub fn MultiCacheQueryOptions::empty() -> MultiCacheQueryOptions {
  multi_cache_query_options_empty_ffi()
}

///|
pub fn MultiCacheQueryOptions::ignore_search(
  self : MultiCacheQueryOptions,
) -> Bool? {
  multi_cache_query_options_get_ignore_search_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MultiCacheQueryOptions::ignore_method(
  self : MultiCacheQueryOptions,
) -> Bool? {
  multi_cache_query_options_get_ignore_method_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MultiCacheQueryOptions::ignore_vary(
  self : MultiCacheQueryOptions,
) -> Bool? {
  multi_cache_query_options_get_ignore_vary_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn MultiCacheQueryOptions::cache_name(
  self : MultiCacheQueryOptions,
) -> String? {
  multi_cache_query_options_get_cache_name_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn multi_cache_query_options_ffi(
  ignore_search : JsValue,
  ignore_method : JsValue,
  ignore_vary : JsValue,
  cache_name : JsValue,
) -> MultiCacheQueryOptions =
  #|(ignoreSearch, ignoreMethod, ignoreVary, cacheName) => {
  #|  const obj = {};
  #|  if (ignoreSearch !== undefined) obj.ignoreSearch = ignoreSearch;
  #|  if (ignoreMethod !== undefined) obj.ignoreMethod = ignoreMethod;
  #|  if (ignoreVary !== undefined) obj.ignoreVary = ignoreVary;
  #|  if (cacheName !== undefined) obj.cacheName = cacheName;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn multi_cache_query_options_empty_ffi() -> MultiCacheQueryOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn multi_cache_query_options_get_ignore_search_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ignoreSearch"

///|
#cfg(target="js")
extern "js" fn multi_cache_query_options_get_ignore_method_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ignoreMethod"

///|
#cfg(target="js")
extern "js" fn multi_cache_query_options_get_ignore_vary_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ignoreVary"

///|
#cfg(target="js")
extern "js" fn multi_cache_query_options_get_cache_name_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cacheName"

///|
#cfg(target="wasm-gc")
fn multi_cache_query_options_ffi(
  ignore_search : JsValue,
  ignore_method : JsValue,
  ignore_vary : JsValue,
  cache_name : JsValue,
) -> MultiCacheQueryOptions = "webapi_MultiCacheQueryOptions" "new"

///|
#cfg(target="wasm-gc")
fn multi_cache_query_options_empty_ffi() -> MultiCacheQueryOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn multi_cache_query_options_get_ignore_search_ffi(obj : JsValue) -> JsValue = "webapi_MultiCacheQueryOptions" "get_ignoreSearch"

///|
#cfg(target="wasm-gc")
fn multi_cache_query_options_get_ignore_method_ffi(obj : JsValue) -> JsValue = "webapi_MultiCacheQueryOptions" "get_ignoreMethod"

///|
#cfg(target="wasm-gc")
fn multi_cache_query_options_get_ignore_vary_ffi(obj : JsValue) -> JsValue = "webapi_MultiCacheQueryOptions" "get_ignoreVary"

///|
#cfg(target="wasm-gc")
fn multi_cache_query_options_get_cache_name_ffi(obj : JsValue) -> JsValue = "webapi_MultiCacheQueryOptions" "get_cacheName"
