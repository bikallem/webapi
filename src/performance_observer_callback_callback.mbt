// Do not edit. This file is generated.
// MoonBit type: PerformanceObserverCallback
// Specifications: performance-timeline.idl

/// [PerformanceObserverCallback](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverCallback)
#external
pub type PerformanceObserverCallback

pub impl TJsValue for PerformanceObserverCallback with to_js(self: PerformanceObserverCallback) -> JsValue = "%identity"

pub impl FromJsAny for PerformanceObserverCallback with from_js_any(value : JsAny) -> PerformanceObserverCallback = "%identity"

pub fn PerformanceObserverCallback::new(callback : (PerformanceObserverEntryList, PerformanceObserver, PerformanceObserverCallbackOptions) -> Unit) -> PerformanceObserverCallback { performance_observer_callback_ffi(callback) }

#cfg(target="js")
extern "js" fn performance_observer_callback_ffi(callback : (PerformanceObserverEntryList, PerformanceObserver, PerformanceObserverCallbackOptions) -> Unit) -> PerformanceObserverCallback = "(callback) => callback"

#cfg(target="wasm-gc")
fn performance_observer_callback_ffi(callback : (PerformanceObserverEntryList, PerformanceObserver, PerformanceObserverCallbackOptions) -> Unit) -> PerformanceObserverCallback = "webapi_PerformanceObserverCallback" "new"