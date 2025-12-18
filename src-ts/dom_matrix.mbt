// Auto-generated MoonBit bindings for DOMMatrix

// Do not edit manually

///|
#external
pub type DOMMatrix

///|
pub trait TDOMMatrix: TJsValue + TDOMMatrixReadOnly {
  a(self : Self) -> Double = _
  set_a(self : Self, value : Double) -> Unit = _
  b(self : Self) -> Double = _
  set_b(self : Self, value : Double) -> Unit = _
  c(self : Self) -> Double = _
  set_c(self : Self, value : Double) -> Unit = _
  d(self : Self) -> Double = _
  set_d(self : Self, value : Double) -> Unit = _
  e(self : Self) -> Double = _
  set_e(self : Self, value : Double) -> Unit = _
  f(self : Self) -> Double = _
  set_f(self : Self, value : Double) -> Unit = _
  m11(self : Self) -> Double = _
  set_m11(self : Self, value : Double) -> Unit = _
  m12(self : Self) -> Double = _
  set_m12(self : Self, value : Double) -> Unit = _
  m13(self : Self) -> Double = _
  set_m13(self : Self, value : Double) -> Unit = _
  m14(self : Self) -> Double = _
  set_m14(self : Self, value : Double) -> Unit = _
  m21(self : Self) -> Double = _
  set_m21(self : Self, value : Double) -> Unit = _
  m22(self : Self) -> Double = _
  set_m22(self : Self, value : Double) -> Unit = _
  m23(self : Self) -> Double = _
  set_m23(self : Self, value : Double) -> Unit = _
  m24(self : Self) -> Double = _
  set_m24(self : Self, value : Double) -> Unit = _
  m31(self : Self) -> Double = _
  set_m31(self : Self, value : Double) -> Unit = _
  m32(self : Self) -> Double = _
  set_m32(self : Self, value : Double) -> Unit = _
  m33(self : Self) -> Double = _
  set_m33(self : Self, value : Double) -> Unit = _
  m34(self : Self) -> Double = _
  set_m34(self : Self, value : Double) -> Unit = _
  m41(self : Self) -> Double = _
  set_m41(self : Self, value : Double) -> Unit = _
  m42(self : Self) -> Double = _
  set_m42(self : Self, value : Double) -> Unit = _
  m43(self : Self) -> Double = _
  set_m43(self : Self, value : Double) -> Unit = _
  m44(self : Self) -> Double = _
  set_m44(self : Self, value : Double) -> Unit = _
  multiply_self(self : Self, other? : DOMMatrixInit) -> JsValue = _
  pre_multiply_self(self : Self, other? : DOMMatrixInit) -> JsValue = _
  translate_self(self : Self, tx? : Double, ty? : Double, tz? : Double) -> JsValue = _
  scale_self(
    self : Self,
    scale_x? : Double,
    scale_y? : Double,
    scale_z? : Double,
    origin_x? : Double,
    origin_y? : Double,
    origin_z? : Double,
  ) -> JsValue = _
  scale3d_self(
    self : Self,
    scale? : Double,
    origin_x? : Double,
    origin_y? : Double,
    origin_z? : Double,
  ) -> JsValue = _
  rotate_self(self : Self, rot_x? : Double, rot_y? : Double, rot_z? : Double) -> JsValue = _
  rotate_from_vector_self(self : Self, x? : Double, y? : Double) -> JsValue = _
  rotate_axis_angle_self(
    self : Self,
    x? : Double,
    y? : Double,
    z? : Double,
    angle? : Double,
  ) -> JsValue = _
  skew_x_self(self : Self, sx? : Double) -> JsValue = _
  skew_y_self(self : Self, sy? : Double) -> JsValue = _
  invert_self(self : Self) -> JsValue = _
  set_matrix_value(self : Self, transform_list : String) -> JsValue = _
}

///|
pub impl TDOMMatrixReadOnly for DOMMatrix

///|
pub impl TDOMMatrix for DOMMatrix

///|
pub impl TJsValue for DOMMatrix with to_js(self : DOMMatrix) -> JsValue = "%identity"

///|
pub fn DOMMatrix::null() -> DOMMatrix {
  JsValue::null()
}

///|
fn dom_matrix_new_ffi(init_ : JsValue) -> DOMMatrix = "webapi_DOMMatrix" "new"

///|
pub fn DOMMatrix::new(init_? : JsValue) -> DOMMatrix {
  dom_matrix_new_ffi(
    match init_ {
      Some(v) => TJsValue::to_js(v)
      None => JsValue::undefined()
    },
  )
}

///|
fn dom_matrix_from_matrix_ffi(other : JsValue) -> JsValue = "webapi_DOMMatrix" "fromMatrix"

///|
pub fn DOMMatrix::from_matrix(
  other? : DOMMatrixInit = DOMMatrixInit::empty(),
) -> JsValue {
  dom_matrix_from_matrix_ffi(TJsValue::to_js(other))
}

///|
fn dom_matrix_from_float32_array_ffi(array32 : JsValue) -> JsValue = "webapi_DOMMatrix" "fromFloat32Array"

///|
pub fn DOMMatrix::from_float32_array(array32 : Float32Array) -> JsValue {
  dom_matrix_from_float32_array_ffi(TJsValue::to_js(array32))
}

///|
fn dom_matrix_from_float64_array_ffi(array64 : JsValue) -> JsValue = "webapi_DOMMatrix" "fromFloat64Array"

///|
pub fn DOMMatrix::from_float64_array(array64 : Float64Array) -> JsValue {
  dom_matrix_from_float64_array_ffi(TJsValue::to_js(array64))
}

///|
fn dom_matrix_multiply_self_ffi(obj : JsValue, other : JsValue) -> JsValue = "webapi_DOMMatrix" "multiplySelf"

///|
impl TDOMMatrix with multiply_self(
  self : Self,
  other? : DOMMatrixInit = DOMMatrixInit::empty(),
) -> JsValue {
  dom_matrix_multiply_self_ffi(TJsValue::to_js(self), TJsValue::to_js(other)).unsafe_cast()
}

///|
fn dom_matrix_pre_multiply_self_ffi(obj : JsValue, other : JsValue) -> JsValue = "webapi_DOMMatrix" "preMultiplySelf"

///|
impl TDOMMatrix with pre_multiply_self(
  self : Self,
  other? : DOMMatrixInit = DOMMatrixInit::empty(),
) -> JsValue {
  dom_matrix_pre_multiply_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(other),
  ).unsafe_cast()
}

///|
fn dom_matrix_translate_self_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
  tz : JsValue,
) -> JsValue = "webapi_DOMMatrix" "translateSelf"

///|
impl TDOMMatrix with translate_self(
  self : Self,
  tx? : Double = 0,
  ty? : Double = 0,
  tz? : Double = 0,
) -> JsValue {
  dom_matrix_translate_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(tx),
    TJsValue::to_js(ty),
    TJsValue::to_js(tz),
  ).unsafe_cast()
}

///|
fn dom_matrix_scale_self_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
  scale_z : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> JsValue = "webapi_DOMMatrix" "scaleSelf"

///|
impl TDOMMatrix with scale_self(
  self : Self,
  scale_x? : Double = 1,
  scale_y? : Double,
  scale_z? : Double = 1,
  origin_x? : Double = 0,
  origin_y? : Double = 0,
  origin_z? : Double = 0,
) -> JsValue {
  let scale_y_js = opt_to_js(scale_y)
  dom_matrix_scale_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scale_x),
    scale_y_js,
    TJsValue::to_js(scale_z),
    TJsValue::to_js(origin_x),
    TJsValue::to_js(origin_y),
    TJsValue::to_js(origin_z),
  ).unsafe_cast()
}

///|
fn dom_matrix_scale3d_self_ffi(
  obj : JsValue,
  scale : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> JsValue = "webapi_DOMMatrix" "scale3dSelf"

///|
impl TDOMMatrix with scale3d_self(
  self : Self,
  scale? : Double = 1,
  origin_x? : Double = 0,
  origin_y? : Double = 0,
  origin_z? : Double = 0,
) -> JsValue {
  dom_matrix_scale3d_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scale),
    TJsValue::to_js(origin_x),
    TJsValue::to_js(origin_y),
    TJsValue::to_js(origin_z),
  ).unsafe_cast()
}

///|
fn dom_matrix_rotate_self_ffi(
  obj : JsValue,
  rot_x : JsValue,
  rot_y : JsValue,
  rot_z : JsValue,
) -> JsValue = "webapi_DOMMatrix" "rotateSelf"

///|
impl TDOMMatrix with rotate_self(
  self : Self,
  rot_x? : Double = 0,
  rot_y? : Double,
  rot_z? : Double,
) -> JsValue {
  let rot_y_js = opt_to_js(rot_y)
  let rot_z_js = opt_to_js(rot_z)
  dom_matrix_rotate_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rot_x),
    rot_y_js,
    rot_z_js,
  ).unsafe_cast()
}

///|
fn dom_matrix_rotate_from_vector_self_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_DOMMatrix" "rotateFromVectorSelf"

///|
impl TDOMMatrix with rotate_from_vector_self(
  self : Self,
  x? : Double = 0,
  y? : Double = 0,
) -> JsValue {
  dom_matrix_rotate_from_vector_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  ).unsafe_cast()
}

///|
fn dom_matrix_rotate_axis_angle_self_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  z : JsValue,
  angle : JsValue,
) -> JsValue = "webapi_DOMMatrix" "rotateAxisAngleSelf"

///|
impl TDOMMatrix with rotate_axis_angle_self(
  self : Self,
  x? : Double = 0,
  y? : Double = 0,
  z? : Double = 0,
  angle? : Double = 0,
) -> JsValue {
  dom_matrix_rotate_axis_angle_self_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(z),
    TJsValue::to_js(angle),
  ).unsafe_cast()
}

///|
fn dom_matrix_skew_x_self_ffi(obj : JsValue, sx : JsValue) -> JsValue = "webapi_DOMMatrix" "skewXSelf"

///|
impl TDOMMatrix with skew_x_self(self : Self, sx? : Double = 0) -> JsValue {
  dom_matrix_skew_x_self_ffi(TJsValue::to_js(self), TJsValue::to_js(sx)).unsafe_cast()
}

///|
fn dom_matrix_skew_y_self_ffi(obj : JsValue, sy : JsValue) -> JsValue = "webapi_DOMMatrix" "skewYSelf"

///|
impl TDOMMatrix with skew_y_self(self : Self, sy? : Double = 0) -> JsValue {
  dom_matrix_skew_y_self_ffi(TJsValue::to_js(self), TJsValue::to_js(sy)).unsafe_cast()
}

///|
fn dom_matrix_invert_self_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix" "invertSelf"

///|
impl TDOMMatrix with invert_self(self : Self) -> JsValue {
  dom_matrix_invert_self_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn dom_matrix_set_matrix_value_ffi(
  obj : JsValue,
  transform_list : JsValue,
) -> JsValue = "webapi_DOMMatrix" "setMatrixValue"

///|
impl TDOMMatrix with set_matrix_value(self : Self, transform_list : String) -> JsValue {
  dom_matrix_set_matrix_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(transform_list),
  ).unsafe_cast()
}

///|
fn dom_matrix_a_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "a"

///|
impl TDOMMatrix with a(self : Self) -> Double {
  dom_matrix_a_ffi(self.to_js())
}

///|
fn dom_matrix_set_a_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_a"

///|
impl TDOMMatrix with set_a(self : Self, value : Double) -> Unit {
  dom_matrix_set_a_ffi(self.to_js(), value)
}

///|
fn dom_matrix_b_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "b"

///|
impl TDOMMatrix with b(self : Self) -> Double {
  dom_matrix_b_ffi(self.to_js())
}

///|
fn dom_matrix_set_b_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_b"

///|
impl TDOMMatrix with set_b(self : Self, value : Double) -> Unit {
  dom_matrix_set_b_ffi(self.to_js(), value)
}

///|
fn dom_matrix_c_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "c"

///|
impl TDOMMatrix with c(self : Self) -> Double {
  dom_matrix_c_ffi(self.to_js())
}

///|
fn dom_matrix_set_c_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_c"

///|
impl TDOMMatrix with set_c(self : Self, value : Double) -> Unit {
  dom_matrix_set_c_ffi(self.to_js(), value)
}

///|
fn dom_matrix_d_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "d"

///|
impl TDOMMatrix with d(self : Self) -> Double {
  dom_matrix_d_ffi(self.to_js())
}

///|
fn dom_matrix_set_d_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_d"

///|
impl TDOMMatrix with set_d(self : Self, value : Double) -> Unit {
  dom_matrix_set_d_ffi(self.to_js(), value)
}

///|
fn dom_matrix_e_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "e"

///|
impl TDOMMatrix with e(self : Self) -> Double {
  dom_matrix_e_ffi(self.to_js())
}

///|
fn dom_matrix_set_e_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_e"

///|
impl TDOMMatrix with set_e(self : Self, value : Double) -> Unit {
  dom_matrix_set_e_ffi(self.to_js(), value)
}

///|
fn dom_matrix_f_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "f"

///|
impl TDOMMatrix with f(self : Self) -> Double {
  dom_matrix_f_ffi(self.to_js())
}

///|
fn dom_matrix_set_f_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_f"

///|
impl TDOMMatrix with set_f(self : Self, value : Double) -> Unit {
  dom_matrix_set_f_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m11_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m11"

///|
impl TDOMMatrix with m11(self : Self) -> Double {
  dom_matrix_m11_ffi(self.to_js())
}

///|
fn dom_matrix_set_m11_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m11"

///|
impl TDOMMatrix with set_m11(self : Self, value : Double) -> Unit {
  dom_matrix_set_m11_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m12_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m12"

///|
impl TDOMMatrix with m12(self : Self) -> Double {
  dom_matrix_m12_ffi(self.to_js())
}

///|
fn dom_matrix_set_m12_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m12"

///|
impl TDOMMatrix with set_m12(self : Self, value : Double) -> Unit {
  dom_matrix_set_m12_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m13_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m13"

///|
impl TDOMMatrix with m13(self : Self) -> Double {
  dom_matrix_m13_ffi(self.to_js())
}

///|
fn dom_matrix_set_m13_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m13"

///|
impl TDOMMatrix with set_m13(self : Self, value : Double) -> Unit {
  dom_matrix_set_m13_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m14_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m14"

///|
impl TDOMMatrix with m14(self : Self) -> Double {
  dom_matrix_m14_ffi(self.to_js())
}

///|
fn dom_matrix_set_m14_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m14"

///|
impl TDOMMatrix with set_m14(self : Self, value : Double) -> Unit {
  dom_matrix_set_m14_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m21_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m21"

///|
impl TDOMMatrix with m21(self : Self) -> Double {
  dom_matrix_m21_ffi(self.to_js())
}

///|
fn dom_matrix_set_m21_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m21"

///|
impl TDOMMatrix with set_m21(self : Self, value : Double) -> Unit {
  dom_matrix_set_m21_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m22_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m22"

///|
impl TDOMMatrix with m22(self : Self) -> Double {
  dom_matrix_m22_ffi(self.to_js())
}

///|
fn dom_matrix_set_m22_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m22"

///|
impl TDOMMatrix with set_m22(self : Self, value : Double) -> Unit {
  dom_matrix_set_m22_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m23_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m23"

///|
impl TDOMMatrix with m23(self : Self) -> Double {
  dom_matrix_m23_ffi(self.to_js())
}

///|
fn dom_matrix_set_m23_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m23"

///|
impl TDOMMatrix with set_m23(self : Self, value : Double) -> Unit {
  dom_matrix_set_m23_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m24_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m24"

///|
impl TDOMMatrix with m24(self : Self) -> Double {
  dom_matrix_m24_ffi(self.to_js())
}

///|
fn dom_matrix_set_m24_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m24"

///|
impl TDOMMatrix with set_m24(self : Self, value : Double) -> Unit {
  dom_matrix_set_m24_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m31_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m31"

///|
impl TDOMMatrix with m31(self : Self) -> Double {
  dom_matrix_m31_ffi(self.to_js())
}

///|
fn dom_matrix_set_m31_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m31"

///|
impl TDOMMatrix with set_m31(self : Self, value : Double) -> Unit {
  dom_matrix_set_m31_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m32_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m32"

///|
impl TDOMMatrix with m32(self : Self) -> Double {
  dom_matrix_m32_ffi(self.to_js())
}

///|
fn dom_matrix_set_m32_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m32"

///|
impl TDOMMatrix with set_m32(self : Self, value : Double) -> Unit {
  dom_matrix_set_m32_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m33_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m33"

///|
impl TDOMMatrix with m33(self : Self) -> Double {
  dom_matrix_m33_ffi(self.to_js())
}

///|
fn dom_matrix_set_m33_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m33"

///|
impl TDOMMatrix with set_m33(self : Self, value : Double) -> Unit {
  dom_matrix_set_m33_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m34_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m34"

///|
impl TDOMMatrix with m34(self : Self) -> Double {
  dom_matrix_m34_ffi(self.to_js())
}

///|
fn dom_matrix_set_m34_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m34"

///|
impl TDOMMatrix with set_m34(self : Self, value : Double) -> Unit {
  dom_matrix_set_m34_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m41_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m41"

///|
impl TDOMMatrix with m41(self : Self) -> Double {
  dom_matrix_m41_ffi(self.to_js())
}

///|
fn dom_matrix_set_m41_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m41"

///|
impl TDOMMatrix with set_m41(self : Self, value : Double) -> Unit {
  dom_matrix_set_m41_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m42_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m42"

///|
impl TDOMMatrix with m42(self : Self) -> Double {
  dom_matrix_m42_ffi(self.to_js())
}

///|
fn dom_matrix_set_m42_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m42"

///|
impl TDOMMatrix with set_m42(self : Self, value : Double) -> Unit {
  dom_matrix_set_m42_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m43_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m43"

///|
impl TDOMMatrix with m43(self : Self) -> Double {
  dom_matrix_m43_ffi(self.to_js())
}

///|
fn dom_matrix_set_m43_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m43"

///|
impl TDOMMatrix with set_m43(self : Self, value : Double) -> Unit {
  dom_matrix_set_m43_ffi(self.to_js(), value)
}

///|
fn dom_matrix_m44_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "m44"

///|
impl TDOMMatrix with m44(self : Self) -> Double {
  dom_matrix_m44_ffi(self.to_js())
}

///|
fn dom_matrix_set_m44_ffi(obj : JsValue, value : Double) -> Unit = "webapi_DOMMatrix" "set_m44"

///|
impl TDOMMatrix with set_m44(self : Self, value : Double) -> Unit {
  dom_matrix_set_m44_ffi(self.to_js(), value)
}
