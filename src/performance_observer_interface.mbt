// Do not edit. This file is generated.
// MoonBit type: PerformanceObserver
// Specifications: performance-timeline.idl

///|
#external
pub type PerformanceObserver

///|
pub impl TJsValue for PerformanceObserver with to_js(self : PerformanceObserver) -> JsValue = "%identity"

///|
pub fn[T : TPerformanceObserver] PerformanceObserver::into(
  self : PerformanceObserver,
) -> T = "%identity"

///|
pub impl TPerformanceObserver for PerformanceObserver

///|
extern "js" fn performance_observer_new_ffi(
  callback : JsValue,
) -> PerformanceObserver = "(callback) => new PerformanceObserver(callback)"

///|
pub fn PerformanceObserver::new(
  callback : PerformanceObserverCallback,
) -> PerformanceObserver {
  performance_observer_new_ffi(TJsValue::to_js(callback))
}

///|
pub trait TPerformanceObserver: TJsValue {
  observe(self : Self, options? : PerformanceObserverInit) -> Unit = _
  disconnect(self : Self) -> Unit = _
  take_records(self : Self) -> PerformanceEntryList = _
}

///|
extern "js" fn performance_observer_observe_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.observe(obj, options)"

///|
impl TPerformanceObserver with observe(
  self : Self,
  options? : PerformanceObserverInit = PerformanceObserverInit::empty(),
) -> Unit {
  performance_observer_observe_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn performance_observer_disconnect_ffi(obj : JsValue) -> Unit = "(obj) => obj.disconnect(obj)"

///|
impl TPerformanceObserver with disconnect(self : Self) -> Unit {
  performance_observer_disconnect_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn performance_observer_take_records_ffi(
  obj : JsValue,
) -> PerformanceEntryList = "(obj) => obj.takeRecords(obj)"

///|
impl TPerformanceObserver with take_records(self : Self) -> PerformanceEntryList {
  performance_observer_take_records_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn performance_observer_supported_entry_types_ffi() -> JsValue = "() => PerformanceObserver.supportedEntryTypes"

///|
pub fn PerformanceObserver::supported_entry_types() -> JsValue {
  performance_observer_supported_entry_types_ffi()
}
