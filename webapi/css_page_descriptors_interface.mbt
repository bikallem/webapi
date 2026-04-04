// Do not edit. This file is generated.
// MoonBit type: CSSPageDescriptors
// Specifications: cssom.idl

///|
/// [CSSPageDescriptors](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors)
#external
pub type CSSPageDescriptors

///|
pub impl TJsValue for CSSPageDescriptors with to_js(self : CSSPageDescriptors) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSSPageDescriptors with from_js_any(value : JsAny) -> CSSPageDescriptors = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCSSPageDescriptors] CSSPageDescriptors::into(
  self : CSSPageDescriptors,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCSSPageDescriptors] CSSPageDescriptors::unsafe_into(
  self : CSSPageDescriptors,
) -> T = "%identity"

///|
pub impl HasConstructor for CSSPageDescriptors with constructor_name() {
  "CSSPageDescriptors"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCSSPageDescriptors + HasConstructor] CSSPageDescriptors::try_into(
  self : CSSPageDescriptors,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCSSPageDescriptors for CSSPageDescriptors

///|
pub impl TCSSStyleDeclaration for CSSPageDescriptors

///|
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

///|
/// [CSSPageDescriptors.margin](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/margin)
impl TCSSPageDescriptors with margin(self : Self) -> CSSOMString {
  css_page_descriptors_margin_ffi(TJsValue::to_js(self))
}

///|
/// [CSSPageDescriptors.margin](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/margin)
impl TCSSPageDescriptors with set_margin(self : Self, margin : CSSOMString) -> Unit {
  css_page_descriptors_set_margin_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin),
  )
}

///|
/// [CSSPageDescriptors.marginTop](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginTop)
impl TCSSPageDescriptors with margin_top(self : Self) -> CSSOMString {
  css_page_descriptors_margin_top_ffi(TJsValue::to_js(self))
}

///|
/// [CSSPageDescriptors.marginTop](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginTop)
impl TCSSPageDescriptors with set_margin_top(
  self : Self,
  margin_top : CSSOMString,
) -> Unit {
  css_page_descriptors_set_margin_top_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_top),
  )
}

///|
/// [CSSPageDescriptors.marginRight](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginRight)
impl TCSSPageDescriptors with margin_right(self : Self) -> CSSOMString {
  css_page_descriptors_margin_right_ffi(TJsValue::to_js(self))
}

///|
/// [CSSPageDescriptors.marginRight](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginRight)
impl TCSSPageDescriptors with set_margin_right(
  self : Self,
  margin_right : CSSOMString,
) -> Unit {
  css_page_descriptors_set_margin_right_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_right),
  )
}

///|
/// [CSSPageDescriptors.marginBottom](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginBottom)
impl TCSSPageDescriptors with margin_bottom(self : Self) -> CSSOMString {
  css_page_descriptors_margin_bottom_ffi(TJsValue::to_js(self))
}

///|
/// [CSSPageDescriptors.marginBottom](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginBottom)
impl TCSSPageDescriptors with set_margin_bottom(
  self : Self,
  margin_bottom : CSSOMString,
) -> Unit {
  css_page_descriptors_set_margin_bottom_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_bottom),
  )
}

///|
/// [CSSPageDescriptors.marginLeft](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginLeft)
impl TCSSPageDescriptors with margin_left(self : Self) -> CSSOMString {
  css_page_descriptors_margin_left_ffi(TJsValue::to_js(self))
}

///|
/// [CSSPageDescriptors.marginLeft](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marginLeft)
impl TCSSPageDescriptors with set_margin_left(
  self : Self,
  margin_left : CSSOMString,
) -> Unit {
  css_page_descriptors_set_margin_left_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_left),
  )
}

///|
/// [CSSPageDescriptors.size](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/size)
impl TCSSPageDescriptors with size(self : Self) -> CSSOMString {
  css_page_descriptors_size_ffi(TJsValue::to_js(self))
}

///|
/// [CSSPageDescriptors.size](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/size)
impl TCSSPageDescriptors with set_size(self : Self, size : CSSOMString) -> Unit {
  css_page_descriptors_set_size_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(size),
  )
}

///|
/// [CSSPageDescriptors.pageOrientation](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/pageOrientation)
impl TCSSPageDescriptors with page_orientation(self : Self) -> CSSOMString {
  css_page_descriptors_page_orientation_ffi(TJsValue::to_js(self))
}

///|
/// [CSSPageDescriptors.pageOrientation](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/pageOrientation)
impl TCSSPageDescriptors with set_page_orientation(
  self : Self,
  page_orientation : CSSOMString,
) -> Unit {
  css_page_descriptors_set_page_orientation_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(page_orientation),
  )
}

///|
/// [CSSPageDescriptors.marks](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marks)
impl TCSSPageDescriptors with marks(self : Self) -> CSSOMString {
  css_page_descriptors_marks_ffi(TJsValue::to_js(self))
}

///|
/// [CSSPageDescriptors.marks](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/marks)
impl TCSSPageDescriptors with set_marks(self : Self, marks : CSSOMString) -> Unit {
  css_page_descriptors_set_marks_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(marks),
  )
}

///|
/// [CSSPageDescriptors.bleed](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/bleed)
impl TCSSPageDescriptors with bleed(self : Self) -> CSSOMString {
  css_page_descriptors_bleed_ffi(TJsValue::to_js(self))
}

///|
/// [CSSPageDescriptors.bleed](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageDescriptors/bleed)
impl TCSSPageDescriptors with set_bleed(self : Self, bleed : CSSOMString) -> Unit {
  css_page_descriptors_set_bleed_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bleed),
  )
}

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_margin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.margin"

///|
#cfg(target="js")
fn css_page_descriptors_margin_ffi(obj : JsValue) -> CSSOMString {
  css_page_descriptors_margin_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_set_margin_ffi(
  obj : JsValue,
  margin : JsValue,
) -> Unit = "(obj, margin) => { obj.margin = margin; }"

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_margin_top_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.marginTop"

///|
#cfg(target="js")
fn css_page_descriptors_margin_top_ffi(obj : JsValue) -> CSSOMString {
  css_page_descriptors_margin_top_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_set_margin_top_ffi(
  obj : JsValue,
  margin_top : JsValue,
) -> Unit = "(obj, marginTop) => { obj.marginTop = marginTop; }"

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_margin_right_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.marginRight"

///|
#cfg(target="js")
fn css_page_descriptors_margin_right_ffi(obj : JsValue) -> CSSOMString {
  css_page_descriptors_margin_right_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_set_margin_right_ffi(
  obj : JsValue,
  margin_right : JsValue,
) -> Unit = "(obj, marginRight) => { obj.marginRight = marginRight; }"

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_margin_bottom_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.marginBottom"

///|
#cfg(target="js")
fn css_page_descriptors_margin_bottom_ffi(obj : JsValue) -> CSSOMString {
  css_page_descriptors_margin_bottom_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_set_margin_bottom_ffi(
  obj : JsValue,
  margin_bottom : JsValue,
) -> Unit = "(obj, marginBottom) => { obj.marginBottom = marginBottom; }"

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_margin_left_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.marginLeft"

///|
#cfg(target="js")
fn css_page_descriptors_margin_left_ffi(obj : JsValue) -> CSSOMString {
  css_page_descriptors_margin_left_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_set_margin_left_ffi(
  obj : JsValue,
  margin_left : JsValue,
) -> Unit = "(obj, marginLeft) => { obj.marginLeft = marginLeft; }"

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_size_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.size"

///|
#cfg(target="js")
fn css_page_descriptors_size_ffi(obj : JsValue) -> CSSOMString {
  css_page_descriptors_size_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_set_size_ffi(
  obj : JsValue,
  size : JsValue,
) -> Unit = "(obj, size) => { obj.size = size; }"

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_page_orientation_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.pageOrientation"

///|
#cfg(target="js")
fn css_page_descriptors_page_orientation_ffi(obj : JsValue) -> CSSOMString {
  css_page_descriptors_page_orientation_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_set_page_orientation_ffi(
  obj : JsValue,
  page_orientation : JsValue,
) -> Unit = "(obj, pageOrientation) => { obj.pageOrientation = pageOrientation; }"

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_marks_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.marks"

///|
#cfg(target="js")
fn css_page_descriptors_marks_ffi(obj : JsValue) -> CSSOMString {
  css_page_descriptors_marks_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_set_marks_ffi(
  obj : JsValue,
  marks : JsValue,
) -> Unit = "(obj, marks) => { obj.marks = marks; }"

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_bleed_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.bleed"

///|
#cfg(target="js")
fn css_page_descriptors_bleed_ffi(obj : JsValue) -> CSSOMString {
  css_page_descriptors_bleed_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_page_descriptors_set_bleed_ffi(
  obj : JsValue,
  bleed : JsValue,
) -> Unit = "(obj, bleed) => { obj.bleed = bleed; }"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_margin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSPageDescriptors" "get_margin"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_margin_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_page_descriptors_margin_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_set_margin_ffi(obj : JsValue, margin : JsValue) -> Unit = "webapi_CSSPageDescriptors" "set_margin"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_margin_top_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSPageDescriptors" "get_marginTop"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_margin_top_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_page_descriptors_margin_top_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_set_margin_top_ffi(
  obj : JsValue,
  margin_top : JsValue,
) -> Unit = "webapi_CSSPageDescriptors" "set_marginTop"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_margin_right_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSPageDescriptors" "get_marginRight"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_margin_right_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_page_descriptors_margin_right_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_set_margin_right_ffi(
  obj : JsValue,
  margin_right : JsValue,
) -> Unit = "webapi_CSSPageDescriptors" "set_marginRight"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_margin_bottom_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSPageDescriptors" "get_marginBottom"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_margin_bottom_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_page_descriptors_margin_bottom_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_set_margin_bottom_ffi(
  obj : JsValue,
  margin_bottom : JsValue,
) -> Unit = "webapi_CSSPageDescriptors" "set_marginBottom"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_margin_left_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSPageDescriptors" "get_marginLeft"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_margin_left_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_page_descriptors_margin_left_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_set_margin_left_ffi(
  obj : JsValue,
  margin_left : JsValue,
) -> Unit = "webapi_CSSPageDescriptors" "set_marginLeft"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_size_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSPageDescriptors" "get_size"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_size_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_page_descriptors_size_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_set_size_ffi(obj : JsValue, size : JsValue) -> Unit = "webapi_CSSPageDescriptors" "set_size"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_page_orientation_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSPageDescriptors" "get_pageOrientation"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_page_orientation_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_page_descriptors_page_orientation_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_set_page_orientation_ffi(
  obj : JsValue,
  page_orientation : JsValue,
) -> Unit = "webapi_CSSPageDescriptors" "set_pageOrientation"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_marks_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSPageDescriptors" "get_marks"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_marks_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_page_descriptors_marks_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_set_marks_ffi(obj : JsValue, marks : JsValue) -> Unit = "webapi_CSSPageDescriptors" "set_marks"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_bleed_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSPageDescriptors" "get_bleed"

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_bleed_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_page_descriptors_bleed_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_page_descriptors_set_bleed_ffi(obj : JsValue, bleed : JsValue) -> Unit = "webapi_CSSPageDescriptors" "set_bleed"
