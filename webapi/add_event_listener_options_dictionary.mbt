// Do not edit. This file is generated.
// MoonBit type: AddEventListenerOptions
// Specifications: dom.idl

/// [AddEventListenerOptions](https://developer.mozilla.org/en-US/docs/Web/API/AddEventListenerOptions)
#external
pub type AddEventListenerOptions

pub impl TJsValue for AddEventListenerOptions with to_js(self: AddEventListenerOptions) -> JsValue = "%identity"

pub impl FromJsAny for AddEventListenerOptions with from_js_any(value : JsAny) -> AddEventListenerOptions = "%identity"

pub fn AddEventListenerOptions::new(capture? : Bool, 
passive? : Bool, 
once? : Bool, 
signal? : &TAbortSignal) -> AddEventListenerOptions {
  add_event_listener_options_ffi(opt_to_js(capture), opt_to_js(passive), opt_to_js(once), opt_to_js(signal))
}

pub fn AddEventListenerOptions::empty() -> AddEventListenerOptions { add_event_listener_options_empty_ffi() }

pub fn AddEventListenerOptions::capture(self : AddEventListenerOptions) -> Bool? {
  add_event_listener_options_get_capture_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn AddEventListenerOptions::passive(self : AddEventListenerOptions) -> Bool? {
  add_event_listener_options_get_passive_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn AddEventListenerOptions::once(self : AddEventListenerOptions) -> Bool? {
  add_event_listener_options_get_once_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn AddEventListenerOptions::signal(self : AddEventListenerOptions) -> AbortSignal? {
  add_event_listener_options_get_signal_ffi(TJsValue::to_js(self)).to_option()
}