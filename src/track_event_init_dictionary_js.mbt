///|
extern "js" fn track_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  track : JsValue,
) -> TrackEventInit =
  #|(bubbles, cancelable, composed, track) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (track !== undefined) obj.track = track;
  #|  return obj;
  #|}

///|
extern "js" fn track_event_init_empty_ffi() -> TrackEventInit = "() => {}"

///|
extern "js" fn track_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn track_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn track_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn track_event_init_get_track_ffi(obj : JsValue) -> JsValue = "(obj) => obj.track"
