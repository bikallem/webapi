extern "js" fn track_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, track: JsValue) -> TrackEventInit = 
#|(bubbles, cancelable, composed, track) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (track !== undefined) obj.track = track;
#|  return obj;
#|}

extern "js" fn track_event_init_empty_ffi() -> TrackEventInit = "() => {}"