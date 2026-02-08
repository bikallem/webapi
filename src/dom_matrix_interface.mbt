// Do not edit. This file is generated.
// MoonBit type: DOMMatrix
// Specifications: geometry.idl

/// [DOMMatrix](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix)
#external
pub type DOMMatrix

pub impl TJsValue for DOMMatrix with to_js(self: DOMMatrix) -> JsValue = "%identity"

pub fn[T: TDOMMatrix] DOMMatrix::into(self : DOMMatrix) -> T = "%identity"

pub impl TDOMMatrix for DOMMatrix

pub impl TDOMMatrixReadOnly for DOMMatrix

pub(open) trait TDOMMatrixNewInit {
  to_js(self : Self) -> JsValue
}

pub impl TDOMMatrixNewInit for String with to_js(self : String) -> JsValue = "%identity"

pub impl TDOMMatrixNewInit for Array[Double] with to_js(self : Array[Double]) -> JsValue = "%identity"

pub fn DOMMatrix::new(init? : &TDOMMatrixNewInit) -> DOMMatrix {
  dom_matrix_new_ffi(match init {
Some(v) => v.to_js()
None => JsValue::undefined()
},)
}

/// [DOMMatrix](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix) interface.
pub trait TDOMMatrix: TDOMMatrixReadOnly {
  a(self : Self) -> Double = _
  set_a(self : Self, a : Double) -> Unit = _
  b(self : Self) -> Double = _
  set_b(self : Self, b : Double) -> Unit = _
  c(self : Self) -> Double = _
  set_c(self : Self, c : Double) -> Unit = _
  d(self : Self) -> Double = _
  set_d(self : Self, d : Double) -> Unit = _
  e(self : Self) -> Double = _
  set_e(self : Self, e : Double) -> Unit = _
  f(self : Self) -> Double = _
  set_f(self : Self, f : Double) -> Unit = _
  m11(self : Self) -> Double = _
  set_m11(self : Self, m11 : Double) -> Unit = _
  m12(self : Self) -> Double = _
  set_m12(self : Self, m12 : Double) -> Unit = _
  m13(self : Self) -> Double = _
  set_m13(self : Self, m13 : Double) -> Unit = _
  m14(self : Self) -> Double = _
  set_m14(self : Self, m14 : Double) -> Unit = _
  m21(self : Self) -> Double = _
  set_m21(self : Self, m21 : Double) -> Unit = _
  m22(self : Self) -> Double = _
  set_m22(self : Self, m22 : Double) -> Unit = _
  m23(self : Self) -> Double = _
  set_m23(self : Self, m23 : Double) -> Unit = _
  m24(self : Self) -> Double = _
  set_m24(self : Self, m24 : Double) -> Unit = _
  m31(self : Self) -> Double = _
  set_m31(self : Self, m31 : Double) -> Unit = _
  m32(self : Self) -> Double = _
  set_m32(self : Self, m32 : Double) -> Unit = _
  m33(self : Self) -> Double = _
  set_m33(self : Self, m33 : Double) -> Unit = _
  m34(self : Self) -> Double = _
  set_m34(self : Self, m34 : Double) -> Unit = _
  m41(self : Self) -> Double = _
  set_m41(self : Self, m41 : Double) -> Unit = _
  m42(self : Self) -> Double = _
  set_m42(self : Self, m42 : Double) -> Unit = _
  m43(self : Self) -> Double = _
  set_m43(self : Self, m43 : Double) -> Unit = _
  m44(self : Self) -> Double = _
  set_m44(self : Self, m44 : Double) -> Unit = _
  multiply_self(self : Self, other? : DOMMatrixInit) -> DOMMatrix = _
  pre_multiply_self(self : Self, other? : DOMMatrixInit) -> DOMMatrix = _
  translate_self(self : Self, tx? : Double, ty? : Double, tz? : Double) -> DOMMatrix = _
  scale_self(self : Self, scale_x? : Double, scale_y? : Double, scale_z? : Double, origin_x? : Double, origin_y? : Double, origin_z? : Double) -> DOMMatrix = _
  scale3d_self(self : Self, scale? : Double, origin_x? : Double, origin_y? : Double, origin_z? : Double) -> DOMMatrix = _
  rotate_self(self : Self, rot_x? : Double, rot_y? : Double, rot_z? : Double) -> DOMMatrix = _
  rotate_from_vector_self(self : Self, x? : Double, y? : Double) -> DOMMatrix = _
  rotate_axis_angle_self(self : Self, x? : Double, y? : Double, z? : Double, angle? : Double) -> DOMMatrix = _
  skew_x_self(self : Self, sx? : Double) -> DOMMatrix = _
  skew_y_self(self : Self, sy? : Double) -> DOMMatrix = _
  invert_self(self : Self) -> DOMMatrix = _
  set_matrix_value(self : Self, transform_list : String) -> DOMMatrix = _
}

/// [DOMMatrix.fromMatrix](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/fromMatrix)
pub fn DOMMatrix::from_matrix(other? : DOMMatrixInit = DOMMatrixInit::empty()) -> DOMMatrix {
  dom_matrix_from_matrix_ffi(TJsValue::to_js(other)).unsafe_cast()
}

/// [DOMMatrix.fromFloat32Array](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/fromFloat32Array)
pub fn DOMMatrix::from_float32array(array32 : Float32Array) -> DOMMatrix {
  dom_matrix_from_float32array_ffi(TJsValue::to_js(array32)).unsafe_cast()
}

/// [DOMMatrix.fromFloat64Array](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/fromFloat64Array)
pub fn DOMMatrix::from_float64array(array64 : Float64Array) -> DOMMatrix {
  dom_matrix_from_float64array_ffi(TJsValue::to_js(array64)).unsafe_cast()
}

/// [DOMMatrix.a](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/a)
impl TDOMMatrix with a(self : Self) -> Double {
  dom_matrix_a_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.a](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/a)
impl TDOMMatrix with set_a(self : Self, 
a : Double) -> Unit {
  dom_matrix_set_a_ffi(TJsValue::to_js(self), TJsValue::to_js(a))
}

/// [DOMMatrix.b](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/b)
impl TDOMMatrix with b(self : Self) -> Double {
  dom_matrix_b_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.b](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/b)
impl TDOMMatrix with set_b(self : Self, 
b : Double) -> Unit {
  dom_matrix_set_b_ffi(TJsValue::to_js(self), TJsValue::to_js(b))
}

/// [DOMMatrix.c](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/c)
impl TDOMMatrix with c(self : Self) -> Double {
  dom_matrix_c_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.c](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/c)
impl TDOMMatrix with set_c(self : Self, 
c : Double) -> Unit {
  dom_matrix_set_c_ffi(TJsValue::to_js(self), TJsValue::to_js(c))
}

/// [DOMMatrix.d](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/d)
impl TDOMMatrix with d(self : Self) -> Double {
  dom_matrix_d_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.d](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/d)
impl TDOMMatrix with set_d(self : Self, 
d : Double) -> Unit {
  dom_matrix_set_d_ffi(TJsValue::to_js(self), TJsValue::to_js(d))
}

/// [DOMMatrix.e](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/e)
impl TDOMMatrix with e(self : Self) -> Double {
  dom_matrix_e_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.e](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/e)
impl TDOMMatrix with set_e(self : Self, 
e : Double) -> Unit {
  dom_matrix_set_e_ffi(TJsValue::to_js(self), TJsValue::to_js(e))
}

/// [DOMMatrix.f](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/f)
impl TDOMMatrix with f(self : Self) -> Double {
  dom_matrix_f_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.f](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/f)
impl TDOMMatrix with set_f(self : Self, 
f : Double) -> Unit {
  dom_matrix_set_f_ffi(TJsValue::to_js(self), TJsValue::to_js(f))
}

/// [DOMMatrix.m11](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m11)
impl TDOMMatrix with m11(self : Self) -> Double {
  dom_matrix_m11_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m11](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m11)
impl TDOMMatrix with set_m11(self : Self, 
m11 : Double) -> Unit {
  dom_matrix_set_m11_ffi(TJsValue::to_js(self), TJsValue::to_js(m11))
}

/// [DOMMatrix.m12](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m12)
impl TDOMMatrix with m12(self : Self) -> Double {
  dom_matrix_m12_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m12](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m12)
impl TDOMMatrix with set_m12(self : Self, 
m12 : Double) -> Unit {
  dom_matrix_set_m12_ffi(TJsValue::to_js(self), TJsValue::to_js(m12))
}

/// [DOMMatrix.m13](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m13)
impl TDOMMatrix with m13(self : Self) -> Double {
  dom_matrix_m13_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m13](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m13)
impl TDOMMatrix with set_m13(self : Self, 
m13 : Double) -> Unit {
  dom_matrix_set_m13_ffi(TJsValue::to_js(self), TJsValue::to_js(m13))
}

/// [DOMMatrix.m14](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m14)
impl TDOMMatrix with m14(self : Self) -> Double {
  dom_matrix_m14_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m14](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m14)
impl TDOMMatrix with set_m14(self : Self, 
m14 : Double) -> Unit {
  dom_matrix_set_m14_ffi(TJsValue::to_js(self), TJsValue::to_js(m14))
}

/// [DOMMatrix.m21](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m21)
impl TDOMMatrix with m21(self : Self) -> Double {
  dom_matrix_m21_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m21](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m21)
impl TDOMMatrix with set_m21(self : Self, 
m21 : Double) -> Unit {
  dom_matrix_set_m21_ffi(TJsValue::to_js(self), TJsValue::to_js(m21))
}

/// [DOMMatrix.m22](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m22)
impl TDOMMatrix with m22(self : Self) -> Double {
  dom_matrix_m22_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m22](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m22)
impl TDOMMatrix with set_m22(self : Self, 
m22 : Double) -> Unit {
  dom_matrix_set_m22_ffi(TJsValue::to_js(self), TJsValue::to_js(m22))
}

/// [DOMMatrix.m23](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m23)
impl TDOMMatrix with m23(self : Self) -> Double {
  dom_matrix_m23_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m23](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m23)
impl TDOMMatrix with set_m23(self : Self, 
m23 : Double) -> Unit {
  dom_matrix_set_m23_ffi(TJsValue::to_js(self), TJsValue::to_js(m23))
}

/// [DOMMatrix.m24](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m24)
impl TDOMMatrix with m24(self : Self) -> Double {
  dom_matrix_m24_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m24](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m24)
impl TDOMMatrix with set_m24(self : Self, 
m24 : Double) -> Unit {
  dom_matrix_set_m24_ffi(TJsValue::to_js(self), TJsValue::to_js(m24))
}

/// [DOMMatrix.m31](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m31)
impl TDOMMatrix with m31(self : Self) -> Double {
  dom_matrix_m31_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m31](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m31)
impl TDOMMatrix with set_m31(self : Self, 
m31 : Double) -> Unit {
  dom_matrix_set_m31_ffi(TJsValue::to_js(self), TJsValue::to_js(m31))
}

/// [DOMMatrix.m32](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m32)
impl TDOMMatrix with m32(self : Self) -> Double {
  dom_matrix_m32_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m32](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m32)
impl TDOMMatrix with set_m32(self : Self, 
m32 : Double) -> Unit {
  dom_matrix_set_m32_ffi(TJsValue::to_js(self), TJsValue::to_js(m32))
}

/// [DOMMatrix.m33](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m33)
impl TDOMMatrix with m33(self : Self) -> Double {
  dom_matrix_m33_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m33](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m33)
impl TDOMMatrix with set_m33(self : Self, 
m33 : Double) -> Unit {
  dom_matrix_set_m33_ffi(TJsValue::to_js(self), TJsValue::to_js(m33))
}

/// [DOMMatrix.m34](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m34)
impl TDOMMatrix with m34(self : Self) -> Double {
  dom_matrix_m34_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m34](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m34)
impl TDOMMatrix with set_m34(self : Self, 
m34 : Double) -> Unit {
  dom_matrix_set_m34_ffi(TJsValue::to_js(self), TJsValue::to_js(m34))
}

/// [DOMMatrix.m41](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m41)
impl TDOMMatrix with m41(self : Self) -> Double {
  dom_matrix_m41_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m41](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m41)
impl TDOMMatrix with set_m41(self : Self, 
m41 : Double) -> Unit {
  dom_matrix_set_m41_ffi(TJsValue::to_js(self), TJsValue::to_js(m41))
}

/// [DOMMatrix.m42](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m42)
impl TDOMMatrix with m42(self : Self) -> Double {
  dom_matrix_m42_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m42](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m42)
impl TDOMMatrix with set_m42(self : Self, 
m42 : Double) -> Unit {
  dom_matrix_set_m42_ffi(TJsValue::to_js(self), TJsValue::to_js(m42))
}

/// [DOMMatrix.m43](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m43)
impl TDOMMatrix with m43(self : Self) -> Double {
  dom_matrix_m43_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m43](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m43)
impl TDOMMatrix with set_m43(self : Self, 
m43 : Double) -> Unit {
  dom_matrix_set_m43_ffi(TJsValue::to_js(self), TJsValue::to_js(m43))
}

/// [DOMMatrix.m44](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m44)
impl TDOMMatrix with m44(self : Self) -> Double {
  dom_matrix_m44_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.m44](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m44)
impl TDOMMatrix with set_m44(self : Self, 
m44 : Double) -> Unit {
  dom_matrix_set_m44_ffi(TJsValue::to_js(self), TJsValue::to_js(m44))
}

/// [DOMMatrix.multiplySelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/multiplySelf)
impl TDOMMatrix with multiply_self(self : Self, 
other? : DOMMatrixInit = DOMMatrixInit::empty()) -> DOMMatrix {
  dom_matrix_multiply_self_ffi(TJsValue::to_js(self), TJsValue::to_js(other)).unsafe_cast()
}

/// [DOMMatrix.preMultiplySelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/preMultiplySelf)
impl TDOMMatrix with pre_multiply_self(self : Self, 
other? : DOMMatrixInit = DOMMatrixInit::empty()) -> DOMMatrix {
  dom_matrix_pre_multiply_self_ffi(TJsValue::to_js(self), TJsValue::to_js(other)).unsafe_cast()
}

/// [DOMMatrix.translateSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/translateSelf)
impl TDOMMatrix with translate_self(self : Self, 
tx? : Double = (0: Double), 
ty? : Double = (0: Double), 
tz? : Double = (0: Double)) -> DOMMatrix {
  dom_matrix_translate_self_ffi(TJsValue::to_js(self), TJsValue::to_js(tx), TJsValue::to_js(ty), TJsValue::to_js(tz)).unsafe_cast()
}

/// [DOMMatrix.scaleSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/scaleSelf)
impl TDOMMatrix with scale_self(self : Self, 
scale_x? : Double = (1: Double), 
scale_y? : Double, 
scale_z? : Double = (1: Double), 
origin_x? : Double = (0: Double), 
origin_y? : Double = (0: Double), 
origin_z? : Double = (0: Double)) -> DOMMatrix {
  dom_matrix_scale_self_ffi(TJsValue::to_js(self), TJsValue::to_js(scale_x), opt_to_js(scale_y), TJsValue::to_js(scale_z), TJsValue::to_js(origin_x), TJsValue::to_js(origin_y), TJsValue::to_js(origin_z)).unsafe_cast()
}

/// [DOMMatrix.scale3dSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/scale3dSelf)
impl TDOMMatrix with scale3d_self(self : Self, 
scale? : Double = (1: Double), 
origin_x? : Double = (0: Double), 
origin_y? : Double = (0: Double), 
origin_z? : Double = (0: Double)) -> DOMMatrix {
  dom_matrix_scale3d_self_ffi(TJsValue::to_js(self), TJsValue::to_js(scale), TJsValue::to_js(origin_x), TJsValue::to_js(origin_y), TJsValue::to_js(origin_z)).unsafe_cast()
}

/// [DOMMatrix.rotateSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/rotateSelf)
impl TDOMMatrix with rotate_self(self : Self, 
rot_x? : Double = (0: Double), 
rot_y? : Double, 
rot_z? : Double) -> DOMMatrix {
  dom_matrix_rotate_self_ffi(TJsValue::to_js(self), TJsValue::to_js(rot_x), opt_to_js(rot_y), opt_to_js(rot_z)).unsafe_cast()
}

/// [DOMMatrix.rotateFromVectorSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/rotateFromVectorSelf)
impl TDOMMatrix with rotate_from_vector_self(self : Self, 
x? : Double = (0: Double), 
y? : Double = (0: Double)) -> DOMMatrix {
  dom_matrix_rotate_from_vector_self_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y)).unsafe_cast()
}

/// [DOMMatrix.rotateAxisAngleSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/rotateAxisAngleSelf)
impl TDOMMatrix with rotate_axis_angle_self(self : Self, 
x? : Double = (0: Double), 
y? : Double = (0: Double), 
z? : Double = (0: Double), 
angle? : Double = (0: Double)) -> DOMMatrix {
  dom_matrix_rotate_axis_angle_self_ffi(TJsValue::to_js(self), TJsValue::to_js(x), TJsValue::to_js(y), TJsValue::to_js(z), TJsValue::to_js(angle)).unsafe_cast()
}

/// [DOMMatrix.skewXSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/skewXSelf)
impl TDOMMatrix with skew_x_self(self : Self, 
sx? : Double = (0: Double)) -> DOMMatrix {
  dom_matrix_skew_x_self_ffi(TJsValue::to_js(self), TJsValue::to_js(sx)).unsafe_cast()
}

/// [DOMMatrix.skewYSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/skewYSelf)
impl TDOMMatrix with skew_y_self(self : Self, 
sy? : Double = (0: Double)) -> DOMMatrix {
  dom_matrix_skew_y_self_ffi(TJsValue::to_js(self), TJsValue::to_js(sy)).unsafe_cast()
}

/// [DOMMatrix.invertSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/invertSelf)
impl TDOMMatrix with invert_self(self : Self) -> DOMMatrix {
  dom_matrix_invert_self_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DOMMatrix.setMatrixValue](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/setMatrixValue)
impl TDOMMatrix with set_matrix_value(self : Self, 
transform_list : String) -> DOMMatrix {
  dom_matrix_set_matrix_value_ffi(TJsValue::to_js(self), TJsValue::to_js(transform_list)).unsafe_cast()
}