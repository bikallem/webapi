extern "js" fn ui_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue) -> UIEventInit = 
#|(bubbles, cancelable, composed, view, detail, which) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (view !== undefined) obj.view = view;
#|  if (detail !== undefined) obj.detail = detail;
#|  if (which !== undefined) obj.which = which;
#|  return obj;
#|}

extern "js" fn ui_event_init_empty_ffi() -> UIEventInit = "() => {}"

extern "js" fn ui_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn ui_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn ui_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn ui_event_init_get_view_ffi(obj: JsValue) -> JsValue = "(obj) => obj.view"

extern "js" fn ui_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "(obj) => obj.detail"

extern "js" fn ui_event_init_get_which_ffi(obj: JsValue) -> JsValue = "(obj) => obj.which"