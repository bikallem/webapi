// Do not edit. This file is generated.
// MoonBit type: SVGViewElement
// Specifications: SVG.idl

///|
/// [SVGViewElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGViewElement)
#external
pub type SVGViewElement

///|
pub impl TJsValue for SVGViewElement with to_js(self : SVGViewElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGViewElement with from_js_any(value : JsAny) -> SVGViewElement = "%identity"

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
/// [SVGViewElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGViewElement) interface.
pub trait TSVGViewElement: TSVGElement {
  view_box(self : Self) -> SVGAnimatedRect = _
  preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio = _
}

///|
/// [SVGViewElement.viewBox](https://developer.mozilla.org/en-US/docs/Web/API/SVGViewElement/viewBox)
impl TSVGViewElement with view_box(self : Self) -> SVGAnimatedRect {
  svg_view_element_view_box_ffi(TJsValue::to_js(self))
}

///|
/// [SVGViewElement.preserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGViewElement/preserveAspectRatio)
impl TSVGViewElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svg_view_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_view_element_view_box_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.viewBox"

///|
#cfg(target="js")
fn svg_view_element_view_box_ffi(obj : JsValue) -> SVGAnimatedRect {
  svg_view_element_view_box_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_view_element_preserve_aspect_ratio_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preserveAspectRatio"

///|
#cfg(target="js")
fn svg_view_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio {
  svg_view_element_preserve_aspect_ratio_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_view_element_view_box_ffi(obj : JsValue) -> SVGAnimatedRect = "webapi_SVGViewElement" "get_viewBox"

///|
#cfg(target="wasm-gc")
fn svg_view_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio = "webapi_SVGViewElement" "get_preserveAspectRatio"
