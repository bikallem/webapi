///|
extern "js" fn performance_now_ffi(obj : JsValue) -> JsValue = "(obj) => obj.now()"

///|
extern "js" fn performance_time_origin_ffi(obj : JsValue) -> JsValue = "(obj) => obj.timeOrigin"

///|
extern "js" fn performance_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
extern "js" fn performance_get_entries_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getEntries()"

///|
extern "js" fn performance_get_entries_by_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, type_) => obj.getEntriesByType(type_)"

///|
extern "js" fn performance_get_entries_by_name_ffi(
  obj : JsValue,
  name : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, name, type_) => obj.getEntriesByName(name, type_)"
