// Do not edit. This file is generated.
// MoonBit type: SVGPatternElement
// Specifications: SVG.idl

///|
/// [SVGPatternElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement)
#external
pub type SVGPatternElement

///|
pub impl TJsValue for SVGPatternElement with to_js(self : SVGPatternElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGPatternElement with from_js_any(value : JsAny) -> SVGPatternElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGPatternElement] SVGPatternElement::into(
  self : SVGPatternElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGPatternElement] SVGPatternElement::unsafe_into(
  self : SVGPatternElement,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGPatternElement with constructor_name() {
  "SVGPatternElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGPatternElement + HasConstructor] SVGPatternElement::try_into(
  self : SVGPatternElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGPatternElement for SVGPatternElement

///|
pub impl TSVGElement for SVGPatternElement

///|
pub impl TElement for SVGPatternElement

///|
pub impl TNode for SVGPatternElement

///|
pub impl TEventTarget for SVGPatternElement

///|
/// [SVGPatternElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement) interface.
pub trait TSVGPatternElement: TSVGElement {
  pattern_units(self : Self) -> SVGAnimatedEnumeration = _
  pattern_content_units(self : Self) -> SVGAnimatedEnumeration = _
  pattern_transform(self : Self) -> SVGAnimatedTransformList = _
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
  view_box(self : Self) -> SVGAnimatedRect = _
  preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio = _
  href(self : Self) -> SVGAnimatedString = _
}

///|
/// [SVGPatternElement.patternUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/patternUnits)
impl TSVGPatternElement with pattern_units(self : Self) -> SVGAnimatedEnumeration {
  svg_pattern_element_pattern_units_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPatternElement.patternContentUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/patternContentUnits)
impl TSVGPatternElement with pattern_content_units(self : Self) -> SVGAnimatedEnumeration {
  svg_pattern_element_pattern_content_units_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPatternElement.patternTransform](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/patternTransform)
impl TSVGPatternElement with pattern_transform(self : Self) -> SVGAnimatedTransformList {
  svg_pattern_element_pattern_transform_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPatternElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/x)
impl TSVGPatternElement with x(self : Self) -> SVGAnimatedLength {
  svg_pattern_element_x_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPatternElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/y)
impl TSVGPatternElement with y(self : Self) -> SVGAnimatedLength {
  svg_pattern_element_y_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPatternElement.width](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/width)
impl TSVGPatternElement with width(self : Self) -> SVGAnimatedLength {
  svg_pattern_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPatternElement.height](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/height)
impl TSVGPatternElement with height(self : Self) -> SVGAnimatedLength {
  svg_pattern_element_height_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPatternElement.viewBox](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/viewBox)
impl TSVGPatternElement with view_box(self : Self) -> SVGAnimatedRect {
  svg_pattern_element_view_box_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPatternElement.preserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/preserveAspectRatio)
impl TSVGPatternElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svg_pattern_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPatternElement.href](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/href)
impl TSVGPatternElement with href(self : Self) -> SVGAnimatedString {
  svg_pattern_element_href_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_pattern_element_pattern_units_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.patternUnits"

///|
#cfg(target="js")
fn svg_pattern_element_pattern_units_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration {
  svg_pattern_element_pattern_units_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_pattern_element_pattern_content_units_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.patternContentUnits"

///|
#cfg(target="js")
fn svg_pattern_element_pattern_content_units_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration {
  svg_pattern_element_pattern_content_units_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_pattern_element_pattern_transform_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.patternTransform"

///|
#cfg(target="js")
fn svg_pattern_element_pattern_transform_ffi(
  obj : JsValue,
) -> SVGAnimatedTransformList {
  svg_pattern_element_pattern_transform_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_pattern_element_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
fn svg_pattern_element_x_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_pattern_element_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_pattern_element_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
fn svg_pattern_element_y_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_pattern_element_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_pattern_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn svg_pattern_element_width_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_pattern_element_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_pattern_element_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn svg_pattern_element_height_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_pattern_element_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_pattern_element_view_box_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.viewBox"

///|
#cfg(target="js")
fn svg_pattern_element_view_box_ffi(obj : JsValue) -> SVGAnimatedRect {
  svg_pattern_element_view_box_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_pattern_element_preserve_aspect_ratio_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preserveAspectRatio"

///|
#cfg(target="js")
fn svg_pattern_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio {
  svg_pattern_element_preserve_aspect_ratio_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_pattern_element_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn svg_pattern_element_href_ffi(obj : JsValue) -> SVGAnimatedString {
  svg_pattern_element_href_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_pattern_element_pattern_units_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration = "webapi_SVGPatternElement" "get_patternUnits"

///|
#cfg(target="wasm-gc")
fn svg_pattern_element_pattern_content_units_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration = "webapi_SVGPatternElement" "get_patternContentUnits"

///|
#cfg(target="wasm-gc")
fn svg_pattern_element_pattern_transform_ffi(
  obj : JsValue,
) -> SVGAnimatedTransformList = "webapi_SVGPatternElement" "get_patternTransform"

///|
#cfg(target="wasm-gc")
fn svg_pattern_element_x_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGPatternElement" "get_x"

///|
#cfg(target="wasm-gc")
fn svg_pattern_element_y_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGPatternElement" "get_y"

///|
#cfg(target="wasm-gc")
fn svg_pattern_element_width_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGPatternElement" "get_width"

///|
#cfg(target="wasm-gc")
fn svg_pattern_element_height_ffi(obj : JsValue) -> SVGAnimatedLength = "webapi_SVGPatternElement" "get_height"

///|
#cfg(target="wasm-gc")
fn svg_pattern_element_view_box_ffi(obj : JsValue) -> SVGAnimatedRect = "webapi_SVGPatternElement" "get_viewBox"

///|
#cfg(target="wasm-gc")
fn svg_pattern_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio = "webapi_SVGPatternElement" "get_preserveAspectRatio"

///|
#cfg(target="wasm-gc")
fn svg_pattern_element_href_ffi(obj : JsValue) -> SVGAnimatedString = "webapi_SVGPatternElement" "get_href"
