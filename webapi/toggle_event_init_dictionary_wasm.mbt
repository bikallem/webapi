fn toggle_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, old_state: JsValue, new_state: JsValue, source: JsValue) -> ToggleEventInit = "webapi_ToggleEventInit" "new"

fn toggle_event_init_empty_ffi() -> ToggleEventInit = "webapi_Dictionary" "empty"

fn toggle_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_ToggleEventInit" "get_bubbles"

fn toggle_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_ToggleEventInit" "get_cancelable"

fn toggle_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_ToggleEventInit" "get_composed"

fn toggle_event_init_get_old_state_ffi(obj: JsValue) -> JsValue = "webapi_ToggleEventInit" "get_oldState"

fn toggle_event_init_get_new_state_ffi(obj: JsValue) -> JsValue = "webapi_ToggleEventInit" "get_newState"

fn toggle_event_init_get_source_ffi(obj: JsValue) -> JsValue = "webapi_ToggleEventInit" "get_source"