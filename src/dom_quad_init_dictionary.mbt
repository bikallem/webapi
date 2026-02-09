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
