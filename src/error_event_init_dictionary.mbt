// Do not edit. This file is generated.
// MoonBit type: ErrorEventInit
// Specifications: dom.idl, html.idl

/// [ErrorEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEventInit)
#external
pub type ErrorEventInit

pub impl TJsValue for ErrorEventInit with to_js(self: ErrorEventInit) -> JsValue = "%identity"

pub fn ErrorEventInit::new(bubbles? : Bool = false, 
cancelable? : Bool = false, 
composed? : Bool = false, 
message? : String = "", 
filename? : String = "", 
lineno? : UInt = (0: UInt), 
colno? : UInt = (0: UInt), 
error? : JsValue) -> ErrorEventInit {
  error_event_init_ffi(TJsValue::to_js(bubbles), TJsValue::to_js(cancelable), TJsValue::to_js(composed), TJsValue::to_js(message), TJsValue::to_js(filename), TJsValue::to_js(lineno), TJsValue::to_js(colno), opt_to_js(error))
}

pub fn ErrorEventInit::empty() -> ErrorEventInit { error_event_init_empty_ffi() }