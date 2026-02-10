pub fn PerformanceObserverCallback::new(f : (PerformanceObserverEntryList, PerformanceObserver, PerformanceObserverCallbackOptions) -> Unit) -> PerformanceObserverCallback { performance_observer_callback_ffi(js_of(f)).unsafe_cast() }

///|
extern "js" fn performance_observer_callback_ffi(f : JsValue) -> JsValue = "(f) => f"