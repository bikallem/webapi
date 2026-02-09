///|
extern "js" fn svg_linear_gradient_element_x1_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x1"

///|
fn svg_linear_gradient_element_x1_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_linear_gradient_element_x1_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_linear_gradient_element_y1_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y1"

///|
fn svg_linear_gradient_element_y1_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_linear_gradient_element_y1_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_linear_gradient_element_x2_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x2"

///|
fn svg_linear_gradient_element_x2_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_linear_gradient_element_x2_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_linear_gradient_element_y2_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y2"

///|
fn svg_linear_gradient_element_y2_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_linear_gradient_element_y2_ffi_js(obj).unsafe_cast()
}
