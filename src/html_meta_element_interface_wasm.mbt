fn html_meta_element_new_ffi() -> HTMLMetaElement = "webapi_HTMLMetaElement" "new"

fn html_meta_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLMetaElement" "get_name"

///|
fn html_meta_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_meta_element_name_ffi_wasm(obj))
}

fn html_meta_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLMetaElement" "set_name"

fn html_meta_element_http_equiv_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLMetaElement" "get_httpEquiv"

///|
fn html_meta_element_http_equiv_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_meta_element_http_equiv_ffi_wasm(obj))
}

fn html_meta_element_set_http_equiv_ffi(obj: JsValue, http_equiv: JsValue) -> Unit = "webapi_HTMLMetaElement" "set_httpEquiv"

fn html_meta_element_content_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLMetaElement" "get_content"

///|
fn html_meta_element_content_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_meta_element_content_ffi_wasm(obj))
}

fn html_meta_element_set_content_ffi(obj: JsValue, content: JsValue) -> Unit = "webapi_HTMLMetaElement" "set_content"

fn html_meta_element_media_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLMetaElement" "get_media"

///|
fn html_meta_element_media_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_meta_element_media_ffi_wasm(obj))
}

fn html_meta_element_set_media_ffi(obj: JsValue, media: JsValue) -> Unit = "webapi_HTMLMetaElement" "set_media"

fn html_meta_element_scheme_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLMetaElement" "get_scheme"

///|
fn html_meta_element_scheme_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_meta_element_scheme_ffi_wasm(obj))
}

fn html_meta_element_set_scheme_ffi(obj: JsValue, scheme: JsValue) -> Unit = "webapi_HTMLMetaElement" "set_scheme"