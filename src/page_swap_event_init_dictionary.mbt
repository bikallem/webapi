// Do not edit. This file is generated.
// MoonBit type: PageSwapEventInit
// Specifications: dom.idl, html.idl

///|
/// [PageSwapEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PageSwapEventInit)
#external
pub type PageSwapEventInit

///|
pub impl TJsValue for PageSwapEventInit with to_js(self : PageSwapEventInit) -> JsValue = "%identity"

///|
pub fn PageSwapEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  activation? : &TNavigationActivation = JsValue::null(),
  view_transition? : ViewTransition = JsValue::null(),
) -> PageSwapEventInit {
  page_swap_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(activation),
    TJsValue::to_js(view_transition),
  )
}

///|
pub fn PageSwapEventInit::empty() -> PageSwapEventInit {
  page_swap_event_init_empty_ffi()
}
