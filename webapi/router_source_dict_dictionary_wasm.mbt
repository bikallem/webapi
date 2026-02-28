///|
fn router_source_dict_ffi(cache_name : JsValue) -> RouterSourceDict = "webapi_RouterSourceDict" "new"

///|
fn router_source_dict_empty_ffi() -> RouterSourceDict = "webapi_Dictionary" "empty"

///|
fn router_source_dict_get_cache_name_ffi(obj : JsValue) -> JsValue = "webapi_RouterSourceDict" "get_cacheName"
