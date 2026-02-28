///|
fn extendable_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ExtendableEvent = "webapi_ExtendableEvent" "new"

///|
fn extendable_event_wait_until_ffi(obj : JsValue, f : JsValue) -> Unit = "webapi_ExtendableEvent" "waitUntil"
