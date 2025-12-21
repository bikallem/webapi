///|
#external
pub type VideoTrackList

///|
pub impl TJsValue for VideoTrackList with to_js(self : VideoTrackList) -> JsValue = "%identity"

///|
pub fn[T : TVideoTrackList] VideoTrackList::into(self : VideoTrackList) -> T = "%identity"

///|
pub impl TVideoTrackList for VideoTrackList

///|
pub impl TEventTarget for VideoTrackList

///|
pub trait TVideoTrackList: TEventTarget {
  get_track_by_id(self : Self, id : String) -> VideoTrack = _
}

///|
extern "js" fn video_track_list_get_track_by_id_ffi(
  obj : JsValue,
  id : JsValue,
) -> VideoTrack = "(obj, id) => obj.getTrackById(obj, id)"

///|
impl TVideoTrackList with get_track_by_id(self : Self, id : String) -> VideoTrack {
  video_track_list_get_track_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  )
}
