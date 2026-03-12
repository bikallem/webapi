///|
extern "js" fn extendable_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ExtendableEvent = "(type_, event_init_dict) => new ExtendableEvent(type_, event_init_dict)"

///|
extern "js" fn extendable_event_wait_until_ffi(
  obj : JsValue,
  f : JsValue,
) -> Unit = "(obj, f) => obj.waitUntil(f)"
