extern "js" fn svg_text_content_element_text_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.textLength"

///|
fn svg_text_content_element_text_length_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_text_content_element_text_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_text_content_element_length_adjust_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lengthAdjust"

///|
fn svg_text_content_element_length_adjust_ffi(obj: JsValue) -> SVGAnimatedEnumeration {
  svg_text_content_element_length_adjust_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_text_content_element_get_number_of_chars_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getNumberOfChars()"

///|
fn svg_text_content_element_get_number_of_chars_ffi(obj: JsValue) -> Int {
  svg_text_content_element_get_number_of_chars_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_text_content_element_get_computed_text_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getComputedTextLength()"

///|
fn svg_text_content_element_get_computed_text_length_ffi(obj: JsValue) -> Float {
  svg_text_content_element_get_computed_text_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_text_content_element_get_sub_string_length_ffi_js(obj: JsValue, charnum: JsValue, nchars: JsValue) -> JsValue = "(obj, charnum, nchars) => obj.getSubStringLength(charnum, nchars)"

///|
fn svg_text_content_element_get_sub_string_length_ffi(obj: JsValue, charnum: JsValue, nchars: JsValue) -> Float {
  svg_text_content_element_get_sub_string_length_ffi_js(obj, charnum, nchars).unsafe_cast()
}

extern "js" fn svg_text_content_element_get_start_position_of_char_ffi_js(obj: JsValue, charnum: JsValue) -> JsValue = "(obj, charnum) => obj.getStartPositionOfChar(charnum)"

///|
fn svg_text_content_element_get_start_position_of_char_ffi(obj: JsValue, charnum: JsValue) -> DOMPoint {
  svg_text_content_element_get_start_position_of_char_ffi_js(obj, charnum).unsafe_cast()
}

extern "js" fn svg_text_content_element_get_end_position_of_char_ffi_js(obj: JsValue, charnum: JsValue) -> JsValue = "(obj, charnum) => obj.getEndPositionOfChar(charnum)"

///|
fn svg_text_content_element_get_end_position_of_char_ffi(obj: JsValue, charnum: JsValue) -> DOMPoint {
  svg_text_content_element_get_end_position_of_char_ffi_js(obj, charnum).unsafe_cast()
}

extern "js" fn svg_text_content_element_get_extent_of_char_ffi_js(obj: JsValue, charnum: JsValue) -> JsValue = "(obj, charnum) => obj.getExtentOfChar(charnum)"

///|
fn svg_text_content_element_get_extent_of_char_ffi(obj: JsValue, charnum: JsValue) -> DOMRect {
  svg_text_content_element_get_extent_of_char_ffi_js(obj, charnum).unsafe_cast()
}

extern "js" fn svg_text_content_element_get_rotation_of_char_ffi_js(obj: JsValue, charnum: JsValue) -> JsValue = "(obj, charnum) => obj.getRotationOfChar(charnum)"

///|
fn svg_text_content_element_get_rotation_of_char_ffi(obj: JsValue, charnum: JsValue) -> Float {
  svg_text_content_element_get_rotation_of_char_ffi_js(obj, charnum).unsafe_cast()
}

extern "js" fn svg_text_content_element_get_char_num_at_position_ffi_js(obj: JsValue, point: JsValue) -> JsValue = "(obj, point) => obj.getCharNumAtPosition(point)"

///|
fn svg_text_content_element_get_char_num_at_position_ffi(obj: JsValue, point: JsValue) -> Int {
  svg_text_content_element_get_char_num_at_position_ffi_js(obj, point).unsafe_cast()
}

extern "js" fn svg_text_content_element_select_sub_string_ffi(obj: JsValue, charnum: JsValue, nchars: JsValue) -> Unit = "(obj, charnum, nchars) => obj.selectSubString(charnum, nchars)"