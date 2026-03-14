// Do not edit. This file is generated.
// MoonBit type: DOMQuadInit
// Specifications: geometry.idl

///|
/// [DOMQuadInit](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuadInit)
#external
pub type DOMQuadInit

///|
pub impl TJsValue for DOMQuadInit with to_js(self : DOMQuadInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for DOMQuadInit with from_js_any(value : JsAny) -> DOMQuadInit = "%identity"

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
pub fn DOMQuadInit::empty() -> DOMQuadInit {
  dom_quad_init_empty_ffi()
}

///|
pub fn DOMQuadInit::p1(self : DOMQuadInit) -> DOMPointInit? {
  dom_quad_init_get_p1_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DOMQuadInit::p2(self : DOMQuadInit) -> DOMPointInit? {
  dom_quad_init_get_p2_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DOMQuadInit::p3(self : DOMQuadInit) -> DOMPointInit? {
  dom_quad_init_get_p3_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DOMQuadInit::p4(self : DOMQuadInit) -> DOMPointInit? {
  dom_quad_init_get_p4_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
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
#cfg(target="js")
extern "js" fn dom_quad_init_empty_ffi() -> DOMQuadInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn dom_quad_init_get_p1_ffi(obj : JsValue) -> JsValue = "(obj) => obj.p1"

///|
#cfg(target="js")
extern "js" fn dom_quad_init_get_p2_ffi(obj : JsValue) -> JsValue = "(obj) => obj.p2"

///|
#cfg(target="js")
extern "js" fn dom_quad_init_get_p3_ffi(obj : JsValue) -> JsValue = "(obj) => obj.p3"

///|
#cfg(target="js")
extern "js" fn dom_quad_init_get_p4_ffi(obj : JsValue) -> JsValue = "(obj) => obj.p4"

///|
#cfg(target="wasm-gc")
fn dom_quad_init_ffi(
  p1 : JsValue,
  p2 : JsValue,
  p3 : JsValue,
  p4 : JsValue,
) -> DOMQuadInit = "webapi_DOMQuadInit" "new"

///|
#cfg(target="wasm-gc")
fn dom_quad_init_empty_ffi() -> DOMQuadInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn dom_quad_init_get_p1_ffi(obj : JsValue) -> JsValue = "webapi_DOMQuadInit" "get_p1"

///|
#cfg(target="wasm-gc")
fn dom_quad_init_get_p2_ffi(obj : JsValue) -> JsValue = "webapi_DOMQuadInit" "get_p2"

///|
#cfg(target="wasm-gc")
fn dom_quad_init_get_p3_ffi(obj : JsValue) -> JsValue = "webapi_DOMQuadInit" "get_p3"

///|
#cfg(target="wasm-gc")
fn dom_quad_init_get_p4_ffi(obj : JsValue) -> JsValue = "webapi_DOMQuadInit" "get_p4"
