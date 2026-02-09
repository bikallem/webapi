///|
extern "js" fn svg_circle_element_cx_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cx"

///|
fn svg_circle_element_cx_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_circle_element_cx_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_circle_element_cy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cy"

///|
fn svg_circle_element_cy_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_circle_element_cy_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_circle_element_r_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.r"

///|
fn svg_circle_element_r_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_circle_element_r_ffi_js(obj).unsafe_cast()
}
