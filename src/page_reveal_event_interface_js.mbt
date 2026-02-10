///|
extern "js" fn page_reveal_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PageRevealEvent = "(type_, event_init_dict) => new PageRevealEvent(type_, event_init_dict)"

///|
extern "js" fn page_reveal_event_view_transition_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.viewTransition"

///|
fn page_reveal_event_view_transition_ffi(obj : JsValue) -> ViewTransition {
  page_reveal_event_view_transition_ffi_js(obj).unsafe_cast()
}
