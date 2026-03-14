// Do not edit. This file is generated.
// MoonBit type: EventListenerOptions
// Specifications: dom.idl

/// [EventListenerOptions](https://developer.mozilla.org/en-US/docs/Web/API/EventListenerOptions)
#external
pub type EventListenerOptions

pub impl TJsValue for EventListenerOptions with to_js(self: EventListenerOptions) -> JsValue = "%identity"

pub impl FromJsAny for EventListenerOptions with from_js_any(value : JsAny) -> EventListenerOptions = "%identity"

pub fn EventListenerOptions::new(capture? : Bool) -> EventListenerOptions {
  event_listener_options_ffi(opt_to_js(capture))
}

pub fn EventListenerOptions::empty() -> EventListenerOptions { event_listener_options_empty_ffi() }

pub fn EventListenerOptions::capture(self : EventListenerOptions) -> Bool? {
  event_listener_options_get_capture_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn event_listener_options_ffi(capture: JsValue) -> EventListenerOptions = 
#|(capture) => {
#|  const obj = {};
#|  if (capture !== undefined) obj.capture = capture;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn event_listener_options_empty_ffi() -> EventListenerOptions = "() => {}"

#cfg(target="js")
extern "js" fn event_listener_options_get_capture_ffi(obj: JsValue) -> JsValue = "(obj) => obj.capture"

#cfg(target="wasm-gc")
fn event_listener_options_ffi(capture: JsValue) -> EventListenerOptions = "webapi_EventListenerOptions" "new"

#cfg(target="wasm-gc")
fn event_listener_options_empty_ffi() -> EventListenerOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn event_listener_options_get_capture_ffi(obj: JsValue) -> JsValue = "webapi_EventListenerOptions" "get_capture"