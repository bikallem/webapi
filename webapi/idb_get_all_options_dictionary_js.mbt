extern "js" fn idb_get_all_options_ffi(query: JsValue, count: JsValue, direction: JsValue) -> IDBGetAllOptions = 
#|(query, count, direction) => {
#|  const obj = {};
#|  if (query !== undefined) obj.query = query;
#|  if (count !== undefined) obj.count = count;
#|  if (direction !== undefined) obj.direction = direction;
#|  return obj;
#|}

extern "js" fn idb_get_all_options_empty_ffi() -> IDBGetAllOptions = "() => {}"

extern "js" fn idb_get_all_options_get_query_ffi(obj: JsValue) -> JsValue = "(obj) => obj.query"

extern "js" fn idb_get_all_options_get_count_ffi(obj: JsValue) -> JsValue = "(obj) => obj.count"

extern "js" fn idb_get_all_options_get_direction_ffi(obj: JsValue) -> JsValue = "(obj) => obj.direction"