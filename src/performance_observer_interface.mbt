// Do not edit. This file is generated.
// MoonBit type: PerformanceObserver
// Specifications: performance-timeline.idl

///|
/// [PerformanceObserver](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver)
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
pub fn PerformanceObserver::new(
  callback : PerformanceObserverCallback,
) -> PerformanceObserver {
  performance_observer_new_ffi(TJsValue::to_js(callback))
}

///|
/// [PerformanceObserver](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver) interface.
pub trait TPerformanceObserver: TJsValue {
  observe(self : Self, options? : PerformanceObserverInit) -> Unit = _
  disconnect(self : Self) -> Unit = _
  take_records(self : Self) -> PerformanceEntryList = _
}

///|
/// [PerformanceObserver.observe](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver/observe)
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
/// [PerformanceObserver.disconnect](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver/disconnect)
impl TPerformanceObserver with disconnect(self : Self) -> Unit {
  performance_observer_disconnect_ffi(TJsValue::to_js(self))
}

///|
/// [PerformanceObserver.takeRecords](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver/takeRecords)
impl TPerformanceObserver with take_records(self : Self) -> PerformanceEntryList {
  performance_observer_take_records_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [PerformanceObserver.supportedEntryTypes](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver/supportedEntryTypes)
pub fn PerformanceObserver::supported_entry_types() -> JsValue {
  performance_observer_supported_entry_types_ffi().unsafe_cast()
}
