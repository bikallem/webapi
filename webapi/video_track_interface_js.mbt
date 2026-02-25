///|
extern "js" fn video_track_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
fn video_track_id_ffi(obj : JsValue) -> String {
  video_track_id_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn video_track_kind_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.kind"

///|
fn video_track_kind_ffi(obj : JsValue) -> String {
  video_track_kind_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn video_track_label_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.label"

///|
fn video_track_label_ffi(obj : JsValue) -> String {
  video_track_label_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn video_track_language_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.language"

///|
fn video_track_language_ffi(obj : JsValue) -> String {
  video_track_language_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn video_track_selected_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.selected"

///|
fn video_track_selected_ffi(obj : JsValue) -> Bool {
  video_track_selected_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn video_track_set_selected_ffi(
  obj : JsValue,
  selected : JsValue,
) -> Unit = "(obj, selected) => { obj.selected = selected; }"
