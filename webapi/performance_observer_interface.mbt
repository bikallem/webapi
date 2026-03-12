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
pub impl FromJsAny for PerformanceObserver with from_js_any(value : JsAny) -> PerformanceObserver = "%identity"

///|
pub fn[T : TPerformanceObserver] PerformanceObserver::into(
  self : PerformanceObserver,
) -> T = "%identity"

///|
pub impl TPerformanceObserver for PerformanceObserver

///|
pub fn PerformanceObserver::new(
  callback : (
    PerformanceObserverEntryList,
    PerformanceObserver,
    PerformanceObserverCallbackOptions,
  ) -> Unit,
) -> PerformanceObserver {
  performance_observer_new_ffi(
    TJsValue::to_js(performance_observer_callback_ffi(callback)),
  )
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
  options? : PerformanceObserverInit,
) -> Unit {
  performance_observer_observe_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [PerformanceObserver.disconnect](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver/disconnect)
impl TPerformanceObserver with disconnect(self : Self) -> Unit {
  performance_observer_disconnect_ffi(TJsValue::to_js(self))
}

///|
/// [PerformanceObserver.takeRecords](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver/takeRecords)
impl TPerformanceObserver with take_records(self : Self) -> PerformanceEntryList {
  performance_observer_take_records_ffi(TJsValue::to_js(self))
}

///|
/// [PerformanceObserver.supportedEntryTypes](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver/supportedEntryTypes)
pub fn PerformanceObserver::supported_entry_types() -> Array[String] {
  performance_observer_supported_entry_types_ffi()
}

///|
#cfg(target="js")
extern "js" fn performance_observer_new_ffi(
  callback : JsValue,
) -> PerformanceObserver = "(callback) => new PerformanceObserver(callback)"

///|
#cfg(target="js")
extern "js" fn performance_observer_observe_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.observe(options)"

///|
#cfg(target="js")
extern "js" fn performance_observer_disconnect_ffi(obj : JsValue) -> Unit = "(obj) => obj.disconnect()"

///|
#cfg(target="js")
extern "js" fn performance_observer_take_records_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.takeRecords()"

///|
#cfg(target="js")
fn performance_observer_take_records_ffi(obj : JsValue) -> PerformanceEntryList {
  performance_observer_take_records_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn performance_observer_supported_entry_types_ffi_js() -> JsValue = "() => PerformanceObserver.supportedEntryTypes"

///|
#cfg(target="js")
fn performance_observer_supported_entry_types_ffi() -> Array[String] {
  performance_observer_supported_entry_types_ffi_js().unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn performance_observer_new_ffi(callback : JsValue) -> PerformanceObserver = "webapi_PerformanceObserver" "new"

///|
#cfg(target="wasm-gc")
fn performance_observer_observe_ffi(obj : JsValue, options : JsValue) -> Unit = "webapi_PerformanceObserver" "observe"

///|
#cfg(target="wasm-gc")
fn performance_observer_disconnect_ffi(obj : JsValue) -> Unit = "webapi_PerformanceObserver" "disconnect"

///|
#cfg(target="wasm-gc")
fn performance_observer_take_records_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PerformanceObserver" "takeRecords"

///|
#cfg(target="wasm-gc")
fn performance_observer_take_records_ffi(obj : JsValue) -> PerformanceEntryList {
  performance_observer_take_records_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn performance_observer_supported_entry_types_ffi_wasm() -> JsArray = "webapi_PerformanceObserver" "get_supportedEntryTypes"

///|
#cfg(target="wasm-gc")
fn performance_observer_supported_entry_types_ffi() -> Array[String] {
  performance_observer_supported_entry_types_ffi_wasm().to_string_array()
}
