extern "js" fn box_quad_options_ffi(box: JsValue, relative_to: JsValue) -> BoxQuadOptions = 
#|(box, relativeTo) => {
#|  const obj = {};
#|  if (box !== undefined) obj.box = box;
#|  if (relativeTo !== undefined) obj.relativeTo = relativeTo;
#|  return obj;
#|}

extern "js" fn box_quad_options_empty_ffi() -> BoxQuadOptions = "() => {}"