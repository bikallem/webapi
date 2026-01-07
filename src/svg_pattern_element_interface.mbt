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
pub fn[T : TSVGPatternElement] SVGPatternElement::into(
  self : SVGPatternElement,
) -> T = "%identity"

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
extern "js" fn svg_pattern_element_pattern_units_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration = "(obj) => obj.patternUnits"

///|
/// [SVGPatternElement.patternUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/patternUnits)
impl TSVGPatternElement with pattern_units(self : Self) -> SVGAnimatedEnumeration {
  svg_pattern_element_pattern_units_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_pattern_element_pattern_content_units_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration = "(obj) => obj.patternContentUnits"

///|
/// [SVGPatternElement.patternContentUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/patternContentUnits)
impl TSVGPatternElement with pattern_content_units(self : Self) -> SVGAnimatedEnumeration {
  svg_pattern_element_pattern_content_units_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_pattern_element_pattern_transform_ffi(
  obj : JsValue,
) -> SVGAnimatedTransformList = "(obj) => obj.patternTransform"

///|
/// [SVGPatternElement.patternTransform](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/patternTransform)
impl TSVGPatternElement with pattern_transform(self : Self) -> SVGAnimatedTransformList {
  svg_pattern_element_pattern_transform_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_pattern_element_x_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.x"

///|
/// [SVGPatternElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/x)
impl TSVGPatternElement with x(self : Self) -> SVGAnimatedLength {
  svg_pattern_element_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_pattern_element_y_ffi(obj : JsValue) -> SVGAnimatedLength = "(obj) => obj.y"

///|
/// [SVGPatternElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/y)
impl TSVGPatternElement with y(self : Self) -> SVGAnimatedLength {
  svg_pattern_element_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_pattern_element_width_ffi(
  obj : JsValue,
) -> SVGAnimatedLength = "(obj) => obj.width"

///|
/// [SVGPatternElement.width](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/width)
impl TSVGPatternElement with width(self : Self) -> SVGAnimatedLength {
  svg_pattern_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_pattern_element_height_ffi(
  obj : JsValue,
) -> SVGAnimatedLength = "(obj) => obj.height"

///|
/// [SVGPatternElement.height](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/height)
impl TSVGPatternElement with height(self : Self) -> SVGAnimatedLength {
  svg_pattern_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_pattern_element_view_box_ffi(
  obj : JsValue,
) -> SVGAnimatedRect = "(obj) => obj.viewBox"

///|
/// [SVGPatternElement.viewBox](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/viewBox)
impl TSVGPatternElement with view_box(self : Self) -> SVGAnimatedRect {
  svg_pattern_element_view_box_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_pattern_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio = "(obj) => obj.preserveAspectRatio"

///|
/// [SVGPatternElement.preserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/preserveAspectRatio)
impl TSVGPatternElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svg_pattern_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_pattern_element_href_ffi(obj : JsValue) -> SVGAnimatedString = "(obj) => obj.href"

///|
/// [SVGPatternElement.href](https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement/href)
impl TSVGPatternElement with href(self : Self) -> SVGAnimatedString {
  svg_pattern_element_href_ffi(TJsValue::to_js(self))
}
