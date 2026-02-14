// Do not edit. This file is generated.
// MoonBit type: TrackEvent
// Specifications: html.idl

///|
/// [TrackEvent](https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent)
#external
pub type TrackEvent

///|
pub impl TJsValue for TrackEvent with to_js(self : TrackEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for TrackEvent with from_js_any(value : JsAny) -> TrackEvent = "%identity"

///|
pub fn[T : TTrackEvent] TrackEvent::into(self : TrackEvent) -> T = "%identity"

///|
pub impl TTrackEvent for TrackEvent

///|
pub impl TEvent for TrackEvent

///|
pub fn TrackEvent::new(
  type_ : String,
  event_init_dict? : TrackEventInit = TrackEventInit::empty(),
) -> TrackEvent {
  track_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
/// [TrackEventTrack](https://developer.mozilla.org/en-US/docs/Web/API/TrackEventTrack)
#external
pub type TrackEventTrack

///|
pub impl TJsValue for TrackEventTrack with to_js(self : TrackEventTrack) -> JsValue = "%identity"

///|
pub impl FromJsAny for TrackEventTrack with from_js_any(value : JsAny) -> TrackEventTrack = "%identity"

///|
pub fn[T : TTrackEventTrack] TrackEventTrack::into(self : TrackEventTrack) -> T = "%identity"

///|
pub impl TTrackEventTrack for TrackEventTrack with to_js(self : TrackEventTrack) -> JsValue = "%identity"

///|
pub(open) trait TTrackEventTrack {
  to_js(self : Self) -> JsValue
}

///|
pub impl TTrackEventTrack for VideoTrack with to_js(self : VideoTrack) -> JsValue = "%identity"

///|
pub impl TTrackEventTrack for AudioTrack with to_js(self : AudioTrack) -> JsValue = "%identity"

///|
pub impl TTrackEventTrack for TextTrack with to_js(self : TextTrack) -> JsValue = "%identity"

///|
/// [TrackEvent](https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent) interface.
pub trait TTrackEvent: TEvent {
  track(self : Self) -> TrackEventTrack = _
}

///|
/// [TrackEvent.track](https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent/track)
impl TTrackEvent with track(self : Self) -> TrackEventTrack {
  track_event_track_ffi(TJsValue::to_js(self))
}
