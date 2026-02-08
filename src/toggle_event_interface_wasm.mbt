fn toggle_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ToggleEvent = "webapi_ToggleEvent" "new"

fn toggle_event_old_state_ffi(obj: JsValue) -> JsValue = "webapi_ToggleEvent" "get_oldState"

fn toggle_event_new_state_ffi(obj: JsValue) -> JsValue = "webapi_ToggleEvent" "get_newState"

fn toggle_event_source_ffi(obj: JsValue) -> JsValue = "webapi_ToggleEvent" "get_source"