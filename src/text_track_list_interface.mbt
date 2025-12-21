///|
#external
pub type TextTrackList

///|
pub impl TJsValue for TextTrackList with to_js(self : TextTrackList) -> JsValue = "%identity"

///|
pub fn[T : TTextTrackList] TextTrackList::into(self : TextTrackList) -> T = "%identity"

///|
pub impl TTextTrackList for TextTrackList

///|
pub impl TEventTarget for TextTrackList

///|
pub trait TTextTrackList: TEventTarget {
  get_track_by_id(self : Self, id : String) -> TextTrack = _
}

///|
extern "js" fn text_track_list_get_track_by_id_ffi(
  obj : JsValue,
  id : JsValue,
) -> TextTrack = "(obj, id) => obj.getTrackById(obj, id)"

///|
impl TTextTrackList with get_track_by_id(self : Self, id : String) -> TextTrack {
  text_track_list_get_track_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  )
}
