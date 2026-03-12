extern "js" fn svg_use_element_x_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.x"

///|
fn svg_use_element_x_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_use_element_x_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_use_element_y_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.y"

///|
fn svg_use_element_y_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_use_element_y_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_use_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
fn svg_use_element_width_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_use_element_width_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_use_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
fn svg_use_element_height_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_use_element_height_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_use_element_instance_root_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.instanceRoot"

///|
fn svg_use_element_instance_root_ffi(obj: JsValue) -> SVGElement {
  svg_use_element_instance_root_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_use_element_animated_instance_root_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.animatedInstanceRoot"

///|
fn svg_use_element_animated_instance_root_ffi(obj: JsValue) -> SVGElement {
  svg_use_element_animated_instance_root_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_use_element_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
fn svg_use_element_href_ffi(obj: JsValue) -> SVGAnimatedString {
  svg_use_element_href_ffi_js(obj).unsafe_cast()
}