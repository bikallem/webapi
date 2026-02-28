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
  ignore_search? : Bool = false,
  ignore_method? : Bool = false,
  ignore_vary? : Bool = false,
  cache_name? : String,
) -> MultiCacheQueryOptions {
  multi_cache_query_options_ffi(
    TJsValue::to_js(ignore_search),
    TJsValue::to_js(ignore_method),
    TJsValue::to_js(ignore_vary),
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
