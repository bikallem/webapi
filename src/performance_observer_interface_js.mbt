///|
extern "js" fn performance_observer_new_ffi(
  callback : JsValue,
) -> PerformanceObserver = "(callback) => new PerformanceObserver(callback)"

///|
extern "js" fn performance_observer_observe_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.observe(options)"

///|
extern "js" fn performance_observer_disconnect_ffi(obj : JsValue) -> Unit = "(obj) => obj.disconnect()"

///|
extern "js" fn performance_observer_take_records_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.takeRecords()"

///|
fn performance_observer_take_records_ffi(obj : JsValue) -> PerformanceEntryList {
  performance_observer_take_records_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn performance_observer_supported_entry_types_ffi_js() -> JsValue = "() => PerformanceObserver.supportedEntryTypes"

///|
fn performance_observer_supported_entry_types_ffi() -> Array[String] {
  performance_observer_supported_entry_types_ffi_js().unsafe_cast()
}
