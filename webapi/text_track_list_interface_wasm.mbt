///|
fn text_track_list_length_ffi(obj : JsValue) -> UInt = "webapi_TextTrackList" "get_length"

///|
fn text_track_list_get_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_TextTrackList" "get"

///|
fn text_track_list_get_track_by_id_ffi(obj : JsValue, id : JsValue) -> JsValue = "webapi_TextTrackList" "getTrackById"

///|
fn text_track_list_onchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TextTrackList" "get_onchange"

///|
fn text_track_list_onchange_ffi(obj : JsValue) -> EventHandler {
  text_track_list_onchange_ffi_wasm(obj).unsafe_cast()
}

///|
fn text_track_list_set_onchange_ffi(obj : JsValue, onchange : JsValue) -> Unit = "webapi_TextTrackList" "set_onchange"

///|
fn text_track_list_onaddtrack_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TextTrackList" "get_onaddtrack"

///|
fn text_track_list_onaddtrack_ffi(obj : JsValue) -> EventHandler {
  text_track_list_onaddtrack_ffi_wasm(obj).unsafe_cast()
}

///|
fn text_track_list_set_onaddtrack_ffi(
  obj : JsValue,
  onaddtrack : JsValue,
) -> Unit = "webapi_TextTrackList" "set_onaddtrack"

///|
fn text_track_list_onremovetrack_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TextTrackList" "get_onremovetrack"

///|
fn text_track_list_onremovetrack_ffi(obj : JsValue) -> EventHandler {
  text_track_list_onremovetrack_ffi_wasm(obj).unsafe_cast()
}

///|
fn text_track_list_set_onremovetrack_ffi(
  obj : JsValue,
  onremovetrack : JsValue,
) -> Unit = "webapi_TextTrackList" "set_onremovetrack"
