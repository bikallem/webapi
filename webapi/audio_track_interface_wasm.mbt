///|
fn audio_track_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_AudioTrack" "get_id"

///|
fn audio_track_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(audio_track_id_ffi_wasm(obj))
}

///|
fn audio_track_kind_ffi_wasm(obj : JsValue) -> JsValue = "webapi_AudioTrack" "get_kind"

///|
fn audio_track_kind_ffi(obj : JsValue) -> String {
  jsvalue_to_string(audio_track_kind_ffi_wasm(obj))
}

///|
fn audio_track_label_ffi_wasm(obj : JsValue) -> JsValue = "webapi_AudioTrack" "get_label"

///|
fn audio_track_label_ffi(obj : JsValue) -> String {
  jsvalue_to_string(audio_track_label_ffi_wasm(obj))
}

///|
fn audio_track_language_ffi_wasm(obj : JsValue) -> JsValue = "webapi_AudioTrack" "get_language"

///|
fn audio_track_language_ffi(obj : JsValue) -> String {
  jsvalue_to_string(audio_track_language_ffi_wasm(obj))
}

///|
fn audio_track_enabled_ffi(obj : JsValue) -> Bool = "webapi_AudioTrack" "get_enabled"

///|
fn audio_track_set_enabled_ffi(obj : JsValue, enabled : JsValue) -> Unit = "webapi_AudioTrack" "set_enabled"
