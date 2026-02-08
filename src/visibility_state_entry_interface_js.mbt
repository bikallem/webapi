///|
extern "js" fn visibility_state_entry_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn visibility_state_entry_entry_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.entryType"

///|
extern "js" fn visibility_state_entry_start_time_ffi(obj : JsValue) -> JsValue = "(obj) => obj.startTime"

///|
extern "js" fn visibility_state_entry_duration_ffi(obj : JsValue) -> JsValue = "(obj) => obj.duration"
