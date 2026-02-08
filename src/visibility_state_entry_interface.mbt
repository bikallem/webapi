// Do not edit. This file is generated.
// MoonBit type: VisibilityStateEntry
// Specifications: html.idl

///|
/// [VisibilityStateEntry](https://developer.mozilla.org/en-US/docs/Web/API/VisibilityStateEntry)
#external
pub type VisibilityStateEntry

///|
pub impl TJsValue for VisibilityStateEntry with to_js(
  self : VisibilityStateEntry,
) -> JsValue = "%identity"

///|
pub fn[T : TVisibilityStateEntry] VisibilityStateEntry::into(
  self : VisibilityStateEntry,
) -> T = "%identity"

///|
pub impl TVisibilityStateEntry for VisibilityStateEntry

///|
pub impl TPerformanceEntry for VisibilityStateEntry

///|
/// [VisibilityStateEntry](https://developer.mozilla.org/en-US/docs/Web/API/VisibilityStateEntry) interface.
pub trait TVisibilityStateEntry: TPerformanceEntry {
  name(self : Self) -> String = _
  entry_type(self : Self) -> String = _
  start_time(self : Self) -> DOMHighResTimeStamp = _
  duration(self : Self) -> UInt = _
}

///|
/// [VisibilityStateEntry.name](https://developer.mozilla.org/en-US/docs/Web/API/VisibilityStateEntry/name)
impl TVisibilityStateEntry with name(self : Self) -> String {
  visibility_state_entry_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [VisibilityStateEntry.entryType](https://developer.mozilla.org/en-US/docs/Web/API/VisibilityStateEntry/entryType)
impl TVisibilityStateEntry with entry_type(self : Self) -> String {
  visibility_state_entry_entry_type_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [VisibilityStateEntry.startTime](https://developer.mozilla.org/en-US/docs/Web/API/VisibilityStateEntry/startTime)
impl TVisibilityStateEntry with start_time(self : Self) -> DOMHighResTimeStamp {
  visibility_state_entry_start_time_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [VisibilityStateEntry.duration](https://developer.mozilla.org/en-US/docs/Web/API/VisibilityStateEntry/duration)
impl TVisibilityStateEntry with duration(self : Self) -> UInt {
  visibility_state_entry_duration_ffi(TJsValue::to_js(self)).unsafe_cast()
}
