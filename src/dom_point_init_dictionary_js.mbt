extern "js" fn dom_point_init_ffi(x: JsValue, y: JsValue, z: JsValue, w: JsValue) -> DOMPointInit = 
#|(x, y, z, w) => {
#|  const obj = {};
#|  if (x !== undefined) obj.x = x;
#|  if (y !== undefined) obj.y = y;
#|  if (z !== undefined) obj.z = z;
#|  if (w !== undefined) obj.w = w;
#|  return obj;
#|}

extern "js" fn dom_point_init_empty_ffi() -> DOMPointInit = "() => {}"