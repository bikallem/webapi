///|
extern "js" fn text_track_cue_track_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.track"

///|
fn text_track_cue_track_ffi(obj : JsValue) -> TextTrack {
  text_track_cue_track_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_cue_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
fn text_track_cue_id_ffi(obj : JsValue) -> String {
  text_track_cue_id_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_cue_set_id_ffi(obj : JsValue, id : JsValue) -> Unit = "(obj, id) => { obj.id = id; }"

///|
extern "js" fn text_track_cue_start_time_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.startTime"

///|
fn text_track_cue_start_time_ffi(obj : JsValue) -> Double {
  text_track_cue_start_time_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_cue_set_start_time_ffi(
  obj : JsValue,
  start_time : JsValue,
) -> Unit = "(obj, startTime) => { obj.startTime = startTime; }"

///|
extern "js" fn text_track_cue_end_time_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.endTime"

///|
fn text_track_cue_end_time_ffi(obj : JsValue) -> Double {
  text_track_cue_end_time_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_cue_set_end_time_ffi(
  obj : JsValue,
  end_time : JsValue,
) -> Unit = "(obj, endTime) => { obj.endTime = endTime; }"

///|
extern "js" fn text_track_cue_pause_on_exit_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pauseOnExit"

///|
fn text_track_cue_pause_on_exit_ffi(obj : JsValue) -> Bool {
  text_track_cue_pause_on_exit_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_cue_set_pause_on_exit_ffi(
  obj : JsValue,
  pause_on_exit : JsValue,
) -> Unit = "(obj, pauseOnExit) => { obj.pauseOnExit = pauseOnExit; }"

///|
extern "js" fn text_track_cue_onenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onenter"

///|
fn text_track_cue_onenter_ffi(obj : JsValue) -> EventHandlerNonNull {
  text_track_cue_onenter_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_cue_set_onenter_ffi(
  obj : JsValue,
  onenter : JsValue,
) -> Unit = "(obj, onenter) => { obj.onenter = onenter; }"

///|
extern "js" fn text_track_cue_onexit_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onexit"

///|
fn text_track_cue_onexit_ffi(obj : JsValue) -> EventHandlerNonNull {
  text_track_cue_onexit_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_cue_set_onexit_ffi(
  obj : JsValue,
  onexit : JsValue,
) -> Unit = "(obj, onexit) => { obj.onexit = onexit; }"
