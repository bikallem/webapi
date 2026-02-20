// Do not edit. This file is generated.
// MoonBit type: PerformanceObserverInit
// Specifications: performance-timeline.idl

///|
/// [PerformanceObserverInit](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverInit)
#external
pub type PerformanceObserverInit

///|
pub impl TJsValue for PerformanceObserverInit with to_js(
  self : PerformanceObserverInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for PerformanceObserverInit with from_js_any(value : JsAny) -> PerformanceObserverInit = "%identity"

///|
pub fn PerformanceObserverInit::new(
  entry_types? : Array[String],
  type_? : String,
  buffered? : Bool,
) -> PerformanceObserverInit {
  performance_observer_init_ffi(
    opt_to_js(entry_types),
    opt_to_js(type_),
    opt_to_js(buffered),
  )
}

///|
pub fn PerformanceObserverInit::empty() -> PerformanceObserverInit {
  performance_observer_init_empty_ffi()
}

///|
pub fn PerformanceObserverInit::entry_types(
  self : PerformanceObserverInit,
) -> Array[String]? {
  performance_observer_init_get_entry_types_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn PerformanceObserverInit::type_(
  self : PerformanceObserverInit,
) -> String? {
  performance_observer_init_get_type_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PerformanceObserverInit::buffered(
  self : PerformanceObserverInit,
) -> Bool? {
  performance_observer_init_get_buffered_ffi(TJsValue::to_js(self)).to_option_prim()
}
