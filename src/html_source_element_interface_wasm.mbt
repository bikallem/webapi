///|
fn html_source_element_new_ffi() -> HTMLSourceElement = "webapi_HTMLSourceElement" "new"

///|
fn html_source_element_src_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLSourceElement" "get_src"

///|
fn html_source_element_src_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_source_element_src_ffi_wasm(obj))
}

///|
fn html_source_element_set_src_ffi(obj : JsValue, src : JsValue) -> Unit = "webapi_HTMLSourceElement" "set_src"

///|
fn html_source_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLSourceElement" "get_type"

///|
fn html_source_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_source_element_type_ffi_wasm(obj))
}

///|
fn html_source_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_HTMLSourceElement" "set_type"

///|
fn html_source_element_srcset_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLSourceElement" "get_srcset"

///|
fn html_source_element_srcset_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_source_element_srcset_ffi_wasm(obj))
}

///|
fn html_source_element_set_srcset_ffi(obj : JsValue, srcset : JsValue) -> Unit = "webapi_HTMLSourceElement" "set_srcset"

///|
fn html_source_element_sizes_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLSourceElement" "get_sizes"

///|
fn html_source_element_sizes_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_source_element_sizes_ffi_wasm(obj))
}

///|
fn html_source_element_set_sizes_ffi(obj : JsValue, sizes : JsValue) -> Unit = "webapi_HTMLSourceElement" "set_sizes"

///|
fn html_source_element_media_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLSourceElement" "get_media"

///|
fn html_source_element_media_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_source_element_media_ffi_wasm(obj))
}

///|
fn html_source_element_set_media_ffi(obj : JsValue, media : JsValue) -> Unit = "webapi_HTMLSourceElement" "set_media"

///|
fn html_source_element_width_ffi(obj : JsValue) -> UInt = "webapi_HTMLSourceElement" "get_width"

///|
fn html_source_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLSourceElement" "set_width"

///|
fn html_source_element_height_ffi(obj : JsValue) -> UInt = "webapi_HTMLSourceElement" "get_height"

///|
fn html_source_element_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "webapi_HTMLSourceElement" "set_height"
