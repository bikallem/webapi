extern "js" fn page_swap_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, activation: JsValue, view_transition: JsValue) -> PageSwapEventInit = 
#|(bubbles, cancelable, composed, activation, viewTransition) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (activation !== undefined) obj.activation = activation;
#|  if (viewTransition !== undefined) obj.viewTransition = viewTransition;
#|  return obj;
#|}

extern "js" fn page_swap_event_init_empty_ffi() -> PageSwapEventInit = "() => {}"