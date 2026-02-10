pub fn PerformanceObserverCallback::new(f : (PerformanceObserverEntryList, PerformanceObserver, PerformanceObserverCallbackOptions) -> Unit) -> PerformanceObserverCallback {
  let w : (JsValue, JsValue, JsValue) -> Unit = fn(a0 : JsValue, a1 : JsValue, a2 : JsValue) { f(a0.unsafe_cast(), a1.unsafe_cast(), a2.unsafe_cast()) }
  performance_observer_callback_ffi(w).unsafe_cast()
}

///|
fn performance_observer_callback_ffi(f : (JsValue, JsValue, JsValue) -> Unit) -> JsValue = "webapi_PerformanceObserverCallback" "new"