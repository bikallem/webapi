///|
fn pop_state_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PopStateEvent = "webapi_PopStateEvent" "new"

///|
fn pop_state_event_state_ffi(obj : JsValue) -> JsValue = "webapi_PopStateEvent" "get_state"

///|
fn pop_state_event_has_ua_visual_transition_ffi(obj : JsValue) -> JsValue = "webapi_PopStateEvent" "get_hasUAVisualTransition"
