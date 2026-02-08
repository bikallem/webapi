// Do not edit. This file is generated.
// MoonBit type: AddEventListenerOptions
// Specifications: dom.idl

///|
/// [AddEventListenerOptions](https://developer.mozilla.org/en-US/docs/Web/API/AddEventListenerOptions)
#external
pub type AddEventListenerOptions

///|
pub impl TJsValue for AddEventListenerOptions with to_js(
  self : AddEventListenerOptions,
) -> JsValue = "%identity"

///|
pub fn AddEventListenerOptions::new(
  capture? : Bool = false,
  passive? : Bool,
  once? : Bool = false,
  signal? : &TAbortSignal,
) -> AddEventListenerOptions {
  add_event_listener_options_ffi(
    TJsValue::to_js(capture),
    opt_to_js(passive),
    TJsValue::to_js(once),
    opt_to_js(signal),
  )
}

///|
pub fn AddEventListenerOptions::empty() -> AddEventListenerOptions {
  add_event_listener_options_empty_ffi()
}
