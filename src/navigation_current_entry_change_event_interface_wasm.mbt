///|
fn navigation_current_entry_change_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> NavigationCurrentEntryChangeEvent = "webapi_NavigationCurrentEntryChangeEvent" "new"

///|
fn navigation_current_entry_change_event_navigation_type_ffi(
  obj : JsValue,
) -> JsValue = "webapi_NavigationCurrentEntryChangeEvent" "get_navigationType"

///|
fn navigation_current_entry_change_event_from_ffi(obj : JsValue) -> JsValue = "webapi_NavigationCurrentEntryChangeEvent" "get_from"
