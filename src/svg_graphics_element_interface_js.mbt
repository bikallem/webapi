extern "js" fn svg_graphics_element_transform_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.transform"

///|
fn svg_graphics_element_transform_ffi(obj: JsValue) -> SVGAnimatedTransformList {
  svg_graphics_element_transform_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_graphics_element_get_b_box_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.getBBox(options)"

///|
fn svg_graphics_element_get_b_box_ffi(obj: JsValue, options: JsValue) -> DOMRect {
  svg_graphics_element_get_b_box_ffi_js(obj, options).unsafe_cast()
}

extern "js" fn svg_graphics_element_get_ctm_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getCTM()"

extern "js" fn svg_graphics_element_get_screen_ctm_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getScreenCTM()"

extern "js" fn svg_graphics_element_required_extensions_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.requiredExtensions"

///|
fn svg_graphics_element_required_extensions_ffi(obj: JsValue) -> SVGStringList {
  svg_graphics_element_required_extensions_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_graphics_element_system_language_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.systemLanguage"

///|
fn svg_graphics_element_system_language_ffi(obj: JsValue) -> SVGStringList {
  svg_graphics_element_system_language_ffi_js(obj).unsafe_cast()
}