// Do not edit. This file is generated.
// MoonBit type: TextTrackCue
// Specifications: html.idl

///|
#external
pub type TextTrackCue

///|
pub impl TJsValue for TextTrackCue with to_js(self : TextTrackCue) -> JsValue = "%identity"

///|
pub fn[T : TTextTrackCue] TextTrackCue::into(self : TextTrackCue) -> T = "%identity"

///|
pub impl TTextTrackCue for TextTrackCue

///|
pub impl TEventTarget for TextTrackCue

///|
pub trait TTextTrackCue: TEventTarget {
  track(self : Self) -> TextTrack = _
  id(self : Self) -> String = _
  set_id(self : Self, id : String) -> Unit = _
  start_time(self : Self) -> Double = _
  set_start_time(self : Self, start_time : Double) -> Unit = _
  end_time(self : Self) -> Double = _
  set_end_time(self : Self, end_time : Double) -> Unit = _
  pause_on_exit(self : Self) -> Bool = _
  set_pause_on_exit(self : Self, pause_on_exit : Bool) -> Unit = _
  onenter(self : Self) -> EventHandler = _
  set_onenter(self : Self, onenter : EventHandler) -> Unit = _
  onexit(self : Self) -> EventHandler = _
  set_onexit(self : Self, onexit : EventHandler) -> Unit = _
}

///|
extern "js" fn text_track_cue_track_ffi(obj : JsValue) -> TextTrack = "(obj) => obj.track"

///|
impl TTextTrackCue with track(self : Self) -> TextTrack {
  text_track_cue_track_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_cue_id_ffi(obj : JsValue) -> String = "(obj) => obj.id"

///|
impl TTextTrackCue with id(self : Self) -> String {
  text_track_cue_id_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_cue_set_id_ffi(obj : JsValue, id : JsValue) -> Unit = "(obj, id) => { obj.id = id; }"

///|
impl TTextTrackCue with set_id(self : Self, id : String) -> Unit {
  text_track_cue_set_id_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
}

///|
extern "js" fn text_track_cue_start_time_ffi(obj : JsValue) -> Double = "(obj) => obj.startTime"

///|
impl TTextTrackCue with start_time(self : Self) -> Double {
  text_track_cue_start_time_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_cue_set_start_time_ffi(
  obj : JsValue,
  start_time : JsValue,
) -> Unit = "(obj, startTime) => { obj.startTime = start_time; }"

///|
impl TTextTrackCue with set_start_time(self : Self, start_time : Double) -> Unit {
  text_track_cue_set_start_time_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(start_time),
  )
}

///|
extern "js" fn text_track_cue_end_time_ffi(obj : JsValue) -> Double = "(obj) => obj.endTime"

///|
impl TTextTrackCue with end_time(self : Self) -> Double {
  text_track_cue_end_time_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_cue_set_end_time_ffi(
  obj : JsValue,
  end_time : JsValue,
) -> Unit = "(obj, endTime) => { obj.endTime = end_time; }"

///|
impl TTextTrackCue with set_end_time(self : Self, end_time : Double) -> Unit {
  text_track_cue_set_end_time_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(end_time),
  )
}

///|
extern "js" fn text_track_cue_pause_on_exit_ffi(obj : JsValue) -> Bool = "(obj) => obj.pauseOnExit"

///|
impl TTextTrackCue with pause_on_exit(self : Self) -> Bool {
  text_track_cue_pause_on_exit_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_cue_set_pause_on_exit_ffi(
  obj : JsValue,
  pause_on_exit : JsValue,
) -> Unit = "(obj, pauseOnExit) => { obj.pauseOnExit = pause_on_exit; }"

///|
impl TTextTrackCue with set_pause_on_exit(self : Self, pause_on_exit : Bool) -> Unit {
  text_track_cue_set_pause_on_exit_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(pause_on_exit),
  )
}

///|
extern "js" fn text_track_cue_onenter_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onenter"

///|
impl TTextTrackCue with onenter(self : Self) -> EventHandler {
  text_track_cue_onenter_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_cue_set_onenter_ffi(
  obj : JsValue,
  onenter : JsValue,
) -> Unit = "(obj, onenter) => { obj.onenter = onenter; }"

///|
impl TTextTrackCue with set_onenter(self : Self, onenter : EventHandler) -> Unit {
  text_track_cue_set_onenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onenter),
  )
}

///|
extern "js" fn text_track_cue_onexit_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onexit"

///|
impl TTextTrackCue with onexit(self : Self) -> EventHandler {
  text_track_cue_onexit_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_cue_set_onexit_ffi(
  obj : JsValue,
  onexit : JsValue,
) -> Unit = "(obj, onexit) => { obj.onexit = onexit; }"

///|
impl TTextTrackCue with set_onexit(self : Self, onexit : EventHandler) -> Unit {
  text_track_cue_set_onexit_ffi(TJsValue::to_js(self), TJsValue::to_js(onexit))
}
