// Auto-generated MoonBit bindings for PageTransitionEventInit dictionary

// Do not edit manually

///|
#external
pub type PageTransitionEventInit

///|
pub impl TJsValue for PageTransitionEventInit with to_js(
  self : PageTransitionEventInit,
) -> JsValue = "%identity"

///|
fn page_transition_event_init_ffi(
  persisted : JsValue,
) -> PageTransitionEventInit = "webapi_PageTransitionEventInit" "new"

///|
pub fn PageTransitionEventInit::new(
  persisted? : Bool = false,
) -> PageTransitionEventInit {
  page_transition_event_init_ffi(TJsValue::to_js(persisted))
}

///|
pub fn PageTransitionEventInit::empty() -> PageTransitionEventInit = "webapi_Dictionary" "empty"
