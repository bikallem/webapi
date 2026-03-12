// Do not edit. This file is generated.
// MoonBit type: SVGTextContentElement
// Specifications: SVG.idl

///|
/// [SVGTextContentElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement)
#external
pub type SVGTextContentElement

///|
pub impl TJsValue for SVGTextContentElement with to_js(
  self : SVGTextContentElement,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGTextContentElement with from_js_any(value : JsAny) -> SVGTextContentElement = "%identity"

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
pub const SVG_TEXT_CONTENT_ELEMENT_LENGTHADJUST_UNKNOWN : UInt = 0

///|
pub const SVG_TEXT_CONTENT_ELEMENT_LENGTHADJUST_SPACING : UInt = 1

///|
pub const SVG_TEXT_CONTENT_ELEMENT_LENGTHADJUST_SPACINGANDGLYPHS : UInt = 2

///|
/// [SVGTextContentElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement) interface.
pub trait TSVGTextContentElement: TSVGGraphicsElement {
  text_length(self : Self) -> SVGAnimatedLength = _
  length_adjust(self : Self) -> SVGAnimatedEnumeration = _
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
/// [SVGTextContentElement.textLength](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement/textLength)
impl TSVGTextContentElement with text_length(self : Self) -> SVGAnimatedLength {
  svg_text_content_element_text_length_ffi(TJsValue::to_js(self))
}

///|
/// [SVGTextContentElement.lengthAdjust](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement/lengthAdjust)
impl TSVGTextContentElement with length_adjust(self : Self) -> SVGAnimatedEnumeration {
  svg_text_content_element_length_adjust_ffi(TJsValue::to_js(self))
}

///|
/// [SVGTextContentElement.getNumberOfChars](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement/getNumberOfChars)
impl TSVGTextContentElement with get_number_of_chars(self : Self) -> Int {
  svg_text_content_element_get_number_of_chars_ffi(TJsValue::to_js(self))
}

///|
/// [SVGTextContentElement.getComputedTextLength](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement/getComputedTextLength)
impl TSVGTextContentElement with get_computed_text_length(self : Self) -> Float {
  svg_text_content_element_get_computed_text_length_ffi(TJsValue::to_js(self))
}

///|
/// [SVGTextContentElement.getSubStringLength](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement/getSubStringLength)
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
/// [SVGTextContentElement.getStartPositionOfChar](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement/getStartPositionOfChar)
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
/// [SVGTextContentElement.getEndPositionOfChar](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement/getEndPositionOfChar)
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
/// [SVGTextContentElement.getExtentOfChar](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement/getExtentOfChar)
impl TSVGTextContentElement with get_extent_of_char(self : Self, charnum : UInt) -> DOMRect {
  svg_text_content_element_get_extent_of_char_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(charnum),
  )
}

///|
/// [SVGTextContentElement.getRotationOfChar](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement/getRotationOfChar)
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
/// [SVGTextContentElement.getCharNumAtPosition](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement/getCharNumAtPosition)
impl TSVGTextContentElement with get_char_num_at_position(
  self : Self,
  point? : DOMPointInit,
) -> Int {
  svg_text_content_element_get_char_num_at_position_ffi(
    TJsValue::to_js(self),
    opt_to_js(point),
  )
}

///|
/// [SVGTextContentElement.selectSubString](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement/selectSubString)
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
