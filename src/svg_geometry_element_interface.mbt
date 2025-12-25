// Do not edit. This file is generated.
// MoonBit type: SVGGeometryElement
// Specifications: SVG.idl

///|
#external
pub type SVGGeometryElement

///|
pub impl TJsValue for SVGGeometryElement with to_js(self : SVGGeometryElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGGeometryElement] SVGGeometryElement::into(
  self : SVGGeometryElement,
) -> T = "%identity"

///|
pub impl TSVGGeometryElement for SVGGeometryElement

///|
pub impl TSVGGraphicsElement for SVGGeometryElement

///|
pub impl TSVGElement for SVGGeometryElement

///|
pub impl TElement for SVGGeometryElement

///|
pub impl TNode for SVGGeometryElement

///|
pub impl TEventTarget for SVGGeometryElement

///|
pub trait TSVGGeometryElement: TSVGGraphicsElement {
  path_length(self : Self) -> SVGAnimatedNumber = _
  is_point_in_fill(self : Self, point? : DOMPointInit) -> Bool = _
  is_point_in_stroke(self : Self, point? : DOMPointInit) -> Bool = _
  get_total_length(self : Self) -> Float = _
  get_point_at_length(self : Self, distance : Float) -> DOMPoint = _
}

///|
extern "js" fn svg_geometry_element_path_length_ffi(
  obj : JsValue,
) -> SVGAnimatedNumber = "(obj) => obj.pathLength"

///|
impl TSVGGeometryElement with path_length(self : Self) -> SVGAnimatedNumber {
  svg_geometry_element_path_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_geometry_element_is_point_in_fill_ffi(
  obj : JsValue,
  point : JsValue,
) -> Bool = "(obj, point) => obj.isPointInFill(obj, point)"

///|
impl TSVGGeometryElement with is_point_in_fill(
  self : Self,
  point? : DOMPointInit = DOMPointInit::empty(),
) -> Bool {
  svg_geometry_element_is_point_in_fill_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
  )
}

///|
extern "js" fn svg_geometry_element_is_point_in_stroke_ffi(
  obj : JsValue,
  point : JsValue,
) -> Bool = "(obj, point) => obj.isPointInStroke(obj, point)"

///|
impl TSVGGeometryElement with is_point_in_stroke(
  self : Self,
  point? : DOMPointInit = DOMPointInit::empty(),
) -> Bool {
  svg_geometry_element_is_point_in_stroke_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
  )
}

///|
extern "js" fn svg_geometry_element_get_total_length_ffi(
  obj : JsValue,
) -> Float = "(obj) => obj.getTotalLength(obj)"

///|
impl TSVGGeometryElement with get_total_length(self : Self) -> Float {
  svg_geometry_element_get_total_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_geometry_element_get_point_at_length_ffi(
  obj : JsValue,
  distance : JsValue,
) -> DOMPoint = "(obj, distance) => obj.getPointAtLength(obj, distance)"

///|
impl TSVGGeometryElement with get_point_at_length(self : Self, distance : Float) -> DOMPoint {
  svg_geometry_element_get_point_at_length_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(distance),
  )
}
