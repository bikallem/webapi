///|
extern "js" fn svg_use_element_x_ffi(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
extern "js" fn svg_use_element_y_ffi(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
extern "js" fn svg_use_element_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn svg_use_element_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
extern "js" fn svg_use_element_instance_root_ffi(obj : JsValue) -> JsValue = "(obj) => obj.instanceRoot"

///|
extern "js" fn svg_use_element_animated_instance_root_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.animatedInstanceRoot"

///|
extern "js" fn svg_use_element_href_ffi(obj : JsValue) -> JsValue = "(obj) => obj.href"
