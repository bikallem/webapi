// Do not edit. This file is generated.
// MoonBit type: PerformanceObserverEntryList
// Specifications: performance-timeline.idl

///|
/// [PerformanceObserverEntryList](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList)
#external
pub type PerformanceObserverEntryList

///|
pub impl TJsValue for PerformanceObserverEntryList with to_js(
  self : PerformanceObserverEntryList,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for PerformanceObserverEntryList with from_js_any(
  value : JsAny,
) -> PerformanceObserverEntryList = "%identity"

///|
pub fn[T : TPerformanceObserverEntryList] PerformanceObserverEntryList::into(
  self : PerformanceObserverEntryList,
) -> T = "%identity"

///|
pub impl TPerformanceObserverEntryList for PerformanceObserverEntryList

///|
/// [PerformanceObserverEntryList](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList) interface.
pub trait TPerformanceObserverEntryList: TJsValue {
  get_entries(self : Self) -> PerformanceEntryList = _
  get_entries_by_type(self : Self, type_ : String) -> PerformanceEntryList = _
  get_entries_by_name(self : Self, name : String, type_? : String) -> PerformanceEntryList = _
}

///|
/// [PerformanceObserverEntryList.getEntries](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList/getEntries)
impl TPerformanceObserverEntryList with get_entries(self : Self) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_ffi(TJsValue::to_js(self))
}

///|
/// [PerformanceObserverEntryList.getEntriesByType](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList/getEntriesByType)
impl TPerformanceObserverEntryList with get_entries_by_type(
  self : Self,
  type_ : String,
) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_by_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
  )
}

///|
/// [PerformanceObserverEntryList.getEntriesByName](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList/getEntriesByName)
impl TPerformanceObserverEntryList with get_entries_by_name(
  self : Self,
  name : String,
  type_? : String,
) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_by_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    opt_to_js(type_),
  )
}
