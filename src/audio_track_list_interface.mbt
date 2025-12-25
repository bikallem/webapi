// Do not edit. This file is generated.
// MoonBit type: AudioTrackList
// Specifications: html.idl

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
  length(self : Self) -> UInt = _
  get_track_by_id(self : Self, id : String) -> AudioTrack = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : EventHandler) -> Unit = _
  onaddtrack(self : Self) -> EventHandler = _
  set_onaddtrack(self : Self, onaddtrack : EventHandler) -> Unit = _
  onremovetrack(self : Self) -> EventHandler = _
  set_onremovetrack(self : Self, onremovetrack : EventHandler) -> Unit = _
}

///|
extern "js" fn audio_track_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TAudioTrackList with length(self : Self) -> UInt {
  audio_track_list_length_ffi(TJsValue::to_js(self))
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

///|
extern "js" fn audio_track_list_onchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onchange"

///|
impl TAudioTrackList with onchange(self : Self) -> EventHandler {
  audio_track_list_onchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn audio_track_list_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
impl TAudioTrackList with set_onchange(self : Self, onchange : EventHandler) -> Unit {
  audio_track_list_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onchange),
  )
}

///|
extern "js" fn audio_track_list_onaddtrack_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onaddtrack"

///|
impl TAudioTrackList with onaddtrack(self : Self) -> EventHandler {
  audio_track_list_onaddtrack_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn audio_track_list_set_onaddtrack_ffi(
  obj : JsValue,
  onaddtrack : JsValue,
) -> Unit = "(obj, onaddtrack) => { obj.onaddtrack = onaddtrack; }"

///|
impl TAudioTrackList with set_onaddtrack(self : Self, onaddtrack : EventHandler) -> Unit {
  audio_track_list_set_onaddtrack_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onaddtrack),
  )
}

///|
extern "js" fn audio_track_list_onremovetrack_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onremovetrack"

///|
impl TAudioTrackList with onremovetrack(self : Self) -> EventHandler {
  audio_track_list_onremovetrack_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn audio_track_list_set_onremovetrack_ffi(
  obj : JsValue,
  onremovetrack : JsValue,
) -> Unit = "(obj, onremovetrack) => { obj.onremovetrack = onremovetrack; }"

///|
impl TAudioTrackList with set_onremovetrack(
  self : Self,
  onremovetrack : EventHandler,
) -> Unit {
  audio_track_list_set_onremovetrack_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onremovetrack),
  )
}
