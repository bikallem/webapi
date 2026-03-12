extern "js" fn box_quad_options_ffi(box: JsValue, relative_to: JsValue) -> BoxQuadOptions = 
#|(box, relativeTo) => {
#|  const obj = {};
#|  if (box !== undefined) obj.box = box;
#|  if (relativeTo !== undefined) obj.relativeTo = relativeTo;
#|  return obj;
#|}

extern "js" fn box_quad_options_empty_ffi() -> BoxQuadOptions = "() => {}"

extern "js" fn box_quad_options_get_box_ffi(obj: JsValue) -> JsValue = "(obj) => obj.box"

extern "js" fn box_quad_options_get_relative_to_ffi(obj: JsValue) -> JsValue = "(obj) => obj.relativeTo"