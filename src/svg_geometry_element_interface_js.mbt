///|
extern "js" fn svg_geometry_element_path_length_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.pathLength"

///|
fn svg_geometry_element_path_length_ffi(obj : JsValue) -> SVGAnimatedNumber {
  svg_geometry_element_path_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_geometry_element_is_point_in_fill_ffi_js(
  obj : JsValue,
  point : JsValue,
) -> JsValue = "(obj, point) => obj.isPointInFill(point)"

///|
fn svg_geometry_element_is_point_in_fill_ffi(
  obj : JsValue,
  point : JsValue,
) -> Bool {
  svg_geometry_element_is_point_in_fill_ffi_js(obj, point).unsafe_cast()
}

///|
extern "js" fn svg_geometry_element_is_point_in_stroke_ffi_js(
  obj : JsValue,
  point : JsValue,
) -> JsValue = "(obj, point) => obj.isPointInStroke(point)"

///|
fn svg_geometry_element_is_point_in_stroke_ffi(
  obj : JsValue,
  point : JsValue,
) -> Bool {
  svg_geometry_element_is_point_in_stroke_ffi_js(obj, point).unsafe_cast()
}

///|
extern "js" fn svg_geometry_element_get_total_length_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getTotalLength()"

///|
fn svg_geometry_element_get_total_length_ffi(obj : JsValue) -> Float {
  svg_geometry_element_get_total_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_geometry_element_get_point_at_length_ffi_js(
  obj : JsValue,
  distance : JsValue,
) -> JsValue = "(obj, distance) => obj.getPointAtLength(distance)"

///|
fn svg_geometry_element_get_point_at_length_ffi(
  obj : JsValue,
  distance : JsValue,
) -> DOMPoint {
  svg_geometry_element_get_point_at_length_ffi_js(obj, distance).unsafe_cast()
}
