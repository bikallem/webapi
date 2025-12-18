// Auto-generated MoonBit bindings for DOMQuadInit dictionary
// Do not edit manually

#external
pub type DOMQuadInit

pub impl TJsValue for DOMQuadInit with to_js(self: DOMQuadInit) -> JsValue = "%identity"


fn d_o_m_quad_init_ffi(p1 : JsValue, p2 : JsValue, p3 : JsValue, p4 : JsValue) -> DOMQuadInit = "webapi_DOMQuadInit" "new"


pub fn DOMQuadInit::new(
  p1? : DOMPointInit,
  p2? : DOMPointInit,
  p3? : DOMPointInit,
  p4? : DOMPointInit) -> DOMQuadInit {
    d_o_m_quad_init_ffi(
      opt_to_js(p1)
     ,opt_to_js(p2)
     ,opt_to_js(p3)
     ,opt_to_js(p4)
    )
}


pub fn DOMQuadInit::empty() -> DOMQuadInit = "webapi_Dictionary" "empty"