///|
#external
pub type AudioTrackList

///|
pub impl TJsValue for AudioTrackList with to_js(self : AudioTrackList) -> JsValue = "%identity"

///|
pub fn[T : TAudioTrackList] AudioTrackList::into(self : AudioTrackList) -> T = "%identity"

///|
pub impl TAudioTrackList for AudioTrackList

///|
pub impl TEventTarget for AudioTrackList

///|
pub trait TAudioTrackList: TEventTarget {
  get_track_by_id(self : Self, id : String) -> AudioTrack = _
}

///|
extern "js" fn audio_track_list_get_track_by_id_ffi(
  obj : JsValue,
  id : JsValue,
) -> AudioTrack = "(obj, id) => obj.getTrackById(obj, id)"

///|
impl TAudioTrackList with get_track_by_id(self : Self, id : String) -> AudioTrack {
  audio_track_list_get_track_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  )
}
