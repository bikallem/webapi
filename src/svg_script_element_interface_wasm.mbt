///|
fn svg_script_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGScriptElement" "get_type"

///|
fn svg_script_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svg_script_element_type_ffi_wasm(obj))
}

///|
fn svg_script_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_SVGScriptElement" "set_type"

///|
fn svg_script_element_cross_origin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGScriptElement" "get_crossOrigin"

///|
fn svg_script_element_cross_origin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svg_script_element_cross_origin_ffi_wasm(obj))
}

///|
fn svg_script_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "webapi_SVGScriptElement" "set_crossOrigin"

///|
fn svg_script_element_href_ffi(obj : JsValue) -> SVGAnimatedString = "webapi_SVGScriptElement" "get_href"
