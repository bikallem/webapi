///|
extern "js" fn svg_radial_gradient_element_cx_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cx"

///|
fn svg_radial_gradient_element_cx_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_radial_gradient_element_cx_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_radial_gradient_element_cy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cy"

///|
fn svg_radial_gradient_element_cy_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_radial_gradient_element_cy_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_radial_gradient_element_r_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.r"

///|
fn svg_radial_gradient_element_r_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_radial_gradient_element_r_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_radial_gradient_element_fx_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fx"

///|
fn svg_radial_gradient_element_fx_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_radial_gradient_element_fx_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_radial_gradient_element_fy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fy"

///|
fn svg_radial_gradient_element_fy_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_radial_gradient_element_fy_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_radial_gradient_element_fr_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.fr"

///|
fn svg_radial_gradient_element_fr_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_radial_gradient_element_fr_ffi_js(obj).unsafe_cast()
}
