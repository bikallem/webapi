extern "js" fn focus_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue, related_target: JsValue) -> FocusEventInit = 
#|(bubbles, cancelable, composed, view, detail, which, relatedTarget) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (view !== undefined) obj.view = view;
#|  if (detail !== undefined) obj.detail = detail;
#|  if (which !== undefined) obj.which = which;
#|  if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
#|  return obj;
#|}

extern "js" fn focus_event_init_empty_ffi() -> FocusEventInit = "() => {}"

extern "js" fn focus_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn focus_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn focus_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn focus_event_init_get_view_ffi(obj: JsValue) -> JsValue = "(obj) => obj.view"

extern "js" fn focus_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "(obj) => obj.detail"

extern "js" fn focus_event_init_get_which_ffi(obj: JsValue) -> JsValue = "(obj) => obj.which"

extern "js" fn focus_event_init_get_related_target_ffi(obj: JsValue) -> JsValue = "(obj) => obj.relatedTarget"