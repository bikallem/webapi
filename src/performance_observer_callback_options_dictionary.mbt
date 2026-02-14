// Do not edit. This file is generated.
// MoonBit type: PerformanceObserverCallbackOptions
// Specifications: performance-timeline.idl

///|
/// [PerformanceObserverCallbackOptions](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverCallbackOptions)
#external
pub type PerformanceObserverCallbackOptions

///|
pub impl TJsValue for PerformanceObserverCallbackOptions with to_js(
  self : PerformanceObserverCallbackOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for PerformanceObserverCallbackOptions with from_js_any(
  value : JsAny,
) -> PerformanceObserverCallbackOptions = "%identity"

///|
pub fn PerformanceObserverCallbackOptions::new(
  dropped_entries_count? : UInt64,
) -> PerformanceObserverCallbackOptions {
  performance_observer_callback_options_ffi(opt_to_js(dropped_entries_count))
}

///|
pub fn PerformanceObserverCallbackOptions::empty() -> PerformanceObserverCallbackOptions {
  performance_observer_callback_options_empty_ffi()
}
