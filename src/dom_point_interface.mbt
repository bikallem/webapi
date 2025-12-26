// Do not edit. This file is generated.
// MoonBit type: DOMPoint
// Specifications: geometry.idl

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
extern "js" fn dom_point_new_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPoint = "(x, y, z, w) => new DOMPoint(x, y, z, w)"

///|
pub fn DOMPoint::new(
  x? : Double = (0 : Double),
  y? : Double = (0 : Double),
  z? : Double = (0 : Double),
  w? : Double = (1 : Double),
) -> DOMPoint {
  dom_point_new_ffi(
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(z),
    TJsValue::to_js(w),
  )
}

///|
pub trait TDOMPoint: TDOMPointReadOnly {
  x(self : Self) -> Double = _
  set_x(self : Self, x : Double) -> Unit = _
  y(self : Self) -> Double = _
  set_y(self : Self, y : Double) -> Unit = _
  z(self : Self) -> Double = _
  set_z(self : Self, z : Double) -> Unit = _
  w(self : Self) -> Double = _
  set_w(self : Self, w : Double) -> Unit = _
}

///|
extern "js" fn dom_point_from_point_ffi(other : JsValue) -> DOMPoint = "(other) => DOMPoint.fromPoint(other)"

///|
pub fn DOMPoint::from_point(
  other? : DOMPointInit = DOMPointInit::empty(),
) -> DOMPoint {
  dom_point_from_point_ffi(TJsValue::to_js(other))
}

///|
extern "js" fn dom_point_x_ffi(obj : JsValue) -> Double = "(obj) => obj.x"

///|
impl TDOMPoint with x(self : Self) -> Double {
  dom_point_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_point_set_x_ffi(obj : JsValue, x : JsValue) -> Unit = "(obj, x) => { obj.x = x; }"

///|
impl TDOMPoint with set_x(self : Self, x : Double) -> Unit {
  dom_point_set_x_ffi(TJsValue::to_js(self), TJsValue::to_js(x))
}

///|
extern "js" fn dom_point_y_ffi(obj : JsValue) -> Double = "(obj) => obj.y"

///|
impl TDOMPoint with y(self : Self) -> Double {
  dom_point_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_point_set_y_ffi(obj : JsValue, y : JsValue) -> Unit = "(obj, y) => { obj.y = y; }"

///|
impl TDOMPoint with set_y(self : Self, y : Double) -> Unit {
  dom_point_set_y_ffi(TJsValue::to_js(self), TJsValue::to_js(y))
}

///|
extern "js" fn dom_point_z_ffi(obj : JsValue) -> Double = "(obj) => obj.z"

///|
impl TDOMPoint with z(self : Self) -> Double {
  dom_point_z_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_point_set_z_ffi(obj : JsValue, z : JsValue) -> Unit = "(obj, z) => { obj.z = z; }"

///|
impl TDOMPoint with set_z(self : Self, z : Double) -> Unit {
  dom_point_set_z_ffi(TJsValue::to_js(self), TJsValue::to_js(z))
}

///|
extern "js" fn dom_point_w_ffi(obj : JsValue) -> Double = "(obj) => obj.w"

///|
impl TDOMPoint with w(self : Self) -> Double {
  dom_point_w_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_point_set_w_ffi(obj : JsValue, w : JsValue) -> Unit = "(obj, w) => { obj.w = w; }"

///|
impl TDOMPoint with set_w(self : Self, w : Double) -> Unit {
  dom_point_set_w_ffi(TJsValue::to_js(self), TJsValue::to_js(w))
}
