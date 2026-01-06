// Do not edit. This file is generated.
// MoonBit type: PerformanceEntry
// Specifications: performance-timeline.idl

///|
#external
pub type PerformanceEntry

///|
pub impl TJsValue for PerformanceEntry with to_js(self : PerformanceEntry) -> JsValue = "%identity"

///|
pub fn[T : TPerformanceEntry] PerformanceEntry::into(
  self : PerformanceEntry,
) -> T = "%identity"

///|
pub impl TPerformanceEntry for PerformanceEntry

///|
pub trait TPerformanceEntry: TJsValue {
  id(self : Self) -> UInt64 = _
  name(self : Self) -> String = _
  entry_type(self : Self) -> String = _
  start_time(self : Self) -> DOMHighResTimeStamp = _
  duration(self : Self) -> DOMHighResTimeStamp = _
  navigation_id(self : Self) -> UInt64 = _
  to_json(self : Self) -> JsValue = _
}

///|
extern "js" fn performance_entry_id_ffi(obj : JsValue) -> UInt64 = "(obj) => obj.id"

///|
impl TPerformanceEntry with id(self : Self) -> UInt64 {
  performance_entry_id_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn performance_entry_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl TPerformanceEntry with name(self : Self) -> String {
  performance_entry_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn performance_entry_entry_type_ffi(obj : JsValue) -> String = "(obj) => obj.entryType"

///|
impl TPerformanceEntry with entry_type(self : Self) -> String {
  performance_entry_entry_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn performance_entry_start_time_ffi(
  obj : JsValue,
) -> DOMHighResTimeStamp = "(obj) => obj.startTime"

///|
impl TPerformanceEntry with start_time(self : Self) -> DOMHighResTimeStamp {
  performance_entry_start_time_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn performance_entry_duration_ffi(
  obj : JsValue,
) -> DOMHighResTimeStamp = "(obj) => obj.duration"

///|
impl TPerformanceEntry with duration(self : Self) -> DOMHighResTimeStamp {
  performance_entry_duration_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn performance_entry_navigation_id_ffi(obj : JsValue) -> UInt64 = "(obj) => obj.navigationId"

///|
impl TPerformanceEntry with navigation_id(self : Self) -> UInt64 {
  performance_entry_navigation_id_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn performance_entry_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
impl TPerformanceEntry with to_json(self : Self) -> JsValue {
  performance_entry_to_json_ffi(TJsValue::to_js(self))
}
