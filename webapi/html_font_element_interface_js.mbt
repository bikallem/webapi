extern "js" fn html_font_element_new_ffi() -> HTMLFontElement = "() => new HTMLFontElement()"

extern "js" fn html_font_element_color_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.color"

///|
fn html_font_element_color_ffi(obj: JsValue) -> String {
  html_font_element_color_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_font_element_set_color_ffi(obj: JsValue, color: JsValue) -> Unit = "(obj, color) => { obj.color = color; }"

extern "js" fn html_font_element_face_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.face"

///|
fn html_font_element_face_ffi(obj: JsValue) -> String {
  html_font_element_face_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_font_element_set_face_ffi(obj: JsValue, face: JsValue) -> Unit = "(obj, face) => { obj.face = face; }"

extern "js" fn html_font_element_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.size"

///|
fn html_font_element_size_ffi(obj: JsValue) -> String {
  html_font_element_size_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_font_element_set_size_ffi(obj: JsValue, size: JsValue) -> Unit = "(obj, size) => { obj.size = size; }"