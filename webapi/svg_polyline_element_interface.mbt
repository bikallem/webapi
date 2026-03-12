// Do not edit. This file is generated.
// MoonBit type: SVGPolylineElement
// Specifications: SVG.idl

///|
/// [SVGPolylineElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement)
#external
pub type SVGPolylineElement

///|
pub impl TJsValue for SVGPolylineElement with to_js(self : SVGPolylineElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGPolylineElement with from_js_any(value : JsAny) -> SVGPolylineElement = "%identity"

///|
pub fn[T : TSVGPolylineElement] SVGPolylineElement::into(
  self : SVGPolylineElement,
) -> T = "%identity"

///|
pub impl TSVGPolylineElement for SVGPolylineElement

///|
pub impl TSVGGeometryElement for SVGPolylineElement

///|
pub impl TSVGGraphicsElement for SVGPolylineElement

///|
pub impl TSVGElement for SVGPolylineElement

///|
pub impl TElement for SVGPolylineElement

///|
pub impl TNode for SVGPolylineElement

///|
pub impl TEventTarget for SVGPolylineElement

///|
/// [SVGPolylineElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement) interface.
pub trait TSVGPolylineElement: TSVGGeometryElement {
  points(self : Self) -> SVGPointList = _
  animated_points(self : Self) -> SVGPointList = _
}

///|
/// [SVGPolylineElement.points](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement/points)
impl TSVGPolylineElement with points(self : Self) -> SVGPointList {
  svg_polyline_element_points_ffi(TJsValue::to_js(self))
}

///|
/// [SVGPolylineElement.animatedPoints](https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement/animatedPoints)
impl TSVGPolylineElement with animated_points(self : Self) -> SVGPointList {
  svg_polyline_element_animated_points_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_polyline_element_points_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.points"

///|
#cfg(target="js")
fn svg_polyline_element_points_ffi(obj : JsValue) -> SVGPointList {
  svg_polyline_element_points_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_polyline_element_animated_points_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.animatedPoints"

///|
#cfg(target="js")
fn svg_polyline_element_animated_points_ffi(obj : JsValue) -> SVGPointList {
  svg_polyline_element_animated_points_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_polyline_element_points_ffi(obj : JsValue) -> SVGPointList = "webapi_SVGPolylineElement" "get_points"

///|
#cfg(target="wasm-gc")
fn svg_polyline_element_animated_points_ffi(obj : JsValue) -> SVGPointList = "webapi_SVGPolylineElement" "get_animatedPoints"
