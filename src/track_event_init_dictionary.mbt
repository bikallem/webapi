///|
#external
pub type TrackEventInit

///|
pub impl TJsValue for TrackEventInit with to_js(self : TrackEventInit) -> JsValue = "%identity"

///|
pub(open) trait TTrackEventInitTrackArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TTrackEventInitTrackArg for VideoTrack with to_js(self : VideoTrack) -> JsValue = "%identity"

///|
pub impl TTrackEventInitTrackArg for AudioTrack with to_js(self : AudioTrack) -> JsValue = "%identity"

///|
pub impl TTrackEventInitTrackArg for TextTrack with to_js(self : TextTrack) -> JsValue = "%identity"

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
pub fn TrackEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  track? : &TTrackEventInitTrackArg = JsValue::null(),
) -> TrackEventInit {
  track_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    track.to_js(),
  )
}

///|
extern "js" fn track_event_init_empty_ffi() -> TrackEventInit = "() => {}"

///|
pub fn TrackEventInit::empty() -> TrackEventInit {
  track_event_init_empty_ffi()
}
