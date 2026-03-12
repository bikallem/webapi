fn multi_cache_query_options_ffi(ignore_search: JsValue, ignore_method: JsValue, ignore_vary: JsValue, cache_name: JsValue) -> MultiCacheQueryOptions = "webapi_MultiCacheQueryOptions" "new"

fn multi_cache_query_options_empty_ffi() -> MultiCacheQueryOptions = "webapi_Dictionary" "empty"

fn multi_cache_query_options_get_ignore_search_ffi(obj: JsValue) -> JsValue = "webapi_MultiCacheQueryOptions" "get_ignoreSearch"

fn multi_cache_query_options_get_ignore_method_ffi(obj: JsValue) -> JsValue = "webapi_MultiCacheQueryOptions" "get_ignoreMethod"

fn multi_cache_query_options_get_ignore_vary_ffi(obj: JsValue) -> JsValue = "webapi_MultiCacheQueryOptions" "get_ignoreVary"

fn multi_cache_query_options_get_cache_name_ffi(obj: JsValue) -> JsValue = "webapi_MultiCacheQueryOptions" "get_cacheName"