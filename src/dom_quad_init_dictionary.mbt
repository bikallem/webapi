// Do not edit. This file is generated.
// MoonBit type: DOMQuadInit
// Specifications: geometry.idl

///|
#external
pub type DOMQuadInit

///|
pub impl TJsValue for DOMQuadInit with to_js(self : DOMQuadInit) -> JsValue = "%identity"

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
pub fn DOMQuadInit::new(
  p1? : DOMPointInit,
  p2? : DOMPointInit,
  p3? : DOMPointInit,
  p4? : DOMPointInit,
) -> DOMQuadInit {
  dom_quad_init_ffi(opt_to_js(p1), opt_to_js(p2), opt_to_js(p3), opt_to_js(p4))
}

///|
extern "js" fn dom_quad_init_empty_ffi() -> DOMQuadInit = "() => {}"

///|
pub fn DOMQuadInit::empty() -> DOMQuadInit {
  dom_quad_init_empty_ffi()
}
