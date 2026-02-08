extern "js" fn navigation_current_entry_change_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> NavigationCurrentEntryChangeEvent = "(type_, event_init_dict) => new NavigationCurrentEntryChangeEvent(type_, event_init_dict)"

extern "js" fn navigation_current_entry_change_event_navigation_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.navigationType"

extern "js" fn navigation_current_entry_change_event_from_ffi(obj: JsValue) -> JsValue = "(obj) => obj.from"