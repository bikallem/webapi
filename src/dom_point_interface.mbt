///|
#external
pub type DOMPoint

///|
pub impl TJsValue for DOMPoint with to_js(self : DOMPoint) -> JsValue = "%identity"

///|
pub fn[T : TDOMPoint] DOMPoint::into(self : DOMPoint) -> T = "%identity"

///|
pub impl TDOMPoint for DOMPoint

///|
pub impl TDOMPointReadOnly for DOMPoint

///|
extern "js" fn dom_point_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPoint = "(x, y, z, w) => new DOMPoint(x, y, z, w)"

///|
pub fn DOMPoint::new(
  x? : Double = 0,
  y? : Double = 0,
  z? : Double = 0,
  w? : Double = 1,
) -> DOMPoint {
  dom_point_ffi(
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(z),
    TJsValue::to_js(w),
  )
}

///|
pub trait TDOMPoint: TDOMPointReadOnly {}
