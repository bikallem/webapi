///|
extern "js" fn svg_marker_element_ref_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.refX"

///|
fn svg_marker_element_ref_x_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_marker_element_ref_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_marker_element_ref_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.refY"

///|
fn svg_marker_element_ref_y_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_marker_element_ref_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_marker_element_marker_units_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.markerUnits"

///|
fn svg_marker_element_marker_units_ffi(obj : JsValue) -> SVGAnimatedEnumeration {
  svg_marker_element_marker_units_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_marker_element_marker_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.markerWidth"

///|
fn svg_marker_element_marker_width_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_marker_element_marker_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_marker_element_marker_height_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.markerHeight"

///|
fn svg_marker_element_marker_height_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_marker_element_marker_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_marker_element_orient_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.orientType"

///|
fn svg_marker_element_orient_type_ffi(obj : JsValue) -> SVGAnimatedEnumeration {
  svg_marker_element_orient_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_marker_element_orient_angle_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.orientAngle"

///|
fn svg_marker_element_orient_angle_ffi(obj : JsValue) -> SVGAnimatedAngle {
  svg_marker_element_orient_angle_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_marker_element_orient_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.orient"

///|
fn svg_marker_element_orient_ffi(obj : JsValue) -> String {
  svg_marker_element_orient_ffi_js(obj).unsafe_cast()
}

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
extern "js" fn svg_marker_element_view_box_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.viewBox"

///|
fn svg_marker_element_view_box_ffi(obj : JsValue) -> SVGAnimatedRect {
  svg_marker_element_view_box_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_marker_element_preserve_aspect_ratio_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preserveAspectRatio"

///|
fn svg_marker_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio {
  svg_marker_element_preserve_aspect_ratio_ffi_js(obj).unsafe_cast()
}
