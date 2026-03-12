extern "js" fn client_query_options_ffi(include_uncontrolled: JsValue, type_: JsValue) -> ClientQueryOptions = 
#|(includeUncontrolled, type) => {
#|  const obj = {};
#|  if (includeUncontrolled !== undefined) obj.includeUncontrolled = includeUncontrolled;
#|  if (type !== undefined) obj.type = type;
#|  return obj;
#|}

extern "js" fn client_query_options_empty_ffi() -> ClientQueryOptions = "() => {}"

extern "js" fn client_query_options_get_include_uncontrolled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.includeUncontrolled"

extern "js" fn client_query_options_get_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"