// Do not edit. This file is generated.
// MoonBit type: PageTransitionEventInit
// Specifications: dom.idl, html.idl

///|
/// [PageTransitionEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEventInit)
#external
pub type PageTransitionEventInit

///|
pub impl TJsValue for PageTransitionEventInit with to_js(
  self : PageTransitionEventInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for PageTransitionEventInit with from_js_any(value : JsAny) -> PageTransitionEventInit = "%identity"

///|
pub fn PageTransitionEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  persisted? : Bool,
) -> PageTransitionEventInit {
  page_transition_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(persisted),
  )
}

///|
pub fn PageTransitionEventInit::empty() -> PageTransitionEventInit {
  page_transition_event_init_empty_ffi()
}

///|
pub fn PageTransitionEventInit::bubbles(
  self : PageTransitionEventInit,
) -> Bool? {
  page_transition_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PageTransitionEventInit::cancelable(
  self : PageTransitionEventInit,
) -> Bool? {
  page_transition_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PageTransitionEventInit::composed(
  self : PageTransitionEventInit,
) -> Bool? {
  page_transition_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PageTransitionEventInit::persisted(
  self : PageTransitionEventInit,
) -> Bool? {
  page_transition_event_init_get_persisted_ffi(TJsValue::to_js(self)).to_option_prim()
}
