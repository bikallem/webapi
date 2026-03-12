extern "js" fn add_event_listener_options_ffi(capture: JsValue, passive: JsValue, once: JsValue, signal: JsValue) -> AddEventListenerOptions = 
#|(capture, passive, once, signal) => {
#|  const obj = {};
#|  if (capture !== undefined) obj.capture = capture;
#|  if (passive !== undefined) obj.passive = passive;
#|  if (once !== undefined) obj.once = once;
#|  if (signal !== undefined) obj.signal = signal;
#|  return obj;
#|}

extern "js" fn add_event_listener_options_empty_ffi() -> AddEventListenerOptions = "() => {}"

extern "js" fn add_event_listener_options_get_capture_ffi(obj: JsValue) -> JsValue = "(obj) => obj.capture"

extern "js" fn add_event_listener_options_get_passive_ffi(obj: JsValue) -> JsValue = "(obj) => obj.passive"

extern "js" fn add_event_listener_options_get_once_ffi(obj: JsValue) -> JsValue = "(obj) => obj.once"

extern "js" fn add_event_listener_options_get_signal_ffi(obj: JsValue) -> JsValue = "(obj) => obj.signal"