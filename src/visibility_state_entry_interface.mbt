///|
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
pub trait TVisibilityStateEntry: TPerformanceEntry {
  name(self : Self) -> String = _
  entry_type(self : Self) -> String = _
  start_time(self : Self) -> DOMHighResTimeStamp = _
  duration(self : Self) -> UInt = _
}

///|
extern "js" fn visibility_state_entry_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl TVisibilityStateEntry with name(self : Self) -> String {
  visibility_state_entry_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn visibility_state_entry_entry_type_ffi(obj : JsValue) -> String = "(obj) => obj.entryType"

///|
impl TVisibilityStateEntry with entry_type(self : Self) -> String {
  visibility_state_entry_entry_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn visibility_state_entry_start_time_ffi(
  obj : JsValue,
) -> DOMHighResTimeStamp = "(obj) => obj.startTime"

///|
impl TVisibilityStateEntry with start_time(self : Self) -> DOMHighResTimeStamp {
  visibility_state_entry_start_time_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn visibility_state_entry_duration_ffi(obj : JsValue) -> UInt = "(obj) => obj.duration"

///|
impl TVisibilityStateEntry with duration(self : Self) -> UInt {
  visibility_state_entry_duration_ffi(TJsValue::to_js(self))
}
