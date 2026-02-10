///|
fn navigation_current_entry_change_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  navigation_type : JsValue,
  from : JsValue,
) -> NavigationCurrentEntryChangeEventInit = "webapi_NavigationCurrentEntryChangeEventInit" "new"

///|
fn navigation_current_entry_change_event_init_empty_ffi() -> NavigationCurrentEntryChangeEventInit = "webapi_Dictionary" "empty"
