///|
extern "js" fn pop_state_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PopStateEvent = "(type_, event_init_dict) => new PopStateEvent(type_, event_init_dict)"

///|
extern "js" fn pop_state_event_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.state"

///|
extern "js" fn pop_state_event_has_ua_visual_transition_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.hasUAVisualTransition"
