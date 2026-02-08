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
