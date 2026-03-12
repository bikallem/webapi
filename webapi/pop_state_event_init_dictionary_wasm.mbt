fn pop_state_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, state: JsValue, has_ua_visual_transition: JsValue) -> PopStateEventInit = "webapi_PopStateEventInit" "new"

fn pop_state_event_init_empty_ffi() -> PopStateEventInit = "webapi_Dictionary" "empty"

fn pop_state_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_PopStateEventInit" "get_bubbles"

fn pop_state_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_PopStateEventInit" "get_cancelable"

fn pop_state_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_PopStateEventInit" "get_composed"

fn pop_state_event_init_get_state_ffi(obj: JsValue) -> JsValue = "webapi_PopStateEventInit" "get_state"

fn pop_state_event_init_get_has_ua_visual_transition_ffi(obj: JsValue) -> JsValue = "webapi_PopStateEventInit" "get_hasUAVisualTransition"