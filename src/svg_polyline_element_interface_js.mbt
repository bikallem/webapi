///|
extern "js" fn svg_polyline_element_points_ffi(obj : JsValue) -> JsValue = "(obj) => obj.points"

///|
extern "js" fn svg_polyline_element_animated_points_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.animatedPoints"
