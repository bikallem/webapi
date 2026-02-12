///|
extern "js" fn video_track_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn video_track_list_length_ffi(obj : JsValue) -> UInt {
  video_track_list_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn video_track_list_get_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj[index]"

///|
extern "js" fn video_track_list_get_track_by_id_ffi(
  obj : JsValue,
  id : JsValue,
) -> JsValue = "(obj, id) => obj.getTrackById(id)"

///|
extern "js" fn video_track_list_selected_index_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.selectedIndex"

///|
fn video_track_list_selected_index_ffi(obj : JsValue) -> Int {
  video_track_list_selected_index_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn video_track_list_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
fn video_track_list_onchange_ffi(obj : JsValue) -> EventHandlerNonNull {
  video_track_list_onchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn video_track_list_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
extern "js" fn video_track_list_onaddtrack_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onaddtrack"

///|
fn video_track_list_onaddtrack_ffi(obj : JsValue) -> EventHandlerNonNull {
  video_track_list_onaddtrack_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn video_track_list_set_onaddtrack_ffi(
  obj : JsValue,
  onaddtrack : JsValue,
) -> Unit = "(obj, onaddtrack) => { obj.onaddtrack = onaddtrack; }"

///|
extern "js" fn video_track_list_onremovetrack_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onremovetrack"

///|
fn video_track_list_onremovetrack_ffi(obj : JsValue) -> EventHandlerNonNull {
  video_track_list_onremovetrack_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn video_track_list_set_onremovetrack_ffi(
  obj : JsValue,
  onremovetrack : JsValue,
) -> Unit = "(obj, onremovetrack) => { obj.onremovetrack = onremovetrack; }"
