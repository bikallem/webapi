///|
extern "js" fn text_track_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn text_track_list_length_ffi(obj : JsValue) -> UInt {
  text_track_list_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_list_get_track_by_id_ffi(
  obj : JsValue,
  id : JsValue,
) -> JsValue = "(obj, id) => obj.getTrackById(id)"

///|
extern "js" fn text_track_list_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
fn text_track_list_onchange_ffi(obj : JsValue) -> EventHandler {
  text_track_list_onchange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_list_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
extern "js" fn text_track_list_onaddtrack_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onaddtrack"

///|
fn text_track_list_onaddtrack_ffi(obj : JsValue) -> EventHandler {
  text_track_list_onaddtrack_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_list_set_onaddtrack_ffi(
  obj : JsValue,
  onaddtrack : JsValue,
) -> Unit = "(obj, onaddtrack) => { obj.onaddtrack = onaddtrack; }"

///|
extern "js" fn text_track_list_onremovetrack_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onremovetrack"

///|
fn text_track_list_onremovetrack_ffi(obj : JsValue) -> EventHandler {
  text_track_list_onremovetrack_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_list_set_onremovetrack_ffi(
  obj : JsValue,
  onremovetrack : JsValue,
) -> Unit = "(obj, onremovetrack) => { obj.onremovetrack = onremovetrack; }"
