///|
fn text_track_cue_track_ffi(obj : JsValue) -> JsValue = "webapi_TextTrackCue" "get_track"

///|
fn text_track_cue_id_ffi(obj : JsValue) -> JsValue = "webapi_TextTrackCue" "get_id"

///|
fn text_track_cue_set_id_ffi(obj : JsValue, id : JsValue) -> Unit = "webapi_TextTrackCue" "set_id"

///|
fn text_track_cue_start_time_ffi(obj : JsValue) -> JsValue = "webapi_TextTrackCue" "get_startTime"

///|
fn text_track_cue_set_start_time_ffi(
  obj : JsValue,
  start_time : JsValue,
) -> Unit = "webapi_TextTrackCue" "set_startTime"

///|
fn text_track_cue_end_time_ffi(obj : JsValue) -> JsValue = "webapi_TextTrackCue" "get_endTime"

///|
fn text_track_cue_set_end_time_ffi(obj : JsValue, end_time : JsValue) -> Unit = "webapi_TextTrackCue" "set_endTime"

///|
fn text_track_cue_pause_on_exit_ffi(obj : JsValue) -> JsValue = "webapi_TextTrackCue" "get_pauseOnExit"

///|
fn text_track_cue_set_pause_on_exit_ffi(
  obj : JsValue,
  pause_on_exit : JsValue,
) -> Unit = "webapi_TextTrackCue" "set_pauseOnExit"

///|
fn text_track_cue_onenter_ffi(obj : JsValue) -> JsValue = "webapi_TextTrackCue" "get_onenter"

///|
fn text_track_cue_set_onenter_ffi(obj : JsValue, onenter : JsValue) -> Unit = "webapi_TextTrackCue" "set_onenter"

///|
fn text_track_cue_onexit_ffi(obj : JsValue) -> JsValue = "webapi_TextTrackCue" "get_onexit"

///|
fn text_track_cue_set_onexit_ffi(obj : JsValue, onexit : JsValue) -> Unit = "webapi_TextTrackCue" "set_onexit"
