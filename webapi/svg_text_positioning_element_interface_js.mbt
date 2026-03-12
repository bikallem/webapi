///|
extern "js" fn svg_text_positioning_element_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
fn svg_text_positioning_element_x_ffi(obj : JsValue) -> SVGAnimatedLengthList {
  svg_text_positioning_element_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_text_positioning_element_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
fn svg_text_positioning_element_y_ffi(obj : JsValue) -> SVGAnimatedLengthList {
  svg_text_positioning_element_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_text_positioning_element_dx_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dx"

///|
fn svg_text_positioning_element_dx_ffi(obj : JsValue) -> SVGAnimatedLengthList {
  svg_text_positioning_element_dx_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_text_positioning_element_dy_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dy"

///|
fn svg_text_positioning_element_dy_ffi(obj : JsValue) -> SVGAnimatedLengthList {
  svg_text_positioning_element_dy_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_text_positioning_element_rotate_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.rotate"

///|
fn svg_text_positioning_element_rotate_ffi(
  obj : JsValue,
) -> SVGAnimatedNumberList {
  svg_text_positioning_element_rotate_ffi_js(obj).unsafe_cast()
}
