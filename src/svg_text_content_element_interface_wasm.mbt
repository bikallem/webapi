///|
fn svg_text_content_element_text_length_ffi(obj : JsValue) -> JsValue = "webapi_SVGTextContentElement" "get_textLength"

///|
fn svg_text_content_element_length_adjust_ffi(obj : JsValue) -> JsValue = "webapi_SVGTextContentElement" "get_lengthAdjust"

///|
fn svg_text_content_element_get_number_of_chars_ffi(obj : JsValue) -> JsValue = "webapi_SVGTextContentElement" "getNumberOfChars"

///|
fn svg_text_content_element_get_computed_text_length_ffi(
  obj : JsValue,
) -> JsValue = "webapi_SVGTextContentElement" "getComputedTextLength"

///|
fn svg_text_content_element_get_sub_string_length_ffi(
  obj : JsValue,
  charnum : JsValue,
  nchars : JsValue,
) -> JsValue = "webapi_SVGTextContentElement" "getSubStringLength"

///|
fn svg_text_content_element_get_start_position_of_char_ffi(
  obj : JsValue,
  charnum : JsValue,
) -> JsValue = "webapi_SVGTextContentElement" "getStartPositionOfChar"

///|
fn svg_text_content_element_get_end_position_of_char_ffi(
  obj : JsValue,
  charnum : JsValue,
) -> JsValue = "webapi_SVGTextContentElement" "getEndPositionOfChar"

///|
fn svg_text_content_element_get_extent_of_char_ffi(
  obj : JsValue,
  charnum : JsValue,
) -> JsValue = "webapi_SVGTextContentElement" "getExtentOfChar"

///|
fn svg_text_content_element_get_rotation_of_char_ffi(
  obj : JsValue,
  charnum : JsValue,
) -> JsValue = "webapi_SVGTextContentElement" "getRotationOfChar"

///|
fn svg_text_content_element_get_char_num_at_position_ffi(
  obj : JsValue,
  point : JsValue,
) -> JsValue = "webapi_SVGTextContentElement" "getCharNumAtPosition"

///|
fn svg_text_content_element_select_sub_string_ffi(
  obj : JsValue,
  charnum : JsValue,
  nchars : JsValue,
) -> Unit = "webapi_SVGTextContentElement" "selectSubString"
