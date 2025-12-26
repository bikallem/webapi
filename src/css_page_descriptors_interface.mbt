// Do not edit. This file is generated.
// MoonBit type: CSSPageDescriptors
// Specifications: cssom.idl

///|
#external
pub type CSSPageDescriptors

///|
pub impl TJsValue for CSSPageDescriptors with to_js(self : CSSPageDescriptors) -> JsValue = "%identity"

///|
pub fn[T : TCSSPageDescriptors] CSSPageDescriptors::into(
  self : CSSPageDescriptors,
) -> T = "%identity"

///|
pub impl TCSSPageDescriptors for CSSPageDescriptors

///|
pub impl TCSSStyleDeclaration for CSSPageDescriptors

///|
pub trait TCSSPageDescriptors: TCSSStyleDeclaration {
  margin(self : Self) -> String = _
  set_margin(self : Self, margin : String) -> Unit = _
  margin_top(self : Self) -> String = _
  set_margin_top(self : Self, margin_top : String) -> Unit = _
  margin_right(self : Self) -> String = _
  set_margin_right(self : Self, margin_right : String) -> Unit = _
  margin_bottom(self : Self) -> String = _
  set_margin_bottom(self : Self, margin_bottom : String) -> Unit = _
  margin_left(self : Self) -> String = _
  set_margin_left(self : Self, margin_left : String) -> Unit = _
  size(self : Self) -> String = _
  set_size(self : Self, size : String) -> Unit = _
  page_orientation(self : Self) -> String = _
  set_page_orientation(self : Self, page_orientation : String) -> Unit = _
  marks(self : Self) -> String = _
  set_marks(self : Self, marks : String) -> Unit = _
  bleed(self : Self) -> String = _
  set_bleed(self : Self, bleed : String) -> Unit = _
}

///|
extern "js" fn css_page_descriptors_margin_ffi(obj : JsValue) -> String = "(obj) => obj.margin"

///|
impl TCSSPageDescriptors with margin(self : Self) -> String {
  css_page_descriptors_margin_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_page_descriptors_set_margin_ffi(
  obj : JsValue,
  margin : JsValue,
) -> Unit = "(obj, margin) => { obj.margin = margin; }"

///|
impl TCSSPageDescriptors with set_margin(self : Self, margin : String) -> Unit {
  css_page_descriptors_set_margin_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin),
  )
}

///|
extern "js" fn css_page_descriptors_margin_top_ffi(obj : JsValue) -> String = "(obj) => obj.marginTop"

///|
impl TCSSPageDescriptors with margin_top(self : Self) -> String {
  css_page_descriptors_margin_top_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_page_descriptors_set_margin_top_ffi(
  obj : JsValue,
  margin_top : JsValue,
) -> Unit = "(obj, marginTop) => { obj.marginTop = marginTop; }"

///|
impl TCSSPageDescriptors with set_margin_top(self : Self, margin_top : String) -> Unit {
  css_page_descriptors_set_margin_top_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_top),
  )
}

///|
extern "js" fn css_page_descriptors_margin_right_ffi(obj : JsValue) -> String = "(obj) => obj.marginRight"

///|
impl TCSSPageDescriptors with margin_right(self : Self) -> String {
  css_page_descriptors_margin_right_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_page_descriptors_set_margin_right_ffi(
  obj : JsValue,
  margin_right : JsValue,
) -> Unit = "(obj, marginRight) => { obj.marginRight = marginRight; }"

///|
impl TCSSPageDescriptors with set_margin_right(
  self : Self,
  margin_right : String,
) -> Unit {
  css_page_descriptors_set_margin_right_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_right),
  )
}

///|
extern "js" fn css_page_descriptors_margin_bottom_ffi(obj : JsValue) -> String = "(obj) => obj.marginBottom"

///|
impl TCSSPageDescriptors with margin_bottom(self : Self) -> String {
  css_page_descriptors_margin_bottom_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_page_descriptors_set_margin_bottom_ffi(
  obj : JsValue,
  margin_bottom : JsValue,
) -> Unit = "(obj, marginBottom) => { obj.marginBottom = marginBottom; }"

///|
impl TCSSPageDescriptors with set_margin_bottom(
  self : Self,
  margin_bottom : String,
) -> Unit {
  css_page_descriptors_set_margin_bottom_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_bottom),
  )
}

///|
extern "js" fn css_page_descriptors_margin_left_ffi(obj : JsValue) -> String = "(obj) => obj.marginLeft"

///|
impl TCSSPageDescriptors with margin_left(self : Self) -> String {
  css_page_descriptors_margin_left_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_page_descriptors_set_margin_left_ffi(
  obj : JsValue,
  margin_left : JsValue,
) -> Unit = "(obj, marginLeft) => { obj.marginLeft = marginLeft; }"

///|
impl TCSSPageDescriptors with set_margin_left(self : Self, margin_left : String) -> Unit {
  css_page_descriptors_set_margin_left_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_left),
  )
}

///|
extern "js" fn css_page_descriptors_size_ffi(obj : JsValue) -> String = "(obj) => obj.size"

///|
impl TCSSPageDescriptors with size(self : Self) -> String {
  css_page_descriptors_size_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_page_descriptors_set_size_ffi(
  obj : JsValue,
  size : JsValue,
) -> Unit = "(obj, size) => { obj.size = size; }"

///|
impl TCSSPageDescriptors with set_size(self : Self, size : String) -> Unit {
  css_page_descriptors_set_size_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(size),
  )
}

///|
extern "js" fn css_page_descriptors_page_orientation_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.pageOrientation"

///|
impl TCSSPageDescriptors with page_orientation(self : Self) -> String {
  css_page_descriptors_page_orientation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_page_descriptors_set_page_orientation_ffi(
  obj : JsValue,
  page_orientation : JsValue,
) -> Unit = "(obj, pageOrientation) => { obj.pageOrientation = pageOrientation; }"

///|
impl TCSSPageDescriptors with set_page_orientation(
  self : Self,
  page_orientation : String,
) -> Unit {
  css_page_descriptors_set_page_orientation_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(page_orientation),
  )
}

///|
extern "js" fn css_page_descriptors_marks_ffi(obj : JsValue) -> String = "(obj) => obj.marks"

///|
impl TCSSPageDescriptors with marks(self : Self) -> String {
  css_page_descriptors_marks_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_page_descriptors_set_marks_ffi(
  obj : JsValue,
  marks : JsValue,
) -> Unit = "(obj, marks) => { obj.marks = marks; }"

///|
impl TCSSPageDescriptors with set_marks(self : Self, marks : String) -> Unit {
  css_page_descriptors_set_marks_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(marks),
  )
}

///|
extern "js" fn css_page_descriptors_bleed_ffi(obj : JsValue) -> String = "(obj) => obj.bleed"

///|
impl TCSSPageDescriptors with bleed(self : Self) -> String {
  css_page_descriptors_bleed_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_page_descriptors_set_bleed_ffi(
  obj : JsValue,
  bleed : JsValue,
) -> Unit = "(obj, bleed) => { obj.bleed = bleed; }"

///|
impl TCSSPageDescriptors with set_bleed(self : Self, bleed : String) -> Unit {
  css_page_descriptors_set_bleed_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bleed),
  )
}
