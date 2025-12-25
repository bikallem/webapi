// Do not edit. This file is generated.
// MoonBit type: TrackEvent
// Specifications: html.idl

///|
#external
pub type TrackEvent

///|
pub impl TJsValue for TrackEvent with to_js(self : TrackEvent) -> JsValue = "%identity"

///|
pub fn[T : TTrackEvent] TrackEvent::into(self : TrackEvent) -> T = "%identity"

///|
pub impl TTrackEvent for TrackEvent

///|
pub impl TEvent for TrackEvent

///|
extern "js" fn track_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> TrackEvent = "(type_, event_init_dict) => new TrackEvent(type_, event_init_dict)"

///|
pub fn TrackEvent::new(
  type_ : String,
  event_init_dict? : TrackEventInit = TrackEventInit::empty(),
) -> TrackEvent {
  track_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
#external
pub type TrackEventTrack

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
pub trait TTrackEvent: TEvent {
  track(self : Self) -> TrackEventTrack = _
}

///|
extern "js" fn track_event_track_ffi(obj : JsValue) -> TrackEventTrack = "(obj) => obj.track"

///|
impl TTrackEvent with track(self : Self) -> TrackEventTrack {
  track_event_track_ffi(TJsValue::to_js(self))
}
