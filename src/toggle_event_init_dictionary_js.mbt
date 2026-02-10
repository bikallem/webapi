extern "js" fn toggle_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, old_state: JsValue, new_state: JsValue, source: JsValue) -> ToggleEventInit = 
#|(bubbles, cancelable, composed, oldState, newState, source) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (oldState !== undefined) obj.oldState = oldState;
#|  if (newState !== undefined) obj.newState = newState;
#|  if (source !== undefined) obj.source = source;
#|  return obj;
#|}

extern "js" fn toggle_event_init_empty_ffi() -> ToggleEventInit = "() => {}"