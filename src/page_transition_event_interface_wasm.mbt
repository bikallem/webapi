///|
fn page_transition_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PageTransitionEvent = "webapi_PageTransitionEvent" "new"

///|
fn page_transition_event_persisted_ffi(obj : JsValue) -> JsValue = "webapi_PageTransitionEvent" "get_persisted"
