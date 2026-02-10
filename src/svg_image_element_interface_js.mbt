///|
extern "js" fn svg_image_element_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
fn svg_image_element_x_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_image_element_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_image_element_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
fn svg_image_element_y_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_image_element_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_image_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
fn svg_image_element_width_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_image_element_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_image_element_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
fn svg_image_element_height_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_image_element_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_image_element_preserve_aspect_ratio_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preserveAspectRatio"

///|
fn svg_image_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> SVGAnimatedPreserveAspectRatio {
  svg_image_element_preserve_aspect_ratio_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_image_element_cross_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.crossOrigin"

///|
fn svg_image_element_cross_origin_ffi(obj : JsValue) -> String {
  svg_image_element_cross_origin_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_image_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

///|
extern "js" fn svg_image_element_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
fn svg_image_element_href_ffi(obj : JsValue) -> SVGAnimatedString {
  svg_image_element_href_ffi_js(obj).unsafe_cast()
}
