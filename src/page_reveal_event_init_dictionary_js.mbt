extern "js" fn page_reveal_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view_transition: JsValue) -> PageRevealEventInit = 
#|(bubbles, cancelable, composed, viewTransition) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (viewTransition !== undefined) obj.viewTransition = viewTransition;
#|  return obj;
#|}

extern "js" fn page_reveal_event_init_empty_ffi() -> PageRevealEventInit = "() => {}"