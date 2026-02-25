///|
extern "js" fn svg_script_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn svg_script_element_type_ffi(obj : JsValue) -> String {
  svg_script_element_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_script_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
extern "js" fn svg_script_element_cross_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.crossOrigin"

///|
fn svg_script_element_cross_origin_ffi(obj : JsValue) -> String {
  svg_script_element_cross_origin_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_script_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

///|
extern "js" fn svg_script_element_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
fn svg_script_element_href_ffi(obj : JsValue) -> SVGAnimatedString {
  svg_script_element_href_ffi_js(obj).unsafe_cast()
}
