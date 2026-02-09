///|
extern "js" fn pop_state_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PopStateEvent = "(type_, event_init_dict) => new PopStateEvent(type_, event_init_dict)"

///|
extern "js" fn pop_state_event_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.state"

///|
fn pop_state_event_state_ffi(obj : JsValue) -> JsValue {
  pop_state_event_state_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn pop_state_event_has_ua_visual_transition_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.hasUAVisualTransition"

///|
fn pop_state_event_has_ua_visual_transition_ffi(obj : JsValue) -> Bool {
  pop_state_event_has_ua_visual_transition_ffi_js(obj).unsafe_cast()
}
