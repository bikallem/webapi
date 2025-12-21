///|
#external
pub type SVGTextContentElement

///|
pub impl TJsValue for SVGTextContentElement with to_js(
  self : SVGTextContentElement,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGTextContentElement] SVGTextContentElement::into(
  self : SVGTextContentElement,
) -> T = "%identity"

///|
pub impl TSVGTextContentElement for SVGTextContentElement

///|
pub impl TSVGGraphicsElement for SVGTextContentElement

///|
pub impl TSVGElement for SVGTextContentElement

///|
pub impl TElement for SVGTextContentElement

///|
pub impl TNode for SVGTextContentElement

///|
pub impl TEventTarget for SVGTextContentElement

///|
pub trait TSVGTextContentElement: TSVGGraphicsElement {
  get_number_of_chars(self : Self) -> Int = _
  get_computed_text_length(self : Self) -> Float = _
  get_sub_string_length(self : Self, charnum : UInt, nchars : UInt) -> Float = _
  get_start_position_of_char(self : Self, charnum : UInt) -> DOMPoint = _
  get_end_position_of_char(self : Self, charnum : UInt) -> DOMPoint = _
  get_extent_of_char(self : Self, charnum : UInt) -> DOMRect = _
  get_rotation_of_char(self : Self, charnum : UInt) -> Float = _
  get_char_num_at_position(self : Self, point? : DOMPointInit) -> Int = _
  select_sub_string(self : Self, charnum : UInt, nchars : UInt) -> Unit = _
}

///|
extern "js" fn svg_text_content_element_get_number_of_chars_ffi(
  obj : JsValue,
) -> Int = "(obj) => obj.getNumberOfChars(obj)"

///|
impl TSVGTextContentElement with get_number_of_chars(self : Self) -> Int {
  svg_text_content_element_get_number_of_chars_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_text_content_element_get_computed_text_length_ffi(
  obj : JsValue,
) -> Float = "(obj) => obj.getComputedTextLength(obj)"

///|
impl TSVGTextContentElement with get_computed_text_length(self : Self) -> Float {
  svg_text_content_element_get_computed_text_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_text_content_element_get_sub_string_length_ffi(
  obj : JsValue,
  charnum : JsValue,
  nchars : JsValue,
) -> Float = "(obj, charnum, nchars) => obj.getSubStringLength(obj, charnum, nchars)"

///|
impl TSVGTextContentElement with get_sub_string_length(
  self : Self,
  charnum : UInt,
  nchars : UInt,
) -> Float {
  svg_text_content_element_get_sub_string_length_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(charnum),
    TJsValue::to_js(nchars),
  )
}

///|
extern "js" fn svg_text_content_element_get_start_position_of_char_ffi(
  obj : JsValue,
  charnum : JsValue,
) -> DOMPoint = "(obj, charnum) => obj.getStartPositionOfChar(obj, charnum)"

///|
impl TSVGTextContentElement with get_start_position_of_char(
  self : Self,
  charnum : UInt,
) -> DOMPoint {
  svg_text_content_element_get_start_position_of_char_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(charnum),
  )
}

///|
extern "js" fn svg_text_content_element_get_end_position_of_char_ffi(
  obj : JsValue,
  charnum : JsValue,
) -> DOMPoint = "(obj, charnum) => obj.getEndPositionOfChar(obj, charnum)"

///|
impl TSVGTextContentElement with get_end_position_of_char(
  self : Self,
  charnum : UInt,
) -> DOMPoint {
  svg_text_content_element_get_end_position_of_char_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(charnum),
  )
}

///|
extern "js" fn svg_text_content_element_get_extent_of_char_ffi(
  obj : JsValue,
  charnum : JsValue,
) -> DOMRect = "(obj, charnum) => obj.getExtentOfChar(obj, charnum)"

///|
impl TSVGTextContentElement with get_extent_of_char(self : Self, charnum : UInt) -> DOMRect {
  svg_text_content_element_get_extent_of_char_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(charnum),
  )
}

///|
extern "js" fn svg_text_content_element_get_rotation_of_char_ffi(
  obj : JsValue,
  charnum : JsValue,
) -> Float = "(obj, charnum) => obj.getRotationOfChar(obj, charnum)"

///|
impl TSVGTextContentElement with get_rotation_of_char(
  self : Self,
  charnum : UInt,
) -> Float {
  svg_text_content_element_get_rotation_of_char_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(charnum),
  )
}

///|
extern "js" fn svg_text_content_element_get_char_num_at_position_ffi(
  obj : JsValue,
  point : JsValue,
) -> Int = "(obj, point) => obj.getCharNumAtPosition(obj, point)"

///|
impl TSVGTextContentElement with get_char_num_at_position(
  self : Self,
  point? : DOMPointInit = DOMPointInit::empty(),
) -> Int {
  svg_text_content_element_get_char_num_at_position_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
  )
}

///|
extern "js" fn svg_text_content_element_select_sub_string_ffi(
  obj : JsValue,
  charnum : JsValue,
  nchars : JsValue,
) -> Unit = "(obj, charnum, nchars) => obj.selectSubString(obj, charnum, nchars)"

///|
impl TSVGTextContentElement with select_sub_string(
  self : Self,
  charnum : UInt,
  nchars : UInt,
) -> Unit {
  svg_text_content_element_select_sub_string_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(charnum),
    TJsValue::to_js(nchars),
  )
}
