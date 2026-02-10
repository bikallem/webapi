extern "js" fn pop_state_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, state: JsValue, has_ua_visual_transition: JsValue) -> PopStateEventInit = 
#|(bubbles, cancelable, composed, state, hasUAVisualTransition) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (state !== undefined) obj.state = state;
#|  if (hasUAVisualTransition !== undefined) obj.hasUAVisualTransition = hasUAVisualTransition;
#|  return obj;
#|}

extern "js" fn pop_state_event_init_empty_ffi() -> PopStateEventInit = "() => {}"