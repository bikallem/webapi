// Do not edit. This file is generated.
// MoonBit type: SVGViewElement
// Specifications: SVG.idl

///|
#external
pub type SVGViewElement

///|
pub impl TJsValue for SVGViewElement with to_js(self : SVGViewElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGViewElement] SVGViewElement::into(self : SVGViewElement) -> T = "%identity"

///|
pub impl TSVGViewElement for SVGViewElement

///|
pub impl TSVGElement for SVGViewElement

///|
pub impl TElement for SVGViewElement

///|
pub impl TNode for SVGViewElement

///|
pub impl TEventTarget for SVGViewElement

///|
pub trait TSVGViewElement: TSVGElement {
  view_box(self : Self) -> SVGAnimatedRect = _
  preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio = _
}

///|
extern "js" fn svg_view_element_view_box_ffi(obj : JsValue) -> SVGAnimatedRect = "(obj) => obj.viewBox"

///|
impl TSVGViewElement with view_box(self : Self) -> SVGAnimatedRect {
  svg_view_element_view_box_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_view_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio = "(obj) => obj.preserveAspectRatio"

///|
impl TSVGViewElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svg_view_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self))
}
