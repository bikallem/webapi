///|
#external
pub type NavigationHistoryEntry

///|
pub impl TJsValue for NavigationHistoryEntry with to_js(
  self : NavigationHistoryEntry,
) -> JsValue = "%identity"

///|
pub fn[T : TNavigationHistoryEntry] NavigationHistoryEntry::into(
  self : NavigationHistoryEntry,
) -> T = "%identity"

///|
pub impl TNavigationHistoryEntry for NavigationHistoryEntry

///|
pub impl TEventTarget for NavigationHistoryEntry

///|
pub trait TNavigationHistoryEntry: TEventTarget {
  get_state(self : Self) -> JsValue = _
}

///|
extern "js" fn navigation_history_entry_get_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getState(obj)"

///|
impl TNavigationHistoryEntry with get_state(self : Self) -> JsValue {
  navigation_history_entry_get_state_ffi(TJsValue::to_js(self))
}
