///|
fn text_track_cue_list_length_ffi(obj : JsValue) -> UInt = "webapi_TextTrackCueList" "get_length"

///|
fn text_track_cue_list_get_cue_by_id_ffi(
  obj : JsValue,
  id : JsValue,
) -> JsValue = "webapi_TextTrackCueList" "getCueById"
