// Do not edit. This file is generated.
// MoonBit type: VideoTrack
// Specifications: html.idl

///|
/// [VideoTrack](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack)
#external
pub type VideoTrack

///|
pub impl TJsValue for VideoTrack with to_js(self : VideoTrack) -> JsValue = "%identity"

///|
pub fn[T : TVideoTrack] VideoTrack::into(self : VideoTrack) -> T = "%identity"

///|
pub impl TVideoTrack for VideoTrack

///|
/// [VideoTrack](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack) interface.
pub trait TVideoTrack: TJsValue {
  id(self : Self) -> String = _
  kind(self : Self) -> String = _
  label(self : Self) -> String = _
  language(self : Self) -> String = _
  selected(self : Self) -> Bool = _
  set_selected(self : Self, selected : Bool) -> Unit = _
}

///|
/// [VideoTrack.id](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack/id)
impl TVideoTrack with id(self : Self) -> String {
  video_track_id_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrack.kind](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack/kind)
impl TVideoTrack with kind(self : Self) -> String {
  video_track_kind_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrack.label](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack/label)
impl TVideoTrack with label(self : Self) -> String {
  video_track_label_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrack.language](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack/language)
impl TVideoTrack with language(self : Self) -> String {
  video_track_language_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrack.selected](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack/selected)
impl TVideoTrack with selected(self : Self) -> Bool {
  video_track_selected_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrack.selected](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack/selected)
impl TVideoTrack with set_selected(self : Self, selected : Bool) -> Unit {
  video_track_set_selected_ffi(TJsValue::to_js(self), TJsValue::to_js(selected))
}
