fn html_frame_element_new_ffi() -> HTMLFrameElement = "webapi_HTMLFrameElement" "new"

fn html_frame_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_name"

///|
fn html_frame_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_frame_element_name_ffi_wasm(obj))
}

fn html_frame_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLFrameElement" "set_name"

fn html_frame_element_scrolling_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_scrolling"

///|
fn html_frame_element_scrolling_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_frame_element_scrolling_ffi_wasm(obj))
}

fn html_frame_element_set_scrolling_ffi(obj: JsValue, scrolling: JsValue) -> Unit = "webapi_HTMLFrameElement" "set_scrolling"

fn html_frame_element_src_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_src"

///|
fn html_frame_element_src_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_frame_element_src_ffi_wasm(obj))
}

fn html_frame_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "webapi_HTMLFrameElement" "set_src"

fn html_frame_element_frame_border_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_frameBorder"

///|
fn html_frame_element_frame_border_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_frame_element_frame_border_ffi_wasm(obj))
}

fn html_frame_element_set_frame_border_ffi(obj: JsValue, frame_border: JsValue) -> Unit = "webapi_HTMLFrameElement" "set_frameBorder"

fn html_frame_element_long_desc_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_longDesc"

///|
fn html_frame_element_long_desc_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_frame_element_long_desc_ffi_wasm(obj))
}

fn html_frame_element_set_long_desc_ffi(obj: JsValue, long_desc: JsValue) -> Unit = "webapi_HTMLFrameElement" "set_longDesc"

fn html_frame_element_no_resize_ffi(obj: JsValue) -> Bool = "webapi_HTMLFrameElement" "get_noResize"

fn html_frame_element_set_no_resize_ffi(obj: JsValue, no_resize: JsValue) -> Unit = "webapi_HTMLFrameElement" "set_noResize"

fn html_frame_element_content_document_ffi(obj: JsValue) -> Document = "webapi_HTMLFrameElement" "get_contentDocument"

fn html_frame_element_content_window_ffi(obj: JsValue) -> WindowProxy = "webapi_HTMLFrameElement" "get_contentWindow"

fn html_frame_element_margin_height_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_marginHeight"

///|
fn html_frame_element_margin_height_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_frame_element_margin_height_ffi_wasm(obj))
}

fn html_frame_element_set_margin_height_ffi(obj: JsValue, margin_height: JsValue) -> Unit = "webapi_HTMLFrameElement" "set_marginHeight"

fn html_frame_element_margin_width_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLFrameElement" "get_marginWidth"

///|
fn html_frame_element_margin_width_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_frame_element_margin_width_ffi_wasm(obj))
}

fn html_frame_element_set_margin_width_ffi(obj: JsValue, margin_width: JsValue) -> Unit = "webapi_HTMLFrameElement" "set_marginWidth"