// Do not edit. This file is generated.
// MoonBit type: PageSwapEventInit
// Specifications: dom.idl, html.idl

/// [PageSwapEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PageSwapEventInit)
#external
pub type PageSwapEventInit

pub impl TJsValue for PageSwapEventInit with to_js(self: PageSwapEventInit) -> JsValue = "%identity"

pub impl FromJsAny for PageSwapEventInit with from_js_any(value : JsAny) -> PageSwapEventInit = "%identity"

pub fn PageSwapEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
activation? : &TNavigationActivation, 
view_transition? : ViewTransition) -> PageSwapEventInit {
  page_swap_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(activation), opt_to_js(view_transition))
}

pub fn PageSwapEventInit::empty() -> PageSwapEventInit { page_swap_event_init_empty_ffi() }

pub fn PageSwapEventInit::bubbles(self : PageSwapEventInit) -> Bool? {
  page_swap_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PageSwapEventInit::cancelable(self : PageSwapEventInit) -> Bool? {
  page_swap_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PageSwapEventInit::composed(self : PageSwapEventInit) -> Bool? {
  page_swap_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PageSwapEventInit::activation(self : PageSwapEventInit) -> NavigationActivation? {
  page_swap_event_init_get_activation_ffi(TJsValue::to_js(self)).to_option()
}

pub fn PageSwapEventInit::view_transition(self : PageSwapEventInit) -> ViewTransition? {
  page_swap_event_init_get_view_transition_ffi(TJsValue::to_js(self)).to_option()
}