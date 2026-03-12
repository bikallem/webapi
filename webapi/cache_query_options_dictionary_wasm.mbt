fn cache_query_options_ffi(ignore_search: JsValue, ignore_method: JsValue, ignore_vary: JsValue) -> CacheQueryOptions = "webapi_CacheQueryOptions" "new"

fn cache_query_options_empty_ffi() -> CacheQueryOptions = "webapi_Dictionary" "empty"

fn cache_query_options_get_ignore_search_ffi(obj: JsValue) -> JsValue = "webapi_CacheQueryOptions" "get_ignoreSearch"

fn cache_query_options_get_ignore_method_ffi(obj: JsValue) -> JsValue = "webapi_CacheQueryOptions" "get_ignoreMethod"

fn cache_query_options_get_ignore_vary_ffi(obj: JsValue) -> JsValue = "webapi_CacheQueryOptions" "get_ignoreVary"