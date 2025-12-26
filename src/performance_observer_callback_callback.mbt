// Do not edit. This file is generated.
// MoonBit type: PerformanceObserverCallback
// Specifications: performance-timeline.idl

///|
#external
pub type PerformanceObserverCallback

///|
pub impl TJsValue for PerformanceObserverCallback with to_js(
  self : PerformanceObserverCallback,
) -> JsValue = "%identity"

///|
extern "js" fn performance_observer_callback_ffi(
  f : (
    PerformanceObserverEntryList,
    PerformanceObserver,
    PerformanceObserverCallbackOptions,
  ) -> Unit,
) -> PerformanceObserverCallback = "(f) => f"

///|
pub fn PerformanceObserverCallback::new(
  f : (
    PerformanceObserverEntryList,
    PerformanceObserver,
    PerformanceObserverCallbackOptions,
  ) -> Unit,
) -> PerformanceObserverCallback {
  performance_observer_callback_ffi(f)
}
