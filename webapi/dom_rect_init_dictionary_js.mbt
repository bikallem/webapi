extern "js" fn dom_rect_init_ffi(x: JsValue, y: JsValue, width: JsValue, height: JsValue) -> DOMRectInit = 
#|(x, y, width, height) => {
#|  const obj = {};
#|  if (x !== undefined) obj.x = x;
#|  if (y !== undefined) obj.y = y;
#|  if (width !== undefined) obj.width = width;
#|  if (height !== undefined) obj.height = height;
#|  return obj;
#|}

extern "js" fn dom_rect_init_empty_ffi() -> DOMRectInit = "() => {}"

extern "js" fn dom_rect_init_get_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.x"

extern "js" fn dom_rect_init_get_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.y"

extern "js" fn dom_rect_init_get_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.width"

extern "js" fn dom_rect_init_get_height_ffi(obj: JsValue) -> JsValue = "(obj) => obj.height"