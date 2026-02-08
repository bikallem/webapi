extern "js" fn video_track_list_length_ffi(obj: JsValue) -> JsValue = "(obj) => obj.length"

extern "js" fn video_track_list_get_track_by_id_ffi(obj: JsValue, id: JsValue) -> JsValue = "(obj, id) => obj.getTrackById(id)"

extern "js" fn video_track_list_selected_index_ffi(obj: JsValue) -> JsValue = "(obj) => obj.selectedIndex"

extern "js" fn video_track_list_onchange_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onchange"

extern "js" fn video_track_list_set_onchange_ffi(obj: JsValue, onchange: JsValue) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

extern "js" fn video_track_list_onaddtrack_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onaddtrack"

extern "js" fn video_track_list_set_onaddtrack_ffi(obj: JsValue, onaddtrack: JsValue) -> Unit = "(obj, onaddtrack) => { obj.onaddtrack = onaddtrack; }"

extern "js" fn video_track_list_onremovetrack_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onremovetrack"

extern "js" fn video_track_list_set_onremovetrack_ffi(obj: JsValue, onremovetrack: JsValue) -> Unit = "(obj, onremovetrack) => { obj.onremovetrack = onremovetrack; }"