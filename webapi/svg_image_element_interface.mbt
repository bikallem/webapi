// Do not edit. This file is generated.
// MoonBit type: SVGImageElement
// Specifications: SVG.idl

///|
/// [SVGImageElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement)
#external
pub type SVGImageElement

///|
pub impl TJsValue for SVGImageElement with to_js(self : SVGImageElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGImageElement with from_js_any(value : JsAny) -> SVGImageElement = "%identity"

///|
pub fn[T : TSVGImageElement] SVGImageElement::into(self : SVGImageElement) -> T = "%identity"

///|
pub impl TSVGImageElement for SVGImageElement

///|
pub impl TSVGGraphicsElement for SVGImageElement

///|
pub impl TSVGElement for SVGImageElement

///|
pub impl TElement for SVGImageElement

///|
pub impl TNode for SVGImageElement

///|
pub impl TEventTarget for SVGImageElement

///|
/// [SVGImageElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement) interface.
pub trait TSVGImageElement: TSVGGraphicsElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
  preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio = _
  cross_origin(self : Self) -> String = _
  set_cross_origin(self : Self, cross_origin : String) -> Unit = _
  href(self : Self) -> SVGAnimatedString = _
}

///|
/// [SVGImageElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/x)
impl TSVGImageElement with x(self : Self) -> SVGAnimatedLength {
  svg_image_element_x_ffi(TJsValue::to_js(self))
}

///|
/// [SVGImageElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/y)
impl TSVGImageElement with y(self : Self) -> SVGAnimatedLength {
  svg_image_element_y_ffi(TJsValue::to_js(self))
}

///|
/// [SVGImageElement.width](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/width)
impl TSVGImageElement with width(self : Self) -> SVGAnimatedLength {
  svg_image_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [SVGImageElement.height](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/height)
impl TSVGImageElement with height(self : Self) -> SVGAnimatedLength {
  svg_image_element_height_ffi(TJsValue::to_js(self))
}

///|
/// [SVGImageElement.preserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/preserveAspectRatio)
impl TSVGImageElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svg_image_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self))
}

///|
/// [SVGImageElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/crossOrigin)
impl TSVGImageElement with cross_origin(self : Self) -> String {
  svg_image_element_cross_origin_ffi(TJsValue::to_js(self))
}

///|
/// [SVGImageElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/crossOrigin)
impl TSVGImageElement with set_cross_origin(self : Self, cross_origin : String) -> Unit {
  svg_image_element_set_cross_origin_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cross_origin),
  )
}

///|
/// [SVGImageElement.href](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/href)
impl TSVGImageElement with href(self : Self) -> SVGAnimatedString {
  svg_image_element_href_ffi(TJsValue::to_js(self))
}
