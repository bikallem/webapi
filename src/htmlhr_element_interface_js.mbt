extern "js" fn htmlhr_element_new_ffi() -> HTMLHRElement = "() => new HTMLHRElement()"

extern "js" fn htmlhr_element_align_ffi(obj: JsValue) -> JsValue = "(obj) => obj.align"

extern "js" fn htmlhr_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

extern "js" fn htmlhr_element_color_ffi(obj: JsValue) -> JsValue = "(obj) => obj.color"

extern "js" fn htmlhr_element_set_color_ffi(obj: JsValue, color: JsValue) -> Unit = "(obj, color) => { obj.color = color; }"

extern "js" fn htmlhr_element_no_shade_ffi(obj: JsValue) -> JsValue = "(obj) => obj.noShade"

extern "js" fn htmlhr_element_set_no_shade_ffi(obj: JsValue, no_shade: JsValue) -> Unit = "(obj, noShade) => { obj.noShade = noShade; }"

extern "js" fn htmlhr_element_size_ffi(obj: JsValue) -> JsValue = "(obj) => obj.size"

extern "js" fn htmlhr_element_set_size_ffi(obj: JsValue, size: JsValue) -> Unit = "(obj, size) => { obj.size = size; }"

extern "js" fn htmlhr_element_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.width"

extern "js" fn htmlhr_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"