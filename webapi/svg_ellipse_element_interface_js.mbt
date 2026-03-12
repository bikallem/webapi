extern "js" fn svg_ellipse_element_cx_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cx"

///|
fn svg_ellipse_element_cx_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_ellipse_element_cx_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_ellipse_element_cy_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cy"

///|
fn svg_ellipse_element_cy_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_ellipse_element_cy_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_ellipse_element_rx_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rx"

///|
fn svg_ellipse_element_rx_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_ellipse_element_rx_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_ellipse_element_ry_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ry"

///|
fn svg_ellipse_element_ry_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_ellipse_element_ry_ffi_js(obj).unsafe_cast()
}