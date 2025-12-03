// Auto-generated MoonBit bindings for PageRevealEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary PageRevealEventInit : EventInit {
//   ViewTransition? viewTransition = null;
// };

///|
#external
pub type PageRevealEventInit

///|
pub impl TJsValue for PageRevealEventInit with to_js(self : PageRevealEventInit) -> JsValue = "%identity"

///|
fn page_reveal_event_init_ffi(view_transition : JsValue) -> PageRevealEventInit = "webapi_PageRevealEventInit" "new"

///|
pub fn PageRevealEventInit::new(
  view_transition? : JsValue
) -> PageRevealEventInit {
  let view_transition_js = opt_to_js(view_transition)
  page_reveal_event_init_ffi(view_transition_js)
}

///|
pub fn PageRevealEventInit::empty() -> PageRevealEventInit = "webapi_Dictionary" "empty"