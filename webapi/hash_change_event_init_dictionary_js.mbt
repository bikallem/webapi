extern "js" fn hash_change_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, old_url: JsValue, new_url: JsValue) -> HashChangeEventInit = 
#|(bubbles, cancelable, composed, oldURL, newURL) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (oldURL !== undefined) obj.oldURL = oldURL;
#|  if (newURL !== undefined) obj.newURL = newURL;
#|  return obj;
#|}

extern "js" fn hash_change_event_init_empty_ffi() -> HashChangeEventInit = "() => {}"

extern "js" fn hash_change_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn hash_change_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn hash_change_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn hash_change_event_init_get_old_url_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oldURL"

extern "js" fn hash_change_event_init_get_new_url_ffi(obj: JsValue) -> JsValue = "(obj) => obj.newURL"