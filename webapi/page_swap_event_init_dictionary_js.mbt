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

extern "js" fn page_swap_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn page_swap_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn page_swap_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn page_swap_event_init_get_activation_ffi(obj: JsValue) -> JsValue = "(obj) => obj.activation"

extern "js" fn page_swap_event_init_get_view_transition_ffi(obj: JsValue) -> JsValue = "(obj) => obj.viewTransition"