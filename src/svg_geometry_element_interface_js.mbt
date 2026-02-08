///|
extern "js" fn svg_geometry_element_path_length_ffi(obj : JsValue) -> JsValue = "(obj) => obj.pathLength"

///|
extern "js" fn svg_geometry_element_is_point_in_fill_ffi(
  obj : JsValue,
  point : JsValue,
) -> JsValue = "(obj, point) => obj.isPointInFill(point)"

///|
extern "js" fn svg_geometry_element_is_point_in_stroke_ffi(
  obj : JsValue,
  point : JsValue,
) -> JsValue = "(obj, point) => obj.isPointInStroke(point)"

///|
extern "js" fn svg_geometry_element_get_total_length_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getTotalLength()"

///|
extern "js" fn svg_geometry_element_get_point_at_length_ffi(
  obj : JsValue,
  distance : JsValue,
) -> JsValue = "(obj, distance) => obj.getPointAtLength(distance)"
