///|
#external
pub type EventListenerOptions

///|
pub impl TJsValue for EventListenerOptions with to_js(
  self : EventListenerOptions,
) -> JsValue = "%identity"

///|
extern "js" fn event_listener_options_ffi(
  capture : JsValue,
) -> EventListenerOptions =
  #|(capture) => {
  #|  const obj = {};
  #|  if (capture !== undefined) obj.capture = capture;
  #|  return obj;
  #|}

///|
pub fn EventListenerOptions::new(
  capture? : Bool = false,
) -> EventListenerOptions {
  event_listener_options_ffi(TJsValue::to_js(capture))
}

///|
extern "js" fn event_listener_options_empty_ffi() -> EventListenerOptions = "() => {}"

///|
pub fn EventListenerOptions::empty() -> EventListenerOptions {
  event_listener_options_empty_ffi()
}
