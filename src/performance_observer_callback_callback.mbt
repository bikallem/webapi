// Do not edit. This file is generated.
// MoonBit type: PerformanceObserverCallback
// Specifications: performance-timeline.idl

/// [PerformanceObserverCallback](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverCallback)
#external
pub type PerformanceObserverCallback

pub impl TJsValue for PerformanceObserverCallback with to_js(self: PerformanceObserverCallback) -> JsValue = "%identity"

pub fn PerformanceObserverCallback::new(f : (PerformanceObserverEntryList, PerformanceObserver, PerformanceObserverCallbackOptions) -> Unit) -> PerformanceObserverCallback { performance_observer_callback_ffi(js_of(f)).unsafe_cast() }