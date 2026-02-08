extern "js" fn audio_track_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.id"

extern "js" fn audio_track_kind_ffi(obj: JsValue) -> JsValue = "(obj) => obj.kind"

extern "js" fn audio_track_label_ffi(obj: JsValue) -> JsValue = "(obj) => obj.label"

extern "js" fn audio_track_language_ffi(obj: JsValue) -> JsValue = "(obj) => obj.language"

extern "js" fn audio_track_enabled_ffi(obj: JsValue) -> JsValue = "(obj) => obj.enabled"

extern "js" fn audio_track_set_enabled_ffi(obj: JsValue, enabled: JsValue) -> Unit = "(obj, enabled) => { obj.enabled = enabled; }"