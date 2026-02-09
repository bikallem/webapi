///|
fn page_reveal_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PageRevealEvent = "webapi_PageRevealEvent" "new"

///|
fn page_reveal_event_view_transition_ffi(obj : JsValue) -> ViewTransition = "webapi_PageRevealEvent" "get_viewTransition"
