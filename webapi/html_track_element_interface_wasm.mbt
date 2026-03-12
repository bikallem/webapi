///|
fn html_track_element_new_ffi() -> HTMLTrackElement = "webapi_HTMLTrackElement" "new"

///|
fn html_track_element_kind_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTrackElement" "get_kind"

///|
fn html_track_element_kind_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_track_element_kind_ffi_wasm(obj))
}

///|
fn html_track_element_set_kind_ffi(obj : JsValue, kind : JsValue) -> Unit = "webapi_HTMLTrackElement" "set_kind"

///|
fn html_track_element_src_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTrackElement" "get_src"

///|
fn html_track_element_src_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_track_element_src_ffi_wasm(obj))
}

///|
fn html_track_element_set_src_ffi(obj : JsValue, src : JsValue) -> Unit = "webapi_HTMLTrackElement" "set_src"

///|
fn html_track_element_srclang_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTrackElement" "get_srclang"

///|
fn html_track_element_srclang_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_track_element_srclang_ffi_wasm(obj))
}

///|
fn html_track_element_set_srclang_ffi(obj : JsValue, srclang : JsValue) -> Unit = "webapi_HTMLTrackElement" "set_srclang"

///|
fn html_track_element_label_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTrackElement" "get_label"

///|
fn html_track_element_label_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_track_element_label_ffi_wasm(obj))
}

///|
fn html_track_element_set_label_ffi(obj : JsValue, label : JsValue) -> Unit = "webapi_HTMLTrackElement" "set_label"

///|
fn html_track_element_default_ffi(obj : JsValue) -> Bool = "webapi_HTMLTrackElement" "get_default"

///|
fn html_track_element_set_default_ffi(obj : JsValue, default : JsValue) -> Unit = "webapi_HTMLTrackElement" "set_default"

///|
fn html_track_element_ready_state_ffi(obj : JsValue) -> UInt = "webapi_HTMLTrackElement" "get_readyState"

///|
fn html_track_element_track_ffi(obj : JsValue) -> TextTrack = "webapi_HTMLTrackElement" "get_track"
