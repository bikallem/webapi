///|
extern "js" fn performance_entry_id_ffi(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
extern "js" fn performance_entry_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn performance_entry_entry_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.entryType"

///|
extern "js" fn performance_entry_start_time_ffi(obj : JsValue) -> JsValue = "(obj) => obj.startTime"

///|
extern "js" fn performance_entry_duration_ffi(obj : JsValue) -> JsValue = "(obj) => obj.duration"

///|
extern "js" fn performance_entry_navigation_id_ffi(obj : JsValue) -> JsValue = "(obj) => obj.navigationId"

///|
extern "js" fn performance_entry_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"
