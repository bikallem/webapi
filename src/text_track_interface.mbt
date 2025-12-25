// Do not edit. This file is generated.
// MoonBit type: TextTrack
// Specifications: html.idl

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
  kind(self : Self) -> TextTrackKind = _
  label(self : Self) -> String = _
  language(self : Self) -> String = _
  id(self : Self) -> String = _
  in_band_metadata_track_dispatch_type(self : Self) -> String = _
  mode(self : Self) -> TextTrackMode = _
  set_mode(self : Self, mode : TextTrackMode) -> Unit = _
  cues(self : Self) -> TextTrackCueList = _
  active_cues(self : Self) -> TextTrackCueList = _
  add_cue(self : Self, cue : &TTextTrackCue) -> Unit = _
  remove_cue(self : Self, cue : &TTextTrackCue) -> Unit = _
  oncuechange(self : Self) -> EventHandler = _
  set_oncuechange(self : Self, oncuechange : EventHandler) -> Unit = _
}

///|
extern "js" fn text_track_kind_ffi(obj : JsValue) -> TextTrackKind = "(obj) => obj.kind"

///|
impl TTextTrack with kind(self : Self) -> TextTrackKind {
  text_track_kind_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_label_ffi(obj : JsValue) -> String = "(obj) => obj.label"

///|
impl TTextTrack with label(self : Self) -> String {
  text_track_label_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_language_ffi(obj : JsValue) -> String = "(obj) => obj.language"

///|
impl TTextTrack with language(self : Self) -> String {
  text_track_language_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_id_ffi(obj : JsValue) -> String = "(obj) => obj.id"

///|
impl TTextTrack with id(self : Self) -> String {
  text_track_id_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_in_band_metadata_track_dispatch_type_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.inBandMetadataTrackDispatchType"

///|
impl TTextTrack with in_band_metadata_track_dispatch_type(self : Self) -> String {
  text_track_in_band_metadata_track_dispatch_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_mode_ffi(obj : JsValue) -> TextTrackMode = "(obj) => obj.mode"

///|
impl TTextTrack with mode(self : Self) -> TextTrackMode {
  text_track_mode_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_set_mode_ffi(obj : JsValue, mode : JsValue) -> Unit = "(obj, mode) => { obj.mode = mode; }"

///|
impl TTextTrack with set_mode(self : Self, mode : TextTrackMode) -> Unit {
  text_track_set_mode_ffi(TJsValue::to_js(self), TJsValue::to_js(mode))
}

///|
extern "js" fn text_track_cues_ffi(obj : JsValue) -> TextTrackCueList = "(obj) => obj.cues"

///|
impl TTextTrack with cues(self : Self) -> TextTrackCueList {
  text_track_cues_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_active_cues_ffi(obj : JsValue) -> TextTrackCueList = "(obj) => obj.activeCues"

///|
impl TTextTrack with active_cues(self : Self) -> TextTrackCueList {
  text_track_active_cues_ffi(TJsValue::to_js(self))
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

///|
extern "js" fn text_track_oncuechange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncuechange"

///|
impl TTextTrack with oncuechange(self : Self) -> EventHandler {
  text_track_oncuechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

///|
impl TTextTrack with set_oncuechange(self : Self, oncuechange : EventHandler) -> Unit {
  text_track_set_oncuechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncuechange),
  )
}
