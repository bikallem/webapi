///|
fn performance_observer_new_ffi(callback : JsValue) -> PerformanceObserver = "webapi_PerformanceObserver" "new"

///|
fn performance_observer_observe_ffi(obj : JsValue, options : JsValue) -> Unit = "webapi_PerformanceObserver" "observe"

///|
fn performance_observer_disconnect_ffi(obj : JsValue) -> Unit = "webapi_PerformanceObserver" "disconnect"

///|
fn performance_observer_take_records_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PerformanceObserver" "takeRecords"

///|
fn performance_observer_take_records_ffi(obj : JsValue) -> PerformanceEntryList {
  performance_observer_take_records_ffi_wasm(obj).unsafe_cast()
}

///|
fn performance_observer_supported_entry_types_ffi() -> JsValue = "webapi_PerformanceObserver" "get_supportedEntryTypes"
