///|
extern "js" fn cache_query_options_ffi(
  ignore_search : JsValue,
  ignore_method : JsValue,
  ignore_vary : JsValue,
) -> CacheQueryOptions =
  #|(ignoreSearch, ignoreMethod, ignoreVary) => {
  #|  const obj = {};
  #|  if (ignoreSearch !== undefined) obj.ignoreSearch = ignoreSearch;
  #|  if (ignoreMethod !== undefined) obj.ignoreMethod = ignoreMethod;
  #|  if (ignoreVary !== undefined) obj.ignoreVary = ignoreVary;
  #|  return obj;
  #|}

///|
extern "js" fn cache_query_options_empty_ffi() -> CacheQueryOptions = "() => {}"

///|
extern "js" fn cache_query_options_get_ignore_search_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ignoreSearch"

///|
extern "js" fn cache_query_options_get_ignore_method_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ignoreMethod"

///|
extern "js" fn cache_query_options_get_ignore_vary_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ignoreVary"
