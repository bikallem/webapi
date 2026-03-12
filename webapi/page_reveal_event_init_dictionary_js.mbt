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

extern "js" fn page_reveal_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn page_reveal_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn page_reveal_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn page_reveal_event_init_get_view_transition_ffi(obj: JsValue) -> JsValue = "(obj) => obj.viewTransition"