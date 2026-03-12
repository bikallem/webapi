extern "js" fn event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue) -> EventInit = 
#|(bubbles, cancelable, composed) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  return obj;
#|}

extern "js" fn event_init_empty_ffi() -> EventInit = "() => {}"

extern "js" fn event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"