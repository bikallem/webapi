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
pub impl FromJsAny for PageSwapEventInit with from_js_any(value : JsAny) -> PageSwapEventInit = "%identity"

///|
pub fn PageSwapEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  activation? : &TNavigationActivation,
  view_transition? : ViewTransition = JsValue::null(),
) -> PageSwapEventInit {
  page_swap_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(activation),
    TJsValue::to_js(view_transition),
  )
}

///|
pub fn PageSwapEventInit::empty() -> PageSwapEventInit {
  page_swap_event_init_empty_ffi()
}
