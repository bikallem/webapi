// Auto-generated MoonBit bindings for DOMQuadInit dictionary

// Do not edit manually

///|
#external
pub type DOMQuadInit

///|
pub impl TJsValue for DOMQuadInit with to_js(self : DOMQuadInit) -> JsValue = "%identity"

///|
fn dom_quad_init_ffi(p1 : JsValue, p2 : JsValue, p3 : JsValue, p4 : JsValue) -> DOMQuadInit = "webapi_DOMQuadInit" "new"

///|
pub fn DOMQuadInit::new(
  p1? : DOMPointInit,
  p2? : DOMPointInit,
  p3? : DOMPointInit,
  p4? : DOMPointInit
) -> DOMQuadInit {
  let p1_js = opt_to_js(p1)
  let p2_js = opt_to_js(p2)
  let p3_js = opt_to_js(p3)
  let p4_js = opt_to_js(p4)
  dom_quad_init_ffi(p1_js, p2_js, p3_js, p4_js)
}

///|
pub fn DOMQuadInit::empty() -> DOMQuadInit = "webapi_Dictionary" "empty"