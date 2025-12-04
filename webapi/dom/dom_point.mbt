// Auto-generated MoonBit bindings for DOMPoint

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=(Window,Worker),
//  Serializable,
//  LegacyWindowAlias=SVGPoint]
// interface DOMPoint : DOMPointReadOnly {
//     constructor(optional unrestricted double x = 0, optional unrestricted double y = 0,
//             optional unrestricted double z = 0, optional unrestricted double w = 1);
// 
//     [NewObject] static DOMPoint fromPoint(optional DOMPointInit other = {});
// 
//     inherit attribute unrestricted double x;
//     inherit attribute unrestricted double y;
//     inherit attribute unrestricted double z;
//     inherit attribute unrestricted double w;
// };

///|
#external
pub type DOMPoint

///|
pub trait TDOMPoint: TJsValue + TDOMPointReadOnly {
  x(self : Self) -> Double = _
  set_x(self : Self, value : Double) -> Unit = _
  y(self : Self) -> Double = _
  set_y(self : Self, value : Double) -> Unit = _
  z(self : Self) -> Double = _
  set_z(self : Self, value : Double) -> Unit = _
  w(self : Self) -> Double = _
  set_w(self : Self, value : Double) -> Unit = _
}

///|
pub impl TDOMPointReadOnly for DOMPoint

///|
pub impl TDOMPoint for DOMPoint

///|
pub impl TJsValue for DOMPoint with to_js(self : DOMPoint) -> JsValue = "%identity"

///|
pub fn DOMPoint::null() -> DOMPoint = "JsValue" "null"

///|
pub fn DOMPoint::is_null(self : DOMPoint) -> Bool = "JsValue" "isNull"

///|
fn dom_point_new_ffi(
  x : JsValue,
  y : JsValue,
  z : JsValue,
  w : JsValue,
) -> DOMPoint = "webapi_DOMPoint" "new"

///|
pub fn DOMPoint::new(
  x? : Double = 0,
  y? : Double = 0,
  z? : Double = 0,
  w? : Double = 1,
) -> DOMPoint {
  dom_point_new_ffi(
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(z),
    TJsValue::to_js(w),
  )
}

///|
fn dom_point_from_point_ffi(other : JsValue) -> JsValue = "webapi_DOMPoint" "fromPoint"

///|
pub fn DOMPoint::from_point(
  other? : DOMPointInit = DOMPointInit::empty(),
) -> JsValue {
  dom_point_from_point_ffi(TJsValue::to_js(other))
}

///|
fn dom_point_x_ffi(obj : JsValue) -> Double = "webapi_DOMPoint" "x"

///|
impl TDOMPoint with x(self : Self) -> Double {
  dom_point_x_ffi(self.to_js())
}

///|
fn dom_point_set_x_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMPoint" "set_x"

///|
impl TDOMPoint with set_x(self : Self, value : Double) -> Unit {
  dom_point_set_x_ffi(self.to_js(), value)
}

///|
fn dom_point_y_ffi(obj : JsValue) -> Double = "webapi_DOMPoint" "y"

///|
impl TDOMPoint with y(self : Self) -> Double {
  dom_point_y_ffi(self.to_js())
}

///|
fn dom_point_set_y_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMPoint" "set_y"

///|
impl TDOMPoint with set_y(self : Self, value : Double) -> Unit {
  dom_point_set_y_ffi(self.to_js(), value)
}

///|
fn dom_point_z_ffi(obj : JsValue) -> Double = "webapi_DOMPoint" "z"

///|
impl TDOMPoint with z(self : Self) -> Double {
  dom_point_z_ffi(self.to_js())
}

///|
fn dom_point_set_z_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMPoint" "set_z"

///|
impl TDOMPoint with set_z(self : Self, value : Double) -> Unit {
  dom_point_set_z_ffi(self.to_js(), value)
}

///|
fn dom_point_w_ffi(obj : JsValue) -> Double = "webapi_DOMPoint" "w"

///|
impl TDOMPoint with w(self : Self) -> Double {
  dom_point_w_ffi(self.to_js())
}

///|
fn dom_point_set_w_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMPoint" "set_w"

///|
impl TDOMPoint with set_w(self : Self, value : Double) -> Unit {
  dom_point_set_w_ffi(self.to_js(), value)
}
