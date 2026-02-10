fn video_track_list_length_ffi(obj: JsValue) -> UInt = "webapi_VideoTrackList" "get_length"

fn video_track_list_get_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_VideoTrackList" "get"

fn video_track_list_get_track_by_id_ffi(obj: JsValue, id: JsValue) -> JsValue = "webapi_VideoTrackList" "getTrackById"

fn video_track_list_selected_index_ffi(obj: JsValue) -> Int = "webapi_VideoTrackList" "get_selectedIndex"

fn video_track_list_onchange_ffi(obj: JsValue) -> EventHandler = "webapi_VideoTrackList" "get_onchange"

fn video_track_list_set_onchange_ffi(obj: JsValue, onchange: JsValue) -> Unit = "webapi_VideoTrackList" "set_onchange"

fn video_track_list_onaddtrack_ffi(obj: JsValue) -> EventHandler = "webapi_VideoTrackList" "get_onaddtrack"

fn video_track_list_set_onaddtrack_ffi(obj: JsValue, onaddtrack: JsValue) -> Unit = "webapi_VideoTrackList" "set_onaddtrack"

fn video_track_list_onremovetrack_ffi(obj: JsValue) -> EventHandler = "webapi_VideoTrackList" "get_onremovetrack"

fn video_track_list_set_onremovetrack_ffi(obj: JsValue, onremovetrack: JsValue) -> Unit = "webapi_VideoTrackList" "set_onremovetrack"