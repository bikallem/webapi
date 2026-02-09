// Do not edit. This file is generated.
// MoonBit type: TrackEventInit
// Specifications: dom.idl, html.idl

///|
/// [TrackEventInit](https://developer.mozilla.org/en-US/docs/Web/API/TrackEventInit)
#external
pub type TrackEventInit

///|
pub impl TJsValue for TrackEventInit with to_js(self : TrackEventInit) -> JsValue = "%identity"

///|
pub(open) trait TTrackEventInitNewTrack {
  to_js(self : Self) -> JsValue
}

///|
pub impl TTrackEventInitNewTrack for VideoTrack with to_js(self : VideoTrack) -> JsValue = "%identity"

///|
pub impl TTrackEventInitNewTrack for AudioTrack with to_js(self : AudioTrack) -> JsValue = "%identity"

///|
pub impl TTrackEventInitNewTrack for TextTrack with to_js(self : TextTrack) -> JsValue = "%identity"

///|
pub fn TrackEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  track? : &TTrackEventInitNewTrack = JsValue::null(),
) -> TrackEventInit {
  track_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    track.to_js(),
  )
}

///|
pub fn TrackEventInit::empty() -> TrackEventInit {
  track_event_init_empty_ffi()
}
