///|
#external
pub type AddEventListenerOptions

///|
pub impl TJsValue for AddEventListenerOptions with to_js(
  self : AddEventListenerOptions,
) -> JsValue = "%identity"

///|
extern "js" fn add_event_listener_options_ffi(
  capture : JsValue,
  passive : JsValue,
  once : JsValue,
  signal : JsValue,
) -> AddEventListenerOptions =
  #|(capture, passive, once, signal) => {
  #|  const obj = {};
  #|  if (capture !== undefined) obj.capture = capture;
  #|  if (passive !== undefined) obj.passive = passive;
  #|  if (once !== undefined) obj.once = once;
  #|  if (signal !== undefined) obj.signal = signal;
  #|  return obj;
  #|}

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
extern "js" fn add_event_listener_options_empty_ffi() -> AddEventListenerOptions = "() => {}"

///|
pub fn AddEventListenerOptions::empty() -> AddEventListenerOptions {
  add_event_listener_options_empty_ffi()
}
