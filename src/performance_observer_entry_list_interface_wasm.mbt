///|
fn performance_observer_entry_list_get_entries_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_PerformanceObserverEntryList" "getEntries"

///|
fn performance_observer_entry_list_get_entries_ffi(
  obj : JsValue,
) -> Array[PerformanceEntry] {
  jsvalue_to_array(
    performance_observer_entry_list_get_entries_ffi_wasm(obj),
    JsValue::unsafe_cast,
  )
}

///|
fn performance_observer_entry_list_get_entries_by_type_ffi_wasm(
  obj : JsValue,
  type_ : JsValue,
) -> JsValue = "webapi_PerformanceObserverEntryList" "getEntriesByType"

///|
fn performance_observer_entry_list_get_entries_by_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Array[PerformanceEntry] {
  jsvalue_to_array(
    performance_observer_entry_list_get_entries_by_type_ffi_wasm(obj, type_),
    JsValue::unsafe_cast,
  )
}

///|
fn performance_observer_entry_list_get_entries_by_name_ffi_wasm(
  obj : JsValue,
  name : JsValue,
  type_ : JsValue,
) -> JsValue = "webapi_PerformanceObserverEntryList" "getEntriesByName"

///|
fn performance_observer_entry_list_get_entries_by_name_ffi(
  obj : JsValue,
  name : JsValue,
  type_ : JsValue,
) -> Array[PerformanceEntry] {
  jsvalue_to_array(
    performance_observer_entry_list_get_entries_by_name_ffi_wasm(
      obj, name, type_,
    ),
    JsValue::unsafe_cast,
  )
}
