fn navigation_current_entry_change_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, navigation_type: JsValue, from: JsValue) -> NavigationCurrentEntryChangeEventInit = "webapi_NavigationCurrentEntryChangeEventInit" "new"

fn navigation_current_entry_change_event_init_empty_ffi() -> NavigationCurrentEntryChangeEventInit = "webapi_Dictionary" "empty"

fn navigation_current_entry_change_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_NavigationCurrentEntryChangeEventInit" "get_bubbles"

fn navigation_current_entry_change_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_NavigationCurrentEntryChangeEventInit" "get_cancelable"

fn navigation_current_entry_change_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_NavigationCurrentEntryChangeEventInit" "get_composed"

fn navigation_current_entry_change_event_init_get_navigation_type_ffi(obj: JsValue) -> JsValue = "webapi_NavigationCurrentEntryChangeEventInit" "get_navigationType"

fn navigation_current_entry_change_event_init_get_from_ffi(obj: JsValue) -> NavigationHistoryEntry = "webapi_NavigationCurrentEntryChangeEventInit" "get_from"