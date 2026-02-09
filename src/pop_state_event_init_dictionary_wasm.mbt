///|
fn pop_state_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  state : JsValue,
  has_ua_visual_transition : JsValue,
) -> PopStateEventInit = "webapi_PopStateEventInit" "new"

///|
fn pop_state_event_init_empty_ffi() -> PopStateEventInit = "webapi_Dictionary" "empty"
