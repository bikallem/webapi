///|
#external
pub type DOMQuad

///|
pub impl TJsValue for DOMQuad with to_js(self : DOMQuad) -> JsValue = "%identity"

///|
pub fn[T : TDOMQuad] DOMQuad::into(self : DOMQuad) -> T = "%identity"

///|
pub impl TDOMQuad for DOMQuad

///|
extern "js" fn dom_quad_new_ffi(
  p1 : JsValue,
  p2 : JsValue,
  p3 : JsValue,
  p4 : JsValue,
) -> DOMQuad = "(p1, p2, p3, p4) => new DOMQuad(p1, p2, p3, p4)"

///|
pub fn DOMQuad::new(
  p1? : DOMPointInit = DOMPointInit::empty(),
  p2? : DOMPointInit = DOMPointInit::empty(),
  p3? : DOMPointInit = DOMPointInit::empty(),
  p4? : DOMPointInit = DOMPointInit::empty(),
) -> DOMQuad {
  dom_quad_new_ffi(
    TJsValue::to_js(p1),
    TJsValue::to_js(p2),
    TJsValue::to_js(p3),
    TJsValue::to_js(p4),
  )
}

///|
pub trait TDOMQuad: TJsValue {
  p1(self : Self) -> DOMPoint = _
  p2(self : Self) -> DOMPoint = _
  p3(self : Self) -> DOMPoint = _
  p4(self : Self) -> DOMPoint = _
  get_bounds(self : Self) -> DOMRect = _
  to_json(self : Self) -> JsValue = _
}

///|
extern "js" fn dom_quad_p1_ffi(obj : JsValue) -> DOMPoint = "(obj) => obj.p1"

///|
impl TDOMQuad with p1(self : Self) -> DOMPoint {
  dom_quad_p1_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_quad_p2_ffi(obj : JsValue) -> DOMPoint = "(obj) => obj.p2"

///|
impl TDOMQuad with p2(self : Self) -> DOMPoint {
  dom_quad_p2_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_quad_p3_ffi(obj : JsValue) -> DOMPoint = "(obj) => obj.p3"

///|
impl TDOMQuad with p3(self : Self) -> DOMPoint {
  dom_quad_p3_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_quad_p4_ffi(obj : JsValue) -> DOMPoint = "(obj) => obj.p4"

///|
impl TDOMQuad with p4(self : Self) -> DOMPoint {
  dom_quad_p4_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_quad_get_bounds_ffi(obj : JsValue) -> DOMRect = "(obj) => obj.getBounds(obj)"

///|
impl TDOMQuad with get_bounds(self : Self) -> DOMRect {
  dom_quad_get_bounds_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_quad_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON(obj)"

///|
impl TDOMQuad with to_json(self : Self) -> JsValue {
  dom_quad_to_json_ffi(TJsValue::to_js(self))
}
