// Do not edit. This file is generated.
// MoonBit type: PerformanceObserverCallbackOptions
// Specifications: performance-timeline.idl

/// [PerformanceObserverCallbackOptions](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverCallbackOptions)
#external
pub type PerformanceObserverCallbackOptions

pub impl TJsValue for PerformanceObserverCallbackOptions with to_js(self: PerformanceObserverCallbackOptions) -> JsValue = "%identity"

pub impl FromJsAny for PerformanceObserverCallbackOptions with from_js_any(value : JsAny) -> PerformanceObserverCallbackOptions = "%identity"

pub fn PerformanceObserverCallbackOptions::new(dropped_entries_count? : UInt64) -> PerformanceObserverCallbackOptions {
  performance_observer_callback_options_ffi(opt_to_js(dropped_entries_count))
}

pub fn PerformanceObserverCallbackOptions::empty() -> PerformanceObserverCallbackOptions { performance_observer_callback_options_empty_ffi() }

pub fn PerformanceObserverCallbackOptions::dropped_entries_count(self : PerformanceObserverCallbackOptions) -> UInt64? {
  performance_observer_callback_options_get_dropped_entries_count_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn performance_observer_callback_options_ffi(dropped_entries_count: JsValue) -> PerformanceObserverCallbackOptions = 
#|(droppedEntriesCount) => {
#|  const obj = {};
#|  if (droppedEntriesCount !== undefined) obj.droppedEntriesCount = droppedEntriesCount;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn performance_observer_callback_options_empty_ffi() -> PerformanceObserverCallbackOptions = "() => {}"

#cfg(target="js")
extern "js" fn performance_observer_callback_options_get_dropped_entries_count_ffi(obj: JsValue) -> JsValue = "(obj) => obj.droppedEntriesCount"

#cfg(target="wasm-gc")
fn performance_observer_callback_options_ffi(dropped_entries_count: JsValue) -> PerformanceObserverCallbackOptions = "webapi_PerformanceObserverCallbackOptions" "new"

#cfg(target="wasm-gc")
fn performance_observer_callback_options_empty_ffi() -> PerformanceObserverCallbackOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn performance_observer_callback_options_get_dropped_entries_count_ffi(obj: JsValue) -> JsValue = "webapi_PerformanceObserverCallbackOptions" "get_droppedEntriesCount"