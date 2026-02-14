///|
fn page_reveal_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PageRevealEvent = "webapi_PageRevealEvent" "new"

///|
fn page_reveal_event_view_transition_ffi_wasm(obj : JsValue) -> JsValue = "webapi_PageRevealEvent" "get_viewTransition"

///|
fn page_reveal_event_view_transition_ffi(obj : JsValue) -> ViewTransition {
  page_reveal_event_view_transition_ffi_wasm(obj).unsafe_cast()
}
