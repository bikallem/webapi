///|
extern "js" fn svg_gradient_element_gradient_units_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.gradientUnits"

///|
fn svg_gradient_element_gradient_units_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration {
  svg_gradient_element_gradient_units_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_gradient_element_gradient_transform_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.gradientTransform"

///|
fn svg_gradient_element_gradient_transform_ffi(
  obj : JsValue,
) -> SVGAnimatedTransformList {
  svg_gradient_element_gradient_transform_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_gradient_element_spread_method_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.spreadMethod"

///|
fn svg_gradient_element_spread_method_ffi(
  obj : JsValue,
) -> SVGAnimatedEnumeration {
  svg_gradient_element_spread_method_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn svg_gradient_element_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
fn svg_gradient_element_href_ffi(obj : JsValue) -> SVGAnimatedString {
  svg_gradient_element_href_ffi_js(obj).unsafe_cast()
}
