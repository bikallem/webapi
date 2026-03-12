extern "js" fn input_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue, data: JsValue, is_composing: JsValue, input_type: JsValue) -> InputEventInit = 
#|(bubbles, cancelable, composed, view, detail, which, data, isComposing, inputType) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (view !== undefined) obj.view = view;
#|  if (detail !== undefined) obj.detail = detail;
#|  if (which !== undefined) obj.which = which;
#|  if (data !== undefined) obj.data = data;
#|  if (isComposing !== undefined) obj.isComposing = isComposing;
#|  if (inputType !== undefined) obj.inputType = inputType;
#|  return obj;
#|}

extern "js" fn input_event_init_empty_ffi() -> InputEventInit = "() => {}"

extern "js" fn input_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn input_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn input_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn input_event_init_get_view_ffi(obj: JsValue) -> JsValue = "(obj) => obj.view"

extern "js" fn input_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "(obj) => obj.detail"

extern "js" fn input_event_init_get_which_ffi(obj: JsValue) -> JsValue = "(obj) => obj.which"

extern "js" fn input_event_init_get_data_ffi(obj: JsValue) -> JsValue = "(obj) => obj.data"

extern "js" fn input_event_init_get_is_composing_ffi(obj: JsValue) -> JsValue = "(obj) => obj.isComposing"

extern "js" fn input_event_init_get_input_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.inputType"