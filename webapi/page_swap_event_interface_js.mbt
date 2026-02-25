///|
extern "js" fn page_swap_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PageSwapEvent = "(type_, event_init_dict) => new PageSwapEvent(type_, event_init_dict)"

///|
extern "js" fn page_swap_event_activation_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.activation"

///|
fn page_swap_event_activation_ffi(obj : JsValue) -> NavigationActivation {
  page_swap_event_activation_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn page_swap_event_view_transition_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.viewTransition"

///|
fn page_swap_event_view_transition_ffi(obj : JsValue) -> ViewTransition {
  page_swap_event_view_transition_ffi_js(obj).unsafe_cast()
}
