extern "js" fn event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue) -> EventInit = 
#|(bubbles, cancelable, composed) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  return obj;
#|}

extern "js" fn event_init_empty_ffi() -> EventInit = "() => {}"