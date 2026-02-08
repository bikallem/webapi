extern "js" fn svg_graphics_element_transform_ffi(obj: JsValue) -> JsValue = "(obj) => obj.transform"

extern "js" fn svg_graphics_element_get_b_box_ffi(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.getBBox(options)"

extern "js" fn svg_graphics_element_get_ctm_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getCTM()"

extern "js" fn svg_graphics_element_get_screen_ctm_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getScreenCTM()"

extern "js" fn svg_graphics_element_required_extensions_ffi(obj: JsValue) -> JsValue = "(obj) => obj.requiredExtensions"

extern "js" fn svg_graphics_element_system_language_ffi(obj: JsValue) -> JsValue = "(obj) => obj.systemLanguage"