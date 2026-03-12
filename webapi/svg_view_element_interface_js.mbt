extern "js" fn svg_view_element_view_box_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.viewBox"

///|
fn svg_view_element_view_box_ffi(obj: JsValue) -> SVGAnimatedRect {
  svg_view_element_view_box_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_view_element_preserve_aspect_ratio_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.preserveAspectRatio"

///|
fn svg_view_element_preserve_aspect_ratio_ffi(obj: JsValue) -> SVGAnimatedPreserveAspectRatio {
  svg_view_element_preserve_aspect_ratio_ffi_js(obj).unsafe_cast()
}