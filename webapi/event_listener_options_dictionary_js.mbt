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
extern "js" fn event_listener_options_empty_ffi() -> EventListenerOptions = "() => {}"

///|
extern "js" fn event_listener_options_get_capture_ffi(obj : JsValue) -> JsValue = "(obj) => obj.capture"
