extern "js" fn page_transition_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, persisted: JsValue) -> PageTransitionEventInit = 
#|(bubbles, cancelable, composed, persisted) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (persisted !== undefined) obj.persisted = persisted;
#|  return obj;
#|}

extern "js" fn page_transition_event_init_empty_ffi() -> PageTransitionEventInit = "() => {}"