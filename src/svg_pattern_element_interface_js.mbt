///|
extern "js" fn svg_pattern_element_pattern_units_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.patternUnits"

///|
fn svg_pattern_element_pattern_units_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration {
  svg_pattern_element_pattern_units_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_pattern_element_pattern_content_units_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.patternContentUnits"

///|
fn svg_pattern_element_pattern_content_units_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration {
  svg_pattern_element_pattern_content_units_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_pattern_element_pattern_transform_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.patternTransform"

///|
fn svg_pattern_element_pattern_transform_ffi(
  obj : JsValue,
) -> SVGAnimatedTransformList {
  svg_pattern_element_pattern_transform_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_pattern_element_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
fn svg_pattern_element_x_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_pattern_element_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_pattern_element_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
fn svg_pattern_element_y_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_pattern_element_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_pattern_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
fn svg_pattern_element_width_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_pattern_element_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_pattern_element_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
fn svg_pattern_element_height_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_pattern_element_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_pattern_element_view_box_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.viewBox"

///|
fn svg_pattern_element_view_box_ffi(obj : JsValue) -> SVGAnimatedRect {
  svg_pattern_element_view_box_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_pattern_element_preserve_aspect_ratio_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preserveAspectRatio"

///|
fn svg_pattern_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio {
  svg_pattern_element_preserve_aspect_ratio_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_pattern_element_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
fn svg_pattern_element_href_ffi(obj : JsValue) -> SVGAnimatedString {
  svg_pattern_element_href_ffi_js(obj).unsafe_cast()
}
