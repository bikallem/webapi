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