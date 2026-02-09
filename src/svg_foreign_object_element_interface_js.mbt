///|
extern "js" fn svg_foreign_object_element_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
fn svg_foreign_object_element_x_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_foreign_object_element_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_foreign_object_element_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
fn svg_foreign_object_element_y_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_foreign_object_element_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_foreign_object_element_width_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.width"

///|
fn svg_foreign_object_element_width_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_foreign_object_element_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_foreign_object_element_height_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.height"

///|
fn svg_foreign_object_element_height_ffi(obj : JsValue) -> SVGAnimatedLength {
  svg_foreign_object_element_height_ffi_js(obj).unsafe_cast()
}
