///|
extern "js" fn dom_quad_init_ffi(
  p1 : JsValue,
  p2 : JsValue,
  p3 : JsValue,
  p4 : JsValue,
) -> DOMQuadInit =
  #|(p1, p2, p3, p4) => {
  #|  const obj = {};
  #|  if (p1 !== undefined) obj.p1 = p1;
  #|  if (p2 !== undefined) obj.p2 = p2;
  #|  if (p3 !== undefined) obj.p3 = p3;
  #|  if (p4 !== undefined) obj.p4 = p4;
  #|  return obj;
  #|}

///|
extern "js" fn dom_quad_init_empty_ffi() -> DOMQuadInit = "() => {}"

///|
extern "js" fn dom_quad_init_get_p1_ffi(obj : JsValue) -> JsValue = "(obj) => obj.p1"

///|
extern "js" fn dom_quad_init_get_p2_ffi(obj : JsValue) -> JsValue = "(obj) => obj.p2"

///|
extern "js" fn dom_quad_init_get_p3_ffi(obj : JsValue) -> JsValue = "(obj) => obj.p3"

///|
extern "js" fn dom_quad_init_get_p4_ffi(obj : JsValue) -> JsValue = "(obj) => obj.p4"
