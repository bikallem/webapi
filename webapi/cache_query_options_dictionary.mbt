// Do not edit. This file is generated.
// MoonBit type: CacheQueryOptions
// Specifications: service-workers.idl

/// [CacheQueryOptions](https://developer.mozilla.org/en-US/docs/Web/API/CacheQueryOptions)
#external
pub type CacheQueryOptions

pub impl TJsValue for CacheQueryOptions with to_js(self: CacheQueryOptions) -> JsValue = "%identity"

pub impl FromJsAny for CacheQueryOptions with from_js_any(value : JsAny) -> CacheQueryOptions = "%identity"

pub fn CacheQueryOptions::new(ignore_search? : Bool, 
ignore_method? : Bool, 
ignore_vary? : Bool) -> CacheQueryOptions {
  cache_query_options_ffi(opt_to_js(ignore_search), opt_to_js(ignore_method), opt_to_js(ignore_vary))
}

pub fn CacheQueryOptions::empty() -> CacheQueryOptions { cache_query_options_empty_ffi() }

pub fn CacheQueryOptions::ignore_search(self : CacheQueryOptions) -> Bool? {
  cache_query_options_get_ignore_search_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CacheQueryOptions::ignore_method(self : CacheQueryOptions) -> Bool? {
  cache_query_options_get_ignore_method_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn CacheQueryOptions::ignore_vary(self : CacheQueryOptions) -> Bool? {
  cache_query_options_get_ignore_vary_ffi(TJsValue::to_js(self)).to_option_prim()
}