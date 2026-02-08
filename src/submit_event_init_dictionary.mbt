// Do not edit. This file is generated.
// MoonBit type: SubmitEventInit
// Specifications: dom.idl, html.idl

/// [SubmitEventInit](https://developer.mozilla.org/en-US/docs/Web/API/SubmitEventInit)
#external
pub type SubmitEventInit

pub impl TJsValue for SubmitEventInit with to_js(self: SubmitEventInit) -> JsValue = "%identity"

pub fn SubmitEventInit::new(bubbles? : Bool = false, 
cancelable? : Bool = false, 
composed? : Bool = false, 
submitter? : &THTMLElement = JsValue::null()) -> SubmitEventInit {
  submit_event_init_ffi(TJsValue::to_js(bubbles), TJsValue::to_js(cancelable), TJsValue::to_js(composed), TJsValue::to_js(submitter))
}

pub fn SubmitEventInit::empty() -> SubmitEventInit { submit_event_init_empty_ffi() }