///|
extern "js" fn navigation_current_entry_change_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> NavigationCurrentEntryChangeEvent = "(type_, event_init_dict) => new NavigationCurrentEntryChangeEvent(type_, event_init_dict)"

///|
extern "js" fn navigation_current_entry_change_event_navigation_type_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.navigationType"

///|
fn navigation_current_entry_change_event_navigation_type_ffi(
  obj : JsValue,
) -> NavigationType {
  navigation_current_entry_change_event_navigation_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigation_current_entry_change_event_from_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.from"

///|
fn navigation_current_entry_change_event_from_ffi(
  obj : JsValue,
) -> NavigationHistoryEntry {
  navigation_current_entry_change_event_from_ffi_js(obj).unsafe_cast()
}
