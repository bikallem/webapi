///|
#external
pub type PopStateEventInit

///|
pub impl TJsValue for PopStateEventInit with to_js(self : PopStateEventInit) -> JsValue = "%identity"

///|
extern "js" fn pop_state_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  state : JsValue,
  has_ua_visual_transition : JsValue,
) -> PopStateEventInit =
  #|(bubbles, cancelable, composed, state, hasUAVisualTransition) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (state !== undefined) obj.state = state;
  #|  if (hasUAVisualTransition !== undefined) obj.hasUAVisualTransition = hasUAVisualTransition;
  #|  return obj;
  #|}

///|
pub fn PopStateEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  state? : JsValue = JsValue::null(),
  has_ua_visual_transition? : Bool = false,
) -> PopStateEventInit {
  pop_state_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(state),
    TJsValue::to_js(has_ua_visual_transition),
  )
}

///|
extern "js" fn pop_state_event_init_empty_ffi() -> PopStateEventInit = "() => {}"

///|
pub fn PopStateEventInit::empty() -> PopStateEventInit {
  pop_state_event_init_empty_ffi()
}
