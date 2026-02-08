///|
extern "js" fn text_event_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
extern "js" fn text_event_init_text_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
  view : JsValue,
  data : JsValue,
) -> Unit = "(obj, type_, bubbles, cancelable, view, data) => obj.initTextEvent(type_, bubbles, cancelable, view, data)"
