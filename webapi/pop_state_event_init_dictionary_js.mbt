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
extern "js" fn pop_state_event_init_empty_ffi() -> PopStateEventInit = "() => {}"

///|
extern "js" fn pop_state_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn pop_state_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn pop_state_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn pop_state_event_init_get_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.state"

///|
extern "js" fn pop_state_event_init_get_has_ua_visual_transition_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.hasUAVisualTransition"
