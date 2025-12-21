///|
#external
pub type TextTrackCueList

///|
pub impl TJsValue for TextTrackCueList with to_js(self : TextTrackCueList) -> JsValue = "%identity"

///|
pub fn[T : TTextTrackCueList] TextTrackCueList::into(
  self : TextTrackCueList,
) -> T = "%identity"

///|
pub impl TTextTrackCueList for TextTrackCueList

///|
pub trait TTextTrackCueList: TJsValue {
  get_cue_by_id(self : Self, id : String) -> TextTrackCue = _
}

///|
extern "js" fn text_track_cue_list_get_cue_by_id_ffi(
  obj : JsValue,
  id : JsValue,
) -> TextTrackCue = "(obj, id) => obj.getCueById(obj, id)"

///|
impl TTextTrackCueList with get_cue_by_id(self : Self, id : String) -> TextTrackCue {
  text_track_cue_list_get_cue_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  )
}
