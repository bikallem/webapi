///|
fn audio_track_list_length_ffi(obj : JsValue) -> UInt = "webapi_AudioTrackList" "get_length"

///|
fn audio_track_list_get_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_AudioTrackList" "get"

///|
fn audio_track_list_get_track_by_id_ffi(obj : JsValue, id : JsValue) -> JsValue = "webapi_AudioTrackList" "getTrackById"

///|
fn audio_track_list_onchange_ffi(obj : JsValue) -> EventHandler = "webapi_AudioTrackList" "get_onchange"

///|
fn audio_track_list_set_onchange_ffi(obj : JsValue, onchange : JsValue) -> Unit = "webapi_AudioTrackList" "set_onchange"

///|
fn audio_track_list_onaddtrack_ffi(obj : JsValue) -> EventHandler = "webapi_AudioTrackList" "get_onaddtrack"

///|
fn audio_track_list_set_onaddtrack_ffi(
  obj : JsValue,
  onaddtrack : JsValue,
) -> Unit = "webapi_AudioTrackList" "set_onaddtrack"

///|
fn audio_track_list_onremovetrack_ffi(obj : JsValue) -> EventHandler = "webapi_AudioTrackList" "get_onremovetrack"

///|
fn audio_track_list_set_onremovetrack_ffi(
  obj : JsValue,
  onremovetrack : JsValue,
) -> Unit = "webapi_AudioTrackList" "set_onremovetrack"
