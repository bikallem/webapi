// Do not edit. This file is generated.
// MoonBit type: ToggleEventInit
// Specifications: dom.idl, html.idl

/// [ToggleEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEventInit)
#external
pub type ToggleEventInit

pub impl TJsValue for ToggleEventInit with to_js(self: ToggleEventInit) -> JsValue = "%identity"

pub fn ToggleEventInit::new(bubbles? : Bool = false, 
cancelable? : Bool = false, 
composed? : Bool = false, 
old_state? : String = "", 
new_state? : String = "", 
source? : &TElement = JsValue::null()) -> ToggleEventInit {
  toggle_event_init_ffi(TJsValue::to_js(bubbles), TJsValue::to_js(cancelable), TJsValue::to_js(composed), TJsValue::to_js(old_state), TJsValue::to_js(new_state), TJsValue::to_js(source))
}

pub fn ToggleEventInit::empty() -> ToggleEventInit { toggle_event_init_empty_ffi() }