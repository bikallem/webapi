///|
#external
pub type TextTrack

///|
pub impl TJsValue for TextTrack with to_js(self : TextTrack) -> JsValue = "%identity"

///|
pub fn[T : TTextTrack] TextTrack::into(self : TextTrack) -> T = "%identity"

///|
pub impl TTextTrack for TextTrack

///|
pub impl TEventTarget for TextTrack

///|
pub trait TTextTrack: TEventTarget {
  add_cue(self : Self, cue : &TTextTrackCue) -> Unit = _
  remove_cue(self : Self, cue : &TTextTrackCue) -> Unit = _
}

///|
extern "js" fn text_track_add_cue_ffi(obj : JsValue, cue : JsValue) -> Unit = "(obj, cue) => obj.addCue(obj, cue)"

///|
impl TTextTrack with add_cue(self : Self, cue : &TTextTrackCue) -> Unit {
  text_track_add_cue_ffi(TJsValue::to_js(self), TJsValue::to_js(cue))
}

///|
extern "js" fn text_track_remove_cue_ffi(obj : JsValue, cue : JsValue) -> Unit = "(obj, cue) => obj.removeCue(obj, cue)"

///|
impl TTextTrack with remove_cue(self : Self, cue : &TTextTrackCue) -> Unit {
  text_track_remove_cue_ffi(TJsValue::to_js(self), TJsValue::to_js(cue))
}
