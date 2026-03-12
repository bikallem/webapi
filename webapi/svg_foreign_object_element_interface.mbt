// Do not edit. This file is generated.
// MoonBit type: SVGForeignObjectElement
// Specifications: SVG.idl

///|
/// [SVGForeignObjectElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement)
#external
pub type SVGForeignObjectElement

///|
pub impl TJsValue for SVGForeignObjectElement with to_js(
  self : SVGForeignObjectElement,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGForeignObjectElement with from_js_any(value : JsAny) -> SVGForeignObjectElement = "%identity"

///|
pub fn[T : TSVGForeignObjectElement] SVGForeignObjectElement::into(
  self : SVGForeignObjectElement,
) -> T = "%identity"

///|
pub impl TSVGForeignObjectElement for SVGForeignObjectElement

///|
pub impl TSVGGraphicsElement for SVGForeignObjectElement

///|
pub impl TSVGElement for SVGForeignObjectElement

///|
pub impl TElement for SVGForeignObjectElement

///|
pub impl TNode for SVGForeignObjectElement

///|
pub impl TEventTarget for SVGForeignObjectElement

///|
/// [SVGForeignObjectElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement) interface.
pub trait TSVGForeignObjectElement: TSVGGraphicsElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
}

///|
/// [SVGForeignObjectElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement/x)
impl TSVGForeignObjectElement with x(self : Self) -> SVGAnimatedLength {
  svg_foreign_object_element_x_ffi(TJsValue::to_js(self))
}

///|
/// [SVGForeignObjectElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement/y)
impl TSVGForeignObjectElement with y(self : Self) -> SVGAnimatedLength {
  svg_foreign_object_element_y_ffi(TJsValue::to_js(self))
}

///|
/// [SVGForeignObjectElement.width](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement/width)
impl TSVGForeignObjectElement with width(self : Self) -> SVGAnimatedLength {
  svg_foreign_object_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [SVGForeignObjectElement.height](https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement/height)
impl TSVGForeignObjectElement with height(self : Self) -> SVGAnimatedLength {
  svg_foreign_object_element_height_ffi(TJsValue::to_js(self))
}
