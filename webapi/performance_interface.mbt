// Do not edit. This file is generated.
// MoonBit type: Performance
// Specifications: hr-time.idl, performance-timeline.idl

/// [Performance](https://developer.mozilla.org/en-US/docs/Web/API/Performance)
#external
pub type Performance

pub impl TJsValue for Performance with to_js(self: Performance) -> JsValue = "%identity"

pub impl FromJsAny for Performance with from_js_any(value : JsAny) -> Performance = "%identity"

pub fn[T: TPerformance] Performance::into(self : Performance) -> T = "%identity"

pub impl TPerformance for Performance

pub impl TEventTarget for Performance

/// [Performance](https://developer.mozilla.org/en-US/docs/Web/API/Performance) interface.
pub trait TPerformance: TEventTarget {
  now(self : Self) -> DOMHighResTimeStamp = _
  time_origin(self : Self) -> DOMHighResTimeStamp = _
  to_json(self : Self) -> JsValue = _
  get_entries(self : Self) -> PerformanceEntryList = _
  get_entries_by_type(self : Self, type_ : String) -> PerformanceEntryList = _
  get_entries_by_name(self : Self, name : String, type_? : String) -> PerformanceEntryList = _
}

/// [Performance.now](https://developer.mozilla.org/en-US/docs/Web/API/Performance/now)
impl TPerformance with now(self : Self) -> DOMHighResTimeStamp {
  performance_now_ffi(TJsValue::to_js(self))
}

/// [Performance.timeOrigin](https://developer.mozilla.org/en-US/docs/Web/API/Performance/timeOrigin)
impl TPerformance with time_origin(self : Self) -> DOMHighResTimeStamp {
  performance_time_origin_ffi(TJsValue::to_js(self))
}

/// [Performance.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/Performance/toJSON)
impl TPerformance with to_json(self : Self) -> JsValue {
  performance_to_json_ffi(TJsValue::to_js(self))
}

/// [Performance.getEntries](https://developer.mozilla.org/en-US/docs/Web/API/Performance/getEntries)
impl TPerformance with get_entries(self : Self) -> PerformanceEntryList {
  performance_get_entries_ffi(TJsValue::to_js(self))
}

/// [Performance.getEntriesByType](https://developer.mozilla.org/en-US/docs/Web/API/Performance/getEntriesByType)
impl TPerformance with get_entries_by_type(self : Self, 
type_ : String) -> PerformanceEntryList {
  performance_get_entries_by_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [Performance.getEntriesByName](https://developer.mozilla.org/en-US/docs/Web/API/Performance/getEntriesByName)
impl TPerformance with get_entries_by_name(self : Self, 
name : String, 
type_? : String) -> PerformanceEntryList {
  performance_get_entries_by_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name), opt_to_js(type_))
}