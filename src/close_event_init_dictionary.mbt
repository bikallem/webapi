// Do not edit. This file is generated.
// MoonBit type: CloseEventInit
// Specifications: websockets.idl, dom.idl

/// [CloseEventInit](https://developer.mozilla.org/en-US/docs/Web/API/CloseEventInit)
#external
pub type CloseEventInit

pub impl TJsValue for CloseEventInit with to_js(self: CloseEventInit) -> JsValue = "%identity"

pub fn CloseEventInit::new(bubbles? : Bool = false, 
cancelable? : Bool = false, 
composed? : Bool = false, 
was_clean? : Bool = false, 
code? : UInt = (0: UInt), 
reason? : String = "") -> CloseEventInit {
  close_event_init_ffi(TJsValue::to_js(bubbles), TJsValue::to_js(cancelable), TJsValue::to_js(composed), TJsValue::to_js(was_clean), TJsValue::to_js(code), TJsValue::to_js(reason))
}

pub fn CloseEventInit::empty() -> CloseEventInit { close_event_init_empty_ffi() }