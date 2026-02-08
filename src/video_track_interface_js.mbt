///|
extern "js" fn video_track_id_ffi(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
extern "js" fn video_track_kind_ffi(obj : JsValue) -> JsValue = "(obj) => obj.kind"

///|
extern "js" fn video_track_label_ffi(obj : JsValue) -> JsValue = "(obj) => obj.label"

///|
extern "js" fn video_track_language_ffi(obj : JsValue) -> JsValue = "(obj) => obj.language"

///|
extern "js" fn video_track_selected_ffi(obj : JsValue) -> JsValue = "(obj) => obj.selected"

///|
extern "js" fn video_track_set_selected_ffi(
  obj : JsValue,
  selected : JsValue,
) -> Unit = "(obj, selected) => { obj.selected = selected; }"
