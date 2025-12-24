///|
#external
pub type VideoTrack

///|
pub impl TJsValue for VideoTrack with to_js(self : VideoTrack) -> JsValue = "%identity"

///|
pub fn[T : TVideoTrack] VideoTrack::into(self : VideoTrack) -> T = "%identity"

///|
pub impl TVideoTrack for VideoTrack

///|
pub trait TVideoTrack: TJsValue {
  id(self : Self) -> String = _
  kind(self : Self) -> String = _
  label(self : Self) -> String = _
  language(self : Self) -> String = _
  selected(self : Self) -> Bool = _
  set_selected(self : Self, selected : Bool) -> Unit = _
}

///|
extern "js" fn video_track_id_ffi(obj : JsValue) -> String = "(obj) => obj.id"

///|
impl TVideoTrack with id(self : Self) -> String {
  video_track_id_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn video_track_kind_ffi(obj : JsValue) -> String = "(obj) => obj.kind"

///|
impl TVideoTrack with kind(self : Self) -> String {
  video_track_kind_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn video_track_label_ffi(obj : JsValue) -> String = "(obj) => obj.label"

///|
impl TVideoTrack with label(self : Self) -> String {
  video_track_label_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn video_track_language_ffi(obj : JsValue) -> String = "(obj) => obj.language"

///|
impl TVideoTrack with language(self : Self) -> String {
  video_track_language_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn video_track_selected_ffi(obj : JsValue) -> Bool = "(obj) => obj.selected"

///|
impl TVideoTrack with selected(self : Self) -> Bool {
  video_track_selected_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn video_track_set_selected_ffi(
  obj : JsValue,
  selected : JsValue,
) -> Unit = "(obj, selected) => { obj.selected = selected; }"

///|
impl TVideoTrack with set_selected(self : Self, selected : Bool) -> Unit {
  video_track_set_selected_ffi(TJsValue::to_js(self), TJsValue::to_js(selected))
}
