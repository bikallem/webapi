// Do not edit. This file is generated.
// MoonBit type: AudioTrackList
// Specifications: html.idl

///|
/// [AudioTrackList](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList)
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
/// [AudioTrackList](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList) interface.
pub trait TAudioTrackList: TEventTarget {
  length(self : Self) -> UInt = _
  get_track_by_id(self : Self, id : String) -> AudioTrack? = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : EventHandler) -> Unit = _
  onaddtrack(self : Self) -> EventHandler = _
  set_onaddtrack(self : Self, onaddtrack : EventHandler) -> Unit = _
  onremovetrack(self : Self) -> EventHandler = _
  set_onremovetrack(self : Self, onremovetrack : EventHandler) -> Unit = _
}

///|
/// [AudioTrackList.length](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/length)
impl TAudioTrackList with length(self : Self) -> UInt {
  audio_track_list_length_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [AudioTrackList.getTrackById](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/getTrackById)
impl TAudioTrackList with get_track_by_id(self : Self, id : String) -> AudioTrack? {
  let result = audio_track_list_get_track_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [AudioTrackList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/onchange)
impl TAudioTrackList with onchange(self : Self) -> EventHandler {
  audio_track_list_onchange_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [AudioTrackList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/onchange)
impl TAudioTrackList with set_onchange(self : Self, onchange : EventHandler) -> Unit {
  audio_track_list_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onchange),
  )
}

///|
/// [AudioTrackList.onaddtrack](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/onaddtrack)
impl TAudioTrackList with onaddtrack(self : Self) -> EventHandler {
  audio_track_list_onaddtrack_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [AudioTrackList.onaddtrack](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/onaddtrack)
impl TAudioTrackList with set_onaddtrack(self : Self, onaddtrack : EventHandler) -> Unit {
  audio_track_list_set_onaddtrack_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onaddtrack),
  )
}

///|
/// [AudioTrackList.onremovetrack](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/onremovetrack)
impl TAudioTrackList with onremovetrack(self : Self) -> EventHandler {
  audio_track_list_onremovetrack_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [AudioTrackList.onremovetrack](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/onremovetrack)
impl TAudioTrackList with set_onremovetrack(
  self : Self,
  onremovetrack : EventHandler,
) -> Unit {
  audio_track_list_set_onremovetrack_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onremovetrack),
  )
}
