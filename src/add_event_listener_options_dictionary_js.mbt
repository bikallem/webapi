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
extern "js" fn add_event_listener_options_empty_ffi() -> AddEventListenerOptions = "() => {}"
