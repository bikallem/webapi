fn page_swap_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> PageSwapEvent = "webapi_PageSwapEvent" "new"

fn page_swap_event_activation_ffi(obj: JsValue) -> NavigationActivation = "webapi_PageSwapEvent" "get_activation"

fn page_swap_event_view_transition_ffi_wasm(obj: JsValue) -> JsValue = "webapi_PageSwapEvent" "get_viewTransition"

///|
fn page_swap_event_view_transition_ffi(obj: JsValue) -> ViewTransition {
  page_swap_event_view_transition_ffi_wasm(obj).unsafe_cast()
}