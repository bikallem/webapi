///|
fn video_track_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VideoTrack" "get_id"

///|
fn video_track_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(video_track_id_ffi_wasm(obj))
}

///|
fn video_track_kind_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VideoTrack" "get_kind"

///|
fn video_track_kind_ffi(obj : JsValue) -> String {
  jsvalue_to_string(video_track_kind_ffi_wasm(obj))
}

///|
fn video_track_label_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VideoTrack" "get_label"

///|
fn video_track_label_ffi(obj : JsValue) -> String {
  jsvalue_to_string(video_track_label_ffi_wasm(obj))
}

///|
fn video_track_language_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VideoTrack" "get_language"

///|
fn video_track_language_ffi(obj : JsValue) -> String {
  jsvalue_to_string(video_track_language_ffi_wasm(obj))
}

///|
fn video_track_selected_ffi(obj : JsValue) -> Bool = "webapi_VideoTrack" "get_selected"

///|
fn video_track_set_selected_ffi(obj : JsValue, selected : JsValue) -> Unit = "webapi_VideoTrack" "set_selected"
