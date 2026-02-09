///|
extern "js" fn audio_track_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
fn audio_track_id_ffi(obj : JsValue) -> String {
  audio_track_id_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn audio_track_kind_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.kind"

///|
fn audio_track_kind_ffi(obj : JsValue) -> String {
  audio_track_kind_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn audio_track_label_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.label"

///|
fn audio_track_label_ffi(obj : JsValue) -> String {
  audio_track_label_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn audio_track_language_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.language"

///|
fn audio_track_language_ffi(obj : JsValue) -> String {
  audio_track_language_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn audio_track_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.enabled"

///|
fn audio_track_enabled_ffi(obj : JsValue) -> Bool {
  audio_track_enabled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn audio_track_set_enabled_ffi(
  obj : JsValue,
  enabled : JsValue,
) -> Unit = "(obj, enabled) => { obj.enabled = enabled; }"
