///|
fn performance_observer_callback_options_ffi(
  dropped_entries_count : JsValue,
) -> PerformanceObserverCallbackOptions = "webapi_PerformanceObserverCallbackOptions" "new"

///|
fn performance_observer_callback_options_empty_ffi() -> PerformanceObserverCallbackOptions = "webapi_Dictionary" "empty"
