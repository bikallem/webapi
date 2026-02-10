extern "js" fn track_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> TrackEvent = "(type_, event_init_dict) => new TrackEvent(type_, event_init_dict)"

extern "js" fn track_event_track_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.track"

///|
fn track_event_track_ffi(obj: JsValue) -> TrackEventTrack {
  track_event_track_ffi_js(obj).unsafe_cast()
}