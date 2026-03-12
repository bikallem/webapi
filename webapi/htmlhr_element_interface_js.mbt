extern "js" fn htmlhr_element_new_ffi() -> HTMLHRElement = "() => new HTMLHRElement()"

extern "js" fn htmlhr_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
fn htmlhr_element_align_ffi(obj: JsValue) -> String {
  htmlhr_element_align_ffi_js(obj).unsafe_cast()
}

extern "js" fn htmlhr_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

extern "js" fn htmlhr_element_color_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.color"

///|
fn htmlhr_element_color_ffi(obj: JsValue) -> String {
  htmlhr_element_color_ffi_js(obj).unsafe_cast()
}

extern "js" fn htmlhr_element_set_color_ffi(obj: JsValue, color: JsValue) -> Unit = "(obj, color) => { obj.color = color; }"

extern "js" fn htmlhr_element_no_shade_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.noShade"

///|
fn htmlhr_element_no_shade_ffi(obj: JsValue) -> Bool {
  htmlhr_element_no_shade_ffi_js(obj).unsafe_cast()
}

extern "js" fn htmlhr_element_set_no_shade_ffi(obj: JsValue, no_shade: JsValue) -> Unit = "(obj, noShade) => { obj.noShade = noShade; }"

extern "js" fn htmlhr_element_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.size"

///|
fn htmlhr_element_size_ffi(obj: JsValue) -> String {
  htmlhr_element_size_ffi_js(obj).unsafe_cast()
}

extern "js" fn htmlhr_element_set_size_ffi(obj: JsValue, size: JsValue) -> Unit = "(obj, size) => { obj.size = size; }"

extern "js" fn htmlhr_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
fn htmlhr_element_width_ffi(obj: JsValue) -> String {
  htmlhr_element_width_ffi_js(obj).unsafe_cast()
}

extern "js" fn htmlhr_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"