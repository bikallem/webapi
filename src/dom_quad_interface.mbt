// Do not edit. This file is generated.
// MoonBit type: DOMQuad
// Specifications: geometry.idl

/// [DOMQuad](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad)
#external
pub type DOMQuad

pub impl TJsValue for DOMQuad with to_js(self: DOMQuad) -> JsValue = "%identity"

pub fn[T: TDOMQuad] DOMQuad::into(self : DOMQuad) -> T = "%identity"

pub impl TDOMQuad for DOMQuad

pub fn DOMQuad::new(p1? : DOMPointInit = DOMPointInit::empty(), 
p2? : DOMPointInit = DOMPointInit::empty(), 
p3? : DOMPointInit = DOMPointInit::empty(), 
p4? : DOMPointInit = DOMPointInit::empty()) -> DOMQuad {
  dom_quad_new_ffi(TJsValue::to_js(p1), TJsValue::to_js(p2), TJsValue::to_js(p3), TJsValue::to_js(p4))
}

/// [DOMQuad](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad) interface.
pub trait TDOMQuad: TJsValue {
  p1(self : Self) -> DOMPoint = _
  p2(self : Self) -> DOMPoint = _
  p3(self : Self) -> DOMPoint = _
  p4(self : Self) -> DOMPoint = _
  get_bounds(self : Self) -> DOMRect = _
  to_json(self : Self) -> JsValue = _
}

/// [DOMQuad.fromRect](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/fromRect)
pub fn DOMQuad::from_rect(other? : DOMRectInit = DOMRectInit::empty()) -> DOMQuad {
  dom_quad_from_rect_ffi(TJsValue::to_js(other))
}

/// [DOMQuad.fromQuad](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/fromQuad)
pub fn DOMQuad::from_quad(other? : DOMQuadInit = DOMQuadInit::empty()) -> DOMQuad {
  dom_quad_from_quad_ffi(TJsValue::to_js(other))
}

/// [DOMQuad.p1](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/p1)
impl TDOMQuad with p1(self : Self) -> DOMPoint {
  dom_quad_p1_ffi(TJsValue::to_js(self))
}

/// [DOMQuad.p2](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/p2)
impl TDOMQuad with p2(self : Self) -> DOMPoint {
  dom_quad_p2_ffi(TJsValue::to_js(self))
}

/// [DOMQuad.p3](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/p3)
impl TDOMQuad with p3(self : Self) -> DOMPoint {
  dom_quad_p3_ffi(TJsValue::to_js(self))
}

/// [DOMQuad.p4](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/p4)
impl TDOMQuad with p4(self : Self) -> DOMPoint {
  dom_quad_p4_ffi(TJsValue::to_js(self))
}

/// [DOMQuad.getBounds](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/getBounds)
impl TDOMQuad with get_bounds(self : Self) -> DOMRect {
  dom_quad_get_bounds_ffi(TJsValue::to_js(self))
}

/// [DOMQuad.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/DOMQuad/toJSON)
impl TDOMQuad with to_json(self : Self) -> JsValue {
  dom_quad_to_json_ffi(TJsValue::to_js(self))
}