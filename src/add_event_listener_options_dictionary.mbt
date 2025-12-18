// Auto-generated MoonBit bindings for AddEventListenerOptions dictionary
// Do not edit manually

#external
pub type AddEventListenerOptions

pub impl TJsValue for AddEventListenerOptions with to_js(self: AddEventListenerOptions) -> JsValue = "%identity"


fn add_event_listener_options_ffi(capture : JsValue, passive : JsValue, once : JsValue, signal : JsValue) -> AddEventListenerOptions = "webapi_AddEventListenerOptions" "new"


pub fn AddEventListenerOptions::new(
  capture? : Bool? : Bool = false,
  passive? : Bool,
  once? : Bool? : Bool = false,
  signal? : &TAbortSignal) -> AddEventListenerOptions {
    add_event_listener_options_ffi(
      TJsValue::to_js(capture)
     ,opt_to_js(passive)
     ,TJsValue::to_js(once)
     ,opt_to_js(signal)
    )
}


pub fn AddEventListenerOptions::empty() -> AddEventListenerOptions = "webapi_Dictionary" "empty"