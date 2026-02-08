///|
extern "js" fn svg_image_element_x_ffi(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
extern "js" fn svg_image_element_y_ffi(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
extern "js" fn svg_image_element_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn svg_image_element_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
extern "js" fn svg_image_element_preserve_aspect_ratio_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.preserveAspectRatio"

///|
extern "js" fn svg_image_element_cross_origin_ffi(obj : JsValue) -> JsValue = "(obj) => obj.crossOrigin"

///|
extern "js" fn svg_image_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

///|
extern "js" fn svg_image_element_href_ffi(obj : JsValue) -> JsValue = "(obj) => obj.href"
