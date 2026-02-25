///|
extern "js" fn svg_polygon_element_points_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.points"

///|
fn svg_polygon_element_points_ffi(obj : JsValue) -> SVGPointList {
  svg_polygon_element_points_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_polygon_element_animated_points_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.animatedPoints"

///|
fn svg_polygon_element_animated_points_ffi(obj : JsValue) -> SVGPointList {
  svg_polygon_element_animated_points_ffi_js(obj).unsafe_cast()
}
