extern "js" fn svg_text_path_element_start_offset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.startOffset"

///|
fn svg_text_path_element_start_offset_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_text_path_element_start_offset_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_text_path_element_method_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.method"

///|
fn svg_text_path_element_method_ffi(obj: JsValue) -> SVGAnimatedEnumeration {
  svg_text_path_element_method_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_text_path_element_spacing_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.spacing"

///|
fn svg_text_path_element_spacing_ffi(obj: JsValue) -> SVGAnimatedEnumeration {
  svg_text_path_element_spacing_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_text_path_element_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
fn svg_text_path_element_href_ffi(obj: JsValue) -> SVGAnimatedString {
  svg_text_path_element_href_ffi_js(obj).unsafe_cast()
}