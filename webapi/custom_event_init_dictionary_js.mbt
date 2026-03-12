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

extern "js" fn custom_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn custom_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn custom_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn custom_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "(obj) => obj.detail"