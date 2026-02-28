///|
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
extern "js" fn multi_cache_query_options_empty_ffi() -> MultiCacheQueryOptions = "() => {}"

///|
extern "js" fn multi_cache_query_options_get_ignore_search_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ignoreSearch"

///|
extern "js" fn multi_cache_query_options_get_ignore_method_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ignoreMethod"

///|
extern "js" fn multi_cache_query_options_get_ignore_vary_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ignoreVary"

///|
extern "js" fn multi_cache_query_options_get_cache_name_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cacheName"
