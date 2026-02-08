///|
extern "js" fn performance_observer_entry_list_get_entries_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getEntries()"

///|
extern "js" fn performance_observer_entry_list_get_entries_by_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, type_) => obj.getEntriesByType(type_)"

///|
extern "js" fn performance_observer_entry_list_get_entries_by_name_ffi(
  obj : JsValue,
  name : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, name, type_) => obj.getEntriesByName(name, type_)"
