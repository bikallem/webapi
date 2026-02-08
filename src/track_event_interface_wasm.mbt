///|
fn track_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> TrackEvent = "webapi_TrackEvent" "new"

///|
fn track_event_track_ffi(obj : JsValue) -> JsValue = "webapi_TrackEvent" "get_track"
