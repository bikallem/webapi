// Auto-generated MoonBit bindings for TrackEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary TrackEventInit : EventInit {
//   (VideoTrack or AudioTrack or TextTrack)? track = null;
// };

///|
#external
pub type TrackEventInit

///|
pub impl TJsValue for TrackEventInit with to_js(self : TrackEventInit) -> JsValue = "%identity"

///|
fn track_event_init_ffi(track : JsValue) -> TrackEventInit = "webapi_TrackEventInit" "new"

///|
pub fn TrackEventInit::new(
  track? : JsValue
) -> TrackEventInit {
  let track_js = opt_to_js(track)
  track_event_init_ffi(track_js)
}

///|
pub fn TrackEventInit::empty() -> TrackEventInit = "webapi_Dictionary" "empty"