// Do not edit. This file is generated.
// MoonBit type: CSSPageDescriptors
// Specifications: cssom.idl

/// [CSSPageDescriptors](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors)
#external
pub type CSSPageDescriptors

pub impl TJsValue for CSSPageDescriptors with to_js(self: CSSPageDescriptors) -> JsValue = "%identity"

pub impl FromJsAny for CSSPageDescriptors with from_js_any(value : JsAny) -> CSSPageDescriptors = "%identity"

pub fn[T: TCSSPageDescriptors] CSSPageDescriptors::into(self : CSSPageDescriptors) -> T = "%identity"

pub impl TCSSPageDescriptors for CSSPageDescriptors

pub impl TCSSStyleDeclaration for CSSPageDescriptors

/// [CSSPageDescriptors](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors) interface.
pub trait TCSSPageDescriptors: TCSSStyleDeclaration {
  margin(self : Self) -> CSSOMString = _
  set_margin(self : Self, margin : CSSOMString) -> Unit = _
  margin_top(self : Self) -> CSSOMString = _
  set_margin_top(self : Self, margin_top : CSSOMString) -> Unit = _
  margin_right(self : Self) -> CSSOMString = _
  set_margin_right(self : Self, margin_right : CSSOMString) -> Unit = _
  margin_bottom(self : Self) -> CSSOMString = _
  set_margin_bottom(self : Self, margin_bottom : CSSOMString) -> Unit = _
  margin_left(self : Self) -> CSSOMString = _
  set_margin_left(self : Self, margin_left : CSSOMString) -> Unit = _
  size(self : Self) -> CSSOMString = _
  set_size(self : Self, size : CSSOMString) -> Unit = _
  page_orientation(self : Self) -> CSSOMString = _
  set_page_orientation(self : Self, page_orientation : CSSOMString) -> Unit = _
  marks(self : Self) -> CSSOMString = _
  set_marks(self : Self, marks : CSSOMString) -> Unit = _
  bleed(self : Self) -> CSSOMString = _
  set_bleed(self : Self, bleed : CSSOMString) -> Unit = _
}

/// [CSSPageDescriptors.margin](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/margin)
impl TCSSPageDescriptors with margin(self : Self) -> CSSOMString {
  css_page_descriptors_margin_ffi(TJsValue::to_js(self))
}

/// [CSSPageDescriptors.margin](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/margin)
impl TCSSPageDescriptors with set_margin(self : Self, 
margin : CSSOMString) -> Unit {
  css_page_descriptors_set_margin_ffi(TJsValue::to_js(self), TJsValue::to_js(margin))
}

/// [CSSPageDescriptors.marginTop](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginTop)
impl TCSSPageDescriptors with margin_top(self : Self) -> CSSOMString {
  css_page_descriptors_margin_top_ffi(TJsValue::to_js(self))
}

/// [CSSPageDescriptors.marginTop](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginTop)
impl TCSSPageDescriptors with set_margin_top(self : Self, 
margin_top : CSSOMString) -> Unit {
  css_page_descriptors_set_margin_top_ffi(TJsValue::to_js(self), TJsValue::to_js(margin_top))
}

/// [CSSPageDescriptors.marginRight](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginRight)
impl TCSSPageDescriptors with margin_right(self : Self) -> CSSOMString {
  css_page_descriptors_margin_right_ffi(TJsValue::to_js(self))
}

/// [CSSPageDescriptors.marginRight](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginRight)
impl TCSSPageDescriptors with set_margin_right(self : Self, 
margin_right : CSSOMString) -> Unit {
  css_page_descriptors_set_margin_right_ffi(TJsValue::to_js(self), TJsValue::to_js(margin_right))
}

/// [CSSPageDescriptors.marginBottom](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginBottom)
impl TCSSPageDescriptors with margin_bottom(self : Self) -> CSSOMString {
  css_page_descriptors_margin_bottom_ffi(TJsValue::to_js(self))
}

/// [CSSPageDescriptors.marginBottom](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginBottom)
impl TCSSPageDescriptors with set_margin_bottom(self : Self, 
margin_bottom : CSSOMString) -> Unit {
  css_page_descriptors_set_margin_bottom_ffi(TJsValue::to_js(self), TJsValue::to_js(margin_bottom))
}

/// [CSSPageDescriptors.marginLeft](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginLeft)
impl TCSSPageDescriptors with margin_left(self : Self) -> CSSOMString {
  css_page_descriptors_margin_left_ffi(TJsValue::to_js(self))
}

/// [CSSPageDescriptors.marginLeft](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginLeft)
impl TCSSPageDescriptors with set_margin_left(self : Self, 
margin_left : CSSOMString) -> Unit {
  css_page_descriptors_set_margin_left_ffi(TJsValue::to_js(self), TJsValue::to_js(margin_left))
}

/// [CSSPageDescriptors.size](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/size)
impl TCSSPageDescriptors with size(self : Self) -> CSSOMString {
  css_page_descriptors_size_ffi(TJsValue::to_js(self))
}

/// [CSSPageDescriptors.size](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/size)
impl TCSSPageDescriptors with set_size(self : Self, 
size : CSSOMString) -> Unit {
  css_page_descriptors_set_size_ffi(TJsValue::to_js(self), TJsValue::to_js(size))
}

/// [CSSPageDescriptors.pageOrientation](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/pageOrientation)
impl TCSSPageDescriptors with page_orientation(self : Self) -> CSSOMString {
  css_page_descriptors_page_orientation_ffi(TJsValue::to_js(self))
}

/// [CSSPageDescriptors.pageOrientation](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/pageOrientation)
impl TCSSPageDescriptors with set_page_orientation(self : Self, 
page_orientation : CSSOMString) -> Unit {
  css_page_descriptors_set_page_orientation_ffi(TJsValue::to_js(self), TJsValue::to_js(page_orientation))
}

/// [CSSPageDescriptors.marks](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marks)
impl TCSSPageDescriptors with marks(self : Self) -> CSSOMString {
  css_page_descriptors_marks_ffi(TJsValue::to_js(self))
}

/// [CSSPageDescriptors.marks](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marks)
impl TCSSPageDescriptors with set_marks(self : Self, 
marks : CSSOMString) -> Unit {
  css_page_descriptors_set_marks_ffi(TJsValue::to_js(self), TJsValue::to_js(marks))
}

/// [CSSPageDescriptors.bleed](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/bleed)
impl TCSSPageDescriptors with bleed(self : Self) -> CSSOMString {
  css_page_descriptors_bleed_ffi(TJsValue::to_js(self))
}

/// [CSSPageDescriptors.bleed](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/bleed)
impl TCSSPageDescriptors with set_bleed(self : Self, 
bleed : CSSOMString) -> Unit {
  css_page_descriptors_set_bleed_ffi(TJsValue::to_js(self), TJsValue::to_js(bleed))
}