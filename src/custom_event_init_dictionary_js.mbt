extern "js" fn custom_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, detail: JsValue) -> CustomEventInit = 
#|(bubbles, cancelable, composed, detail) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (detail !== undefined) obj.detail = detail;
#|  return obj;
#|}

extern "js" fn custom_event_init_empty_ffi() -> CustomEventInit = "() => {}"