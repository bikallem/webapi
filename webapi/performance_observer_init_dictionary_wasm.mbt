fn performance_observer_init_ffi(entry_types: JsValue, type_: JsValue, buffered: JsValue) -> PerformanceObserverInit = "webapi_PerformanceObserverInit" "new"

fn performance_observer_init_empty_ffi() -> PerformanceObserverInit = "webapi_Dictionary" "empty"

fn performance_observer_init_get_entry_types_ffi(obj: JsValue) -> JsValue = "webapi_PerformanceObserverInit" "get_entryTypes"

fn performance_observer_init_get_type_ffi(obj: JsValue) -> JsValue = "webapi_PerformanceObserverInit" "get_type"

fn performance_observer_init_get_buffered_ffi(obj: JsValue) -> JsValue = "webapi_PerformanceObserverInit" "get_buffered"