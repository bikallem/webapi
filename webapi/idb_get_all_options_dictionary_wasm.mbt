fn idb_get_all_options_ffi(query: JsValue, count: JsValue, direction: JsValue) -> IDBGetAllOptions = "webapi_IDBGetAllOptions" "new"

fn idb_get_all_options_empty_ffi() -> IDBGetAllOptions = "webapi_Dictionary" "empty"

fn idb_get_all_options_get_query_ffi(obj: JsValue) -> JsValue = "webapi_IDBGetAllOptions" "get_query"

fn idb_get_all_options_get_count_ffi(obj: JsValue) -> JsValue = "webapi_IDBGetAllOptions" "get_count"

fn idb_get_all_options_get_direction_ffi(obj: JsValue) -> JsValue = "webapi_IDBGetAllOptions" "get_direction"