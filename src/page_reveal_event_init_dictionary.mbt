// Do not edit. This file is generated.
// MoonBit type: PageRevealEventInit
// Specifications: dom.idl, html.idl

/// [PageRevealEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PageRevealEventInit)
#external
pub type PageRevealEventInit

pub impl TJsValue for PageRevealEventInit with to_js(self: PageRevealEventInit) -> JsValue = "%identity"

pub fn PageRevealEventInit::new(bubbles? : Bool = false, 
cancelable? : Bool = false, 
composed? : Bool = false, 
view_transition? : ViewTransition = JsValue::null()) -> PageRevealEventInit {
  page_reveal_event_init_ffi(TJsValue::to_js(bubbles), TJsValue::to_js(cancelable), TJsValue::to_js(composed), TJsValue::to_js(view_transition))
}

pub fn PageRevealEventInit::empty() -> PageRevealEventInit { page_reveal_event_init_empty_ffi() }