// Do not edit. This file is generated.
// MoonBit type: PerformanceObserverCallbackOptions
// Specifications: performance-timeline.idl

///|
#external
pub type PerformanceObserverCallbackOptions

///|
pub impl TJsValue for PerformanceObserverCallbackOptions with to_js(
  self : PerformanceObserverCallbackOptions,
) -> JsValue = "%identity"

///|
extern "js" fn performance_observer_callback_options_ffi(
  dropped_entries_count : JsValue,
) -> PerformanceObserverCallbackOptions =
  #|(droppedEntriesCount) => {
  #|  const obj = {};
  #|  if (droppedEntriesCount !== undefined) obj.droppedEntriesCount = droppedEntriesCount;
  #|  return obj;
  #|}

///|
pub fn PerformanceObserverCallbackOptions::new(
  dropped_entries_count? : UInt64,
) -> PerformanceObserverCallbackOptions {
  performance_observer_callback_options_ffi(opt_to_js(dropped_entries_count))
}

///|
extern "js" fn performance_observer_callback_options_empty_ffi() -> PerformanceObserverCallbackOptions = "() => {}"

///|
pub fn PerformanceObserverCallbackOptions::empty() -> PerformanceObserverCallbackOptions {
  performance_observer_callback_options_empty_ffi()
}
