///|
fn html_embed_element_new_ffi() -> HTMLEmbedElement = "webapi_HTMLEmbedElement" "new"

///|
fn html_embed_element_src_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLEmbedElement" "get_src"

///|
fn html_embed_element_src_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_embed_element_src_ffi_wasm(obj))
}

///|
fn html_embed_element_set_src_ffi(obj : JsValue, src : JsValue) -> Unit = "webapi_HTMLEmbedElement" "set_src"

///|
fn html_embed_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLEmbedElement" "get_type"

///|
fn html_embed_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_embed_element_type_ffi_wasm(obj))
}

///|
fn html_embed_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_HTMLEmbedElement" "set_type"

///|
fn html_embed_element_width_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLEmbedElement" "get_width"

///|
fn html_embed_element_width_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_embed_element_width_ffi_wasm(obj))
}

///|
fn html_embed_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLEmbedElement" "set_width"

///|
fn html_embed_element_height_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLEmbedElement" "get_height"

///|
fn html_embed_element_height_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_embed_element_height_ffi_wasm(obj))
}

///|
fn html_embed_element_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "webapi_HTMLEmbedElement" "set_height"

///|
fn html_embed_element_get_svg_document_ffi(obj : JsValue) -> JsValue = "webapi_HTMLEmbedElement" "getSVGDocument"

///|
fn html_embed_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLEmbedElement" "get_align"

///|
fn html_embed_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_embed_element_align_ffi_wasm(obj))
}

///|
fn html_embed_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLEmbedElement" "set_align"

///|
fn html_embed_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLEmbedElement" "get_name"

///|
fn html_embed_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_embed_element_name_ffi_wasm(obj))
}

///|
fn html_embed_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLEmbedElement" "set_name"
