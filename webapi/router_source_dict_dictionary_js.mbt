///|
extern "js" fn router_source_dict_ffi(cache_name : JsValue) -> RouterSourceDict =
  #|(cacheName) => {
  #|  const obj = {};
  #|  if (cacheName !== undefined) obj.cacheName = cacheName;
  #|  return obj;
  #|}

///|
extern "js" fn router_source_dict_empty_ffi() -> RouterSourceDict = "() => {}"

///|
extern "js" fn router_source_dict_get_cache_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cacheName"
