extern "js" fn html_track_element_new_ffi() -> HTMLTrackElement = "() => new HTMLTrackElement()"

extern "js" fn html_track_element_kind_ffi(obj: JsValue) -> JsValue = "(obj) => obj.kind"

extern "js" fn html_track_element_set_kind_ffi(obj: JsValue, kind: JsValue) -> Unit = "(obj, kind) => { obj.kind = kind; }"

extern "js" fn html_track_element_src_ffi(obj: JsValue) -> JsValue = "(obj) => obj.src"

extern "js" fn html_track_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "(obj, src) => { obj.src = src; }"

extern "js" fn html_track_element_srclang_ffi(obj: JsValue) -> JsValue = "(obj) => obj.srclang"

extern "js" fn html_track_element_set_srclang_ffi(obj: JsValue, srclang: JsValue) -> Unit = "(obj, srclang) => { obj.srclang = srclang; }"

extern "js" fn html_track_element_label_ffi(obj: JsValue) -> JsValue = "(obj) => obj.label"

extern "js" fn html_track_element_set_label_ffi(obj: JsValue, label: JsValue) -> Unit = "(obj, label) => { obj.label = label; }"

extern "js" fn html_track_element_default_ffi(obj: JsValue) -> JsValue = "(obj) => obj.default"

extern "js" fn html_track_element_set_default_ffi(obj: JsValue, default: JsValue) -> Unit = "(obj, default) => { obj.default = default; }"

extern "js" fn html_track_element_ready_state_ffi(obj: JsValue) -> JsValue = "(obj) => obj.readyState"

extern "js" fn html_track_element_track_ffi(obj: JsValue) -> JsValue = "(obj) => obj.track"