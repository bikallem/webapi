extern "js" fn clipboard_change_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, types: JsValue, change_id: JsValue) -> ClipboardChangeEventInit = 
#|(bubbles, cancelable, composed, types, changeId) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (types !== undefined) obj.types = types;
#|  if (changeId !== undefined) obj.changeId = changeId;
#|  return obj;
#|}

extern "js" fn clipboard_change_event_init_empty_ffi() -> ClipboardChangeEventInit = "() => {}"

extern "js" fn clipboard_change_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn clipboard_change_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn clipboard_change_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn clipboard_change_event_init_get_types_ffi(obj: JsValue) -> JsValue = "(obj) => obj.types"

extern "js" fn clipboard_change_event_init_get_change_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.changeId"