///|
fn performance_entry_id_ffi(obj : JsValue) -> UInt64 = "webapi_PerformanceEntry" "get_id"

///|
fn performance_entry_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PerformanceEntry" "get_name"

///|
fn performance_entry_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(performance_entry_name_ffi_wasm(obj))
}

///|
fn performance_entry_entry_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PerformanceEntry" "get_entryType"

///|
fn performance_entry_entry_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(performance_entry_entry_type_ffi_wasm(obj))
}

///|
fn performance_entry_start_time_ffi(obj : JsValue) -> DOMHighResTimeStamp = "webapi_PerformanceEntry" "get_startTime"

///|
fn performance_entry_duration_ffi(obj : JsValue) -> DOMHighResTimeStamp = "webapi_PerformanceEntry" "get_duration"

///|
fn performance_entry_navigation_id_ffi(obj : JsValue) -> UInt64 = "webapi_PerformanceEntry" "get_navigationId"

///|
fn performance_entry_to_json_ffi(obj : JsValue) -> JsValue = "webapi_PerformanceEntry" "toJSON"
