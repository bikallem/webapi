// Do not edit. This file is generated.
// MoonBit type: PerformanceObserverInit
// Specifications: performance-timeline.idl

///|
#external
pub type PerformanceObserverInit

///|
pub impl TJsValue for PerformanceObserverInit with to_js(
  self : PerformanceObserverInit,
) -> JsValue = "%identity"

///|
extern "js" fn performance_observer_init_ffi(
  entry_types : JsValue,
  type_ : JsValue,
  buffered : JsValue,
) -> PerformanceObserverInit =
  #|(entryTypes, type, buffered) => {
  #|  const obj = {};
  #|  if (entryTypes !== undefined) obj.entryTypes = entryTypes;
  #|  if (type !== undefined) obj.type = type;
  #|  if (buffered !== undefined) obj.buffered = buffered;
  #|  return obj;
  #|}

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
extern "js" fn performance_observer_init_empty_ffi() -> PerformanceObserverInit = "() => {}"

///|
pub fn PerformanceObserverInit::empty() -> PerformanceObserverInit {
  performance_observer_init_empty_ffi()
}
