///|
extern "js" fn svg_text_content_element_text_length_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.textLength"

///|
extern "js" fn svg_text_content_element_length_adjust_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.lengthAdjust"

///|
extern "js" fn svg_text_content_element_get_number_of_chars_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getNumberOfChars()"

///|
extern "js" fn svg_text_content_element_get_computed_text_length_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getComputedTextLength()"

///|
extern "js" fn svg_text_content_element_get_sub_string_length_ffi(
  obj : JsValue,
  charnum : JsValue,
  nchars : JsValue,
) -> JsValue = "(obj, charnum, nchars) => obj.getSubStringLength(charnum, nchars)"

///|
extern "js" fn svg_text_content_element_get_start_position_of_char_ffi(
  obj : JsValue,
  charnum : JsValue,
) -> JsValue = "(obj, charnum) => obj.getStartPositionOfChar(charnum)"

///|
extern "js" fn svg_text_content_element_get_end_position_of_char_ffi(
  obj : JsValue,
  charnum : JsValue,
) -> JsValue = "(obj, charnum) => obj.getEndPositionOfChar(charnum)"

///|
extern "js" fn svg_text_content_element_get_extent_of_char_ffi(
  obj : JsValue,
  charnum : JsValue,
) -> JsValue = "(obj, charnum) => obj.getExtentOfChar(charnum)"

///|
extern "js" fn svg_text_content_element_get_rotation_of_char_ffi(
  obj : JsValue,
  charnum : JsValue,
) -> JsValue = "(obj, charnum) => obj.getRotationOfChar(charnum)"

///|
extern "js" fn svg_text_content_element_get_char_num_at_position_ffi(
  obj : JsValue,
  point : JsValue,
) -> JsValue = "(obj, point) => obj.getCharNumAtPosition(point)"

///|
extern "js" fn svg_text_content_element_select_sub_string_ffi(
  obj : JsValue,
  charnum : JsValue,
  nchars : JsValue,
) -> Unit = "(obj, charnum, nchars) => obj.selectSubString(charnum, nchars)"
