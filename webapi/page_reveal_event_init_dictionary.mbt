// Do not edit. This file is generated.
// MoonBit type: PageRevealEventInit
// Specifications: dom.idl, html.idl

///|
/// [PageRevealEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PageRevealEventInit)
#external
pub type PageRevealEventInit

///|
pub impl TJsValue for PageRevealEventInit with to_js(self : PageRevealEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for PageRevealEventInit with from_js_any(value : JsAny) -> PageRevealEventInit = "%identity"

///|
pub fn PageRevealEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  view_transition? : ViewTransition,
) -> PageRevealEventInit {
  page_reveal_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(view_transition),
  )
}

///|
pub fn PageRevealEventInit::empty() -> PageRevealEventInit {
  page_reveal_event_init_empty_ffi()
}

///|
pub fn PageRevealEventInit::bubbles(self : PageRevealEventInit) -> Bool? {
  page_reveal_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PageRevealEventInit::cancelable(self : PageRevealEventInit) -> Bool? {
  page_reveal_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PageRevealEventInit::composed(self : PageRevealEventInit) -> Bool? {
  page_reveal_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PageRevealEventInit::view_transition(
  self : PageRevealEventInit,
) -> ViewTransition? {
  page_reveal_event_init_get_view_transition_ffi(TJsValue::to_js(self)).to_option()
}
