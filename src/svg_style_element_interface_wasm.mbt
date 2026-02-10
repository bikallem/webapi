fn svg_style_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGStyleElement" "get_type"

///|
fn svg_style_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(svg_style_element_type_ffi_wasm(obj))
}

fn svg_style_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "webapi_SVGStyleElement" "set_type"

fn svg_style_element_media_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGStyleElement" "get_media"

///|
fn svg_style_element_media_ffi(obj: JsValue) -> String {
  jsvalue_to_string(svg_style_element_media_ffi_wasm(obj))
}

fn svg_style_element_set_media_ffi(obj: JsValue, media: JsValue) -> Unit = "webapi_SVGStyleElement" "set_media"

fn svg_style_element_title_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGStyleElement" "get_title"

///|
fn svg_style_element_title_ffi(obj: JsValue) -> String {
  jsvalue_to_string(svg_style_element_title_ffi_wasm(obj))
}

fn svg_style_element_set_title_ffi(obj: JsValue, title: JsValue) -> Unit = "webapi_SVGStyleElement" "set_title"

fn svg_style_element_disabled_ffi(obj: JsValue) -> Bool = "webapi_SVGStyleElement" "get_disabled"

fn svg_style_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "webapi_SVGStyleElement" "set_disabled"

fn svg_style_element_sheet_ffi(obj: JsValue) -> CSSStyleSheet = "webapi_SVGStyleElement" "get_sheet"