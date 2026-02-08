fn performance_now_ffi(obj: JsValue) -> JsValue = "webapi_Performance" "now"

fn performance_time_origin_ffi(obj: JsValue) -> JsValue = "webapi_Performance" "get_timeOrigin"

fn performance_to_json_ffi(obj: JsValue) -> JsValue = "webapi_Performance" "toJSON"

fn performance_get_entries_ffi(obj: JsValue) -> JsValue = "webapi_Performance" "getEntries"

fn performance_get_entries_by_type_ffi(obj: JsValue, type_: JsValue) -> JsValue = "webapi_Performance" "getEntriesByType"

fn performance_get_entries_by_name_ffi(obj: JsValue, name: JsValue, type_: JsValue) -> JsValue = "webapi_Performance" "getEntriesByName"