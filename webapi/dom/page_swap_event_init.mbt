// Auto-generated MoonBit bindings for PageSwapEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary PageSwapEventInit : EventInit {
//   NavigationActivation? activation = null;
//   ViewTransition? viewTransition = null;
// };

///|
#external
pub type PageSwapEventInit

///|
pub impl TJsValue for PageSwapEventInit with to_js(self : PageSwapEventInit) -> JsValue = "%identity"

///|
fn page_swap_event_init_ffi(activation : JsValue, view_transition : JsValue) -> PageSwapEventInit = "webapi_PageSwapEventInit" "new"

///|
pub fn PageSwapEventInit::new(
  activation? : JsValue,
  view_transition? : JsValue
) -> PageSwapEventInit {
  let activation_js = opt_to_js(activation)
  let view_transition_js = opt_to_js(view_transition)
  page_swap_event_init_ffi(activation_js, view_transition_js)
}

///|
pub fn PageSwapEventInit::empty() -> PageSwapEventInit = "webapi_Dictionary" "empty"