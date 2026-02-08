///|
extern "js" fn svg_marker_element_ref_x_ffi(obj : JsValue) -> JsValue = "(obj) => obj.refX"

///|
extern "js" fn svg_marker_element_ref_y_ffi(obj : JsValue) -> JsValue = "(obj) => obj.refY"

///|
extern "js" fn svg_marker_element_marker_units_ffi(obj : JsValue) -> JsValue = "(obj) => obj.markerUnits"

///|
extern "js" fn svg_marker_element_marker_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.markerWidth"

///|
extern "js" fn svg_marker_element_marker_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.markerHeight"

///|
extern "js" fn svg_marker_element_orient_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.orientType"

///|
extern "js" fn svg_marker_element_orient_angle_ffi(obj : JsValue) -> JsValue = "(obj) => obj.orientAngle"

///|
extern "js" fn svg_marker_element_orient_ffi(obj : JsValue) -> JsValue = "(obj) => obj.orient"

///|
extern "js" fn svg_marker_element_set_orient_ffi(
  obj : JsValue,
  orient : JsValue,
) -> Unit = "(obj, orient) => { obj.orient = orient; }"

///|
extern "js" fn svg_marker_element_set_orient_to_auto_ffi(obj : JsValue) -> Unit = "(obj) => obj.setOrientToAuto()"

///|
extern "js" fn svg_marker_element_set_orient_to_angle_ffi(
  obj : JsValue,
  angle : JsValue,
) -> Unit = "(obj, angle) => obj.setOrientToAngle(angle)"

///|
extern "js" fn svg_marker_element_view_box_ffi(obj : JsValue) -> JsValue = "(obj) => obj.viewBox"

///|
extern "js" fn svg_marker_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preserveAspectRatio"
