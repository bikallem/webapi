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

#cfg(target="js")
extern "js" fn add_event_listener_options_ffi(capture: JsValue, passive: JsValue, once: JsValue, signal: JsValue) -> AddEventListenerOptions = 
#|(capture, passive, once, signal) => {
#|  const obj = {};
#|  if (capture !== undefined) obj.capture = capture;
#|  if (passive !== undefined) obj.passive = passive;
#|  if (once !== undefined) obj.once = once;
#|  if (signal !== undefined) obj.signal = signal;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn add_event_listener_options_empty_ffi() -> AddEventListenerOptions = "() => {}"

#cfg(target="js")
extern "js" fn add_event_listener_options_get_capture_ffi(obj: JsValue) -> JsValue = "(obj) => obj.capture"

#cfg(target="js")
extern "js" fn add_event_listener_options_get_passive_ffi(obj: JsValue) -> JsValue = "(obj) => obj.passive"

#cfg(target="js")
extern "js" fn add_event_listener_options_get_once_ffi(obj: JsValue) -> JsValue = "(obj) => obj.once"

#cfg(target="js")
extern "js" fn add_event_listener_options_get_signal_ffi(obj: JsValue) -> JsValue = "(obj) => obj.signal"

#cfg(target="wasm-gc")
fn add_event_listener_options_ffi(capture: JsValue, passive: JsValue, once: JsValue, signal: JsValue) -> AddEventListenerOptions = "webapi_AddEventListenerOptions" "new"

#cfg(target="wasm-gc")
fn add_event_listener_options_empty_ffi() -> AddEventListenerOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn add_event_listener_options_get_capture_ffi(obj: JsValue) -> JsValue = "webapi_AddEventListenerOptions" "get_capture"

#cfg(target="wasm-gc")
fn add_event_listener_options_get_passive_ffi(obj: JsValue) -> JsValue = "webapi_AddEventListenerOptions" "get_passive"

#cfg(target="wasm-gc")
fn add_event_listener_options_get_once_ffi(obj: JsValue) -> JsValue = "webapi_AddEventListenerOptions" "get_once"

#cfg(target="wasm-gc")
fn add_event_listener_options_get_signal_ffi(obj: JsValue) -> JsValue = "webapi_AddEventListenerOptions" "get_signal"