// Do not edit. This file is generated.
// MoonBit type: TextTrackCue
// Specifications: html.idl

///|
/// [TextTrackCue](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue)
#external
pub type TextTrackCue

///|
pub impl TJsValue for TextTrackCue with to_js(self : TextTrackCue) -> JsValue = "%identity"

///|
pub impl FromJsAny for TextTrackCue with from_js_any(value : JsAny) -> TextTrackCue = "%identity"

///|
pub fn[T : TTextTrackCue] TextTrackCue::into(self : TextTrackCue) -> T = "%identity"

///|
pub impl TTextTrackCue for TextTrackCue

///|
pub impl TEventTarget for TextTrackCue

///|
/// [TextTrackCue](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue) interface.
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
/// [TextTrackCue.track](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/track)
impl TTextTrackCue with track(self : Self) -> TextTrack {
  text_track_cue_track_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.id](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/id)
impl TTextTrackCue with id(self : Self) -> String {
  text_track_cue_id_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.id](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/id)
impl TTextTrackCue with set_id(self : Self, id : String) -> Unit {
  text_track_cue_set_id_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
}

///|
/// [TextTrackCue.startTime](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/startTime)
impl TTextTrackCue with start_time(self : Self) -> Double {
  text_track_cue_start_time_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.startTime](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/startTime)
impl TTextTrackCue with set_start_time(self : Self, start_time : Double) -> Unit {
  text_track_cue_set_start_time_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(start_time),
  )
}

///|
/// [TextTrackCue.endTime](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/endTime)
impl TTextTrackCue with end_time(self : Self) -> Double {
  text_track_cue_end_time_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.endTime](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/endTime)
impl TTextTrackCue with set_end_time(self : Self, end_time : Double) -> Unit {
  text_track_cue_set_end_time_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(end_time),
  )
}

///|
/// [TextTrackCue.pauseOnExit](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/pauseOnExit)
impl TTextTrackCue with pause_on_exit(self : Self) -> Bool {
  text_track_cue_pause_on_exit_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.pauseOnExit](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/pauseOnExit)
impl TTextTrackCue with set_pause_on_exit(self : Self, pause_on_exit : Bool) -> Unit {
  text_track_cue_set_pause_on_exit_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(pause_on_exit),
  )
}

///|
/// [TextTrackCue.onenter](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/onenter)
impl TTextTrackCue with onenter(self : Self) -> EventHandler {
  text_track_cue_onenter_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.onenter](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/onenter)
impl TTextTrackCue with set_onenter(self : Self, onenter : EventHandler) -> Unit {
  text_track_cue_set_onenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onenter),
  )
}

///|
/// [TextTrackCue.onexit](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/onexit)
impl TTextTrackCue with onexit(self : Self) -> EventHandler {
  text_track_cue_onexit_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.onexit](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/onexit)
impl TTextTrackCue with set_onexit(self : Self, onexit : EventHandler) -> Unit {
  text_track_cue_set_onexit_ffi(TJsValue::to_js(self), TJsValue::to_js(onexit))
}
