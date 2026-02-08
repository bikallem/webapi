///|
extern "js" fn svg_gradient_element_gradient_units_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.gradientUnits"

///|
extern "js" fn svg_gradient_element_gradient_transform_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.gradientTransform"

///|
extern "js" fn svg_gradient_element_spread_method_ffi(obj : JsValue) -> JsValue = "(obj) => obj.spreadMethod"

///|
extern "js" fn svg_gradient_element_href_ffi(obj : JsValue) -> JsValue = "(obj) => obj.href"
