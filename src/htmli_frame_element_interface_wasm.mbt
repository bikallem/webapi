///|
fn htmli_frame_element_new_ffi() -> HTMLIFrameElement = "webapi_HTMLIFrameElement" "new"

///|
fn htmli_frame_element_src_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_src"

///|
fn htmli_frame_element_src_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_src_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_src_ffi(obj : JsValue, src : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_src"

///|
fn htmli_frame_element_srcdoc_ffi(obj : JsValue) -> HTMLIFrameElementSrcdoc = "webapi_HTMLIFrameElement" "get_srcdoc"

///|
fn htmli_frame_element_set_srcdoc_ffi(obj : JsValue, srcdoc : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_srcdoc"

///|
fn htmli_frame_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_name"

///|
fn htmli_frame_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_name_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_name"

///|
fn htmli_frame_element_sandbox_ffi(obj : JsValue) -> DOMTokenList = "webapi_HTMLIFrameElement" "get_sandbox"

///|
fn htmli_frame_element_allow_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_allow"

///|
fn htmli_frame_element_allow_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_allow_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_allow_ffi(obj : JsValue, allow : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_allow"

///|
fn htmli_frame_element_allow_fullscreen_ffi(obj : JsValue) -> Bool = "webapi_HTMLIFrameElement" "get_allowFullscreen"

///|
fn htmli_frame_element_set_allow_fullscreen_ffi(
  obj : JsValue,
  allow_fullscreen : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_allowFullscreen"

///|
fn htmli_frame_element_width_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_width"

///|
fn htmli_frame_element_width_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_width_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_width"

///|
fn htmli_frame_element_height_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_height"

///|
fn htmli_frame_element_height_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_height_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_height"

///|
fn htmli_frame_element_referrer_policy_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_referrerPolicy"

///|
fn htmli_frame_element_referrer_policy_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_referrer_policy_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_referrerPolicy"

///|
fn htmli_frame_element_loading_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_loading"

///|
fn htmli_frame_element_loading_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_loading_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_loading_ffi(
  obj : JsValue,
  loading : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_loading"

///|
fn htmli_frame_element_content_document_ffi(obj : JsValue) -> Document = "webapi_HTMLIFrameElement" "get_contentDocument"

///|
fn htmli_frame_element_content_window_ffi(obj : JsValue) -> WindowProxy = "webapi_HTMLIFrameElement" "get_contentWindow"

///|
fn htmli_frame_element_get_svg_document_ffi(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "getSVGDocument"

///|
fn htmli_frame_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_align"

///|
fn htmli_frame_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_align_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_align"

///|
fn htmli_frame_element_scrolling_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_scrolling"

///|
fn htmli_frame_element_scrolling_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_scrolling_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_scrolling_ffi(
  obj : JsValue,
  scrolling : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_scrolling"

///|
fn htmli_frame_element_frame_border_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_frameBorder"

///|
fn htmli_frame_element_frame_border_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_frame_border_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_frame_border_ffi(
  obj : JsValue,
  frame_border : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_frameBorder"

///|
fn htmli_frame_element_long_desc_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_longDesc"

///|
fn htmli_frame_element_long_desc_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_long_desc_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_long_desc_ffi(
  obj : JsValue,
  long_desc : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_longDesc"

///|
fn htmli_frame_element_margin_height_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_marginHeight"

///|
fn htmli_frame_element_margin_height_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_margin_height_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_margin_height_ffi(
  obj : JsValue,
  margin_height : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_marginHeight"

///|
fn htmli_frame_element_margin_width_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_marginWidth"

///|
fn htmli_frame_element_margin_width_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_margin_width_ffi_wasm(obj))
}

///|
fn htmli_frame_element_set_margin_width_ffi(
  obj : JsValue,
  margin_width : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_marginWidth"
