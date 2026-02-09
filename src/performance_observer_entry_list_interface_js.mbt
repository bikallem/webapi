///|
extern "js" fn performance_observer_entry_list_get_entries_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getEntries()"

///|
fn performance_observer_entry_list_get_entries_ffi(
  obj : JsValue,
) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn performance_observer_entry_list_get_entries_by_type_ffi_js(
  obj : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, type_) => obj.getEntriesByType(type_)"

///|
fn performance_observer_entry_list_get_entries_by_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_by_type_ffi_js(obj, type_).unsafe_cast()
}

///|
extern "js" fn performance_observer_entry_list_get_entries_by_name_ffi_js(
  obj : JsValue,
  name : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, name, type_) => obj.getEntriesByName(name, type_)"

///|
fn performance_observer_entry_list_get_entries_by_name_ffi(
  obj : JsValue,
  name : JsValue,
  type_ : JsValue,
) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_by_name_ffi_js(obj, name, type_).unsafe_cast()
}
