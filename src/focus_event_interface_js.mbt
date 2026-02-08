///|
extern "js" fn focus_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> FocusEvent = "(type_, event_init_dict) => new FocusEvent(type_, event_init_dict)"

///|
extern "js" fn focus_event_related_target_ffi(obj : JsValue) -> JsValue = "(obj) => obj.relatedTarget"
