///|
#external
pub type SVGPolygonElement

///|
pub impl TJsValue for SVGPolygonElement with to_js(self : SVGPolygonElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGPolygonElement] SVGPolygonElement::into(
  self : SVGPolygonElement,
) -> T = "%identity"

///|
pub impl TSVGPolygonElement for SVGPolygonElement

///|
pub impl TSVGGeometryElement for SVGPolygonElement

///|
pub impl TSVGGraphicsElement for SVGPolygonElement

///|
pub impl TSVGElement for SVGPolygonElement

///|
pub impl TElement for SVGPolygonElement

///|
pub impl TNode for SVGPolygonElement

///|
pub impl TEventTarget for SVGPolygonElement

///|
pub trait TSVGPolygonElement: TSVGGeometryElement {
  points(self : Self) -> SVGPointList = _
  animated_points(self : Self) -> SVGPointList = _
}

///|
extern "js" fn svg_polygon_element_points_ffi(obj : JsValue) -> SVGPointList = "(obj) => obj.points"

///|
impl TSVGPolygonElement with points(self : Self) -> SVGPointList {
  svg_polygon_element_points_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_polygon_element_animated_points_ffi(
  obj : JsValue,
) -> SVGPointList = "(obj) => obj.animatedPoints"

///|
impl TSVGPolygonElement with animated_points(self : Self) -> SVGPointList {
  svg_polygon_element_animated_points_ffi(TJsValue::to_js(self))
}
