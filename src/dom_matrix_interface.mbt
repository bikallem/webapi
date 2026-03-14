// Do not edit. This file is generated.
// MoonBit type: DOMMatrix
// Specifications: geometry.idl

///|
/// [DOMMatrix](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix)
#external
pub type DOMMatrix

///|
pub impl TJsValue for DOMMatrix with to_js(self : DOMMatrix) -> JsValue = "%identity"

///|
pub impl FromJsAny for DOMMatrix with from_js_any(value : JsAny) -> DOMMatrix = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TDOMMatrix] DOMMatrix::into(self : DOMMatrix) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TDOMMatrix] DOMMatrix::unsafe_into(self : DOMMatrix) -> T = "%identity"

///|
pub impl HasConstructor for DOMMatrix with constructor_name() {
  "DOMMatrix"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDOMMatrix + HasConstructor] DOMMatrix::try_into(
  self : DOMMatrix,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TDOMMatrix for DOMMatrix

///|
pub impl TDOMMatrixReadOnly for DOMMatrix

///|
pub(open) trait TDOMMatrixNewInit: TJsValue {}

///|
pub impl TDOMMatrixNewInit for String

///|
pub impl TDOMMatrixNewInit for Array[Double]

///|
pub fn DOMMatrix::new(init? : &TDOMMatrixNewInit) -> DOMMatrix {
  dom_matrix_new_ffi(
    match init {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
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
  scale_self(
    self : Self,
    scale_x? : Double,
    scale_y? : Double,
    scale_z? : Double,
    origin_x? : Double,
    origin_y? : Double,
    origin_z? : Double,
  ) -> DOMMatrix = _
  scale3d_self(
    self : Self,
    scale? : Double,
    origin_x? : Double,
    origin_y? : Double,
    origin_z? : Double,
  ) -> DOMMatrix = _
  rotate_self(self : Self, rot_x? : Double, rot_y? : Double, rot_z? : Double) -> DOMMatrix = _
  rotate_from_vector_self(self : Self, x? : Double, y? : Double) -> DOMMatrix = _
  rotate_axis_angle_self(
    self : Self,
    x? : Double,
    y? : Double,
    z? : Double,
    angle? : Double,
  ) -> DOMMatrix = _
  skew_x_self(self : Self, sx? : Double) -> DOMMatrix = _
  skew_y_self(self : Self, sy? : Double) -> DOMMatrix = _
  invert_self(self : Self) -> DOMMatrix = _
  set_matrix_value(self : Self, transform_list : String) -> DOMMatrix = _
}

///|
/// [DOMMatrix.fromMatrix](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/fromMatrix)
pub fn DOMMatrix::from_matrix(other? : DOMMatrixInit) -> DOMMatrix {
  dom_matrix_from_matrix_ffi(opt_to_js(other))
}

///|
/// [DOMMatrix.fromFloat32Array](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/fromFloat32Array)
pub fn DOMMatrix::from_float32array(array32 : Float32Array) -> DOMMatrix {
  dom_matrix_from_float32array_ffi(TJsValue::to_js(array32))
}

///|
/// [DOMMatrix.fromFloat64Array](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/fromFloat64Array)
pub fn DOMMatrix::from_float64array(array64 : Float64Array) -> DOMMatrix {
  dom_matrix_from_float64array_ffi(TJsValue::to_js(array64))
}

///|
/// [DOMMatrix.a](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/a)
impl TDOMMatrix with a(self : Self) -> Double {
  dom_matrix_a_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.a](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/a)
impl TDOMMatrix with set_a(self : Self, a : Double) -> Unit {
  dom_matrix_set_a_ffi(TJsValue::to_js(self), TJsValue::to_js(a))
}

///|
/// [DOMMatrix.b](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/b)
impl TDOMMatrix with b(self : Self) -> Double {
  dom_matrix_b_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.b](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/b)
impl TDOMMatrix with set_b(self : Self, b : Double) -> Unit {
  dom_matrix_set_b_ffi(TJsValue::to_js(self), TJsValue::to_js(b))
}

///|
/// [DOMMatrix.c](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/c)
impl TDOMMatrix with c(self : Self) -> Double {
  dom_matrix_c_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.c](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/c)
impl TDOMMatrix with set_c(self : Self, c : Double) -> Unit {
  dom_matrix_set_c_ffi(TJsValue::to_js(self), TJsValue::to_js(c))
}

///|
/// [DOMMatrix.d](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/d)
impl TDOMMatrix with d(self : Self) -> Double {
  dom_matrix_d_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.d](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/d)
impl TDOMMatrix with set_d(self : Self, d : Double) -> Unit {
  dom_matrix_set_d_ffi(TJsValue::to_js(self), TJsValue::to_js(d))
}

///|
/// [DOMMatrix.e](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/e)
impl TDOMMatrix with e(self : Self) -> Double {
  dom_matrix_e_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.e](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/e)
impl TDOMMatrix with set_e(self : Self, e : Double) -> Unit {
  dom_matrix_set_e_ffi(TJsValue::to_js(self), TJsValue::to_js(e))
}

///|
/// [DOMMatrix.f](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/f)
impl TDOMMatrix with f(self : Self) -> Double {
  dom_matrix_f_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.f](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/f)
impl TDOMMatrix with set_f(self : Self, f : Double) -> Unit {
  dom_matrix_set_f_ffi(TJsValue::to_js(self), TJsValue::to_js(f))
}

///|
/// [DOMMatrix.m11](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m11)
impl TDOMMatrix with m11(self : Self) -> Double {
  dom_matrix_m11_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m11](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m11)
impl TDOMMatrix with set_m11(self : Self, m11 : Double) -> Unit {
  dom_matrix_set_m11_ffi(TJsValue::to_js(self), TJsValue::to_js(m11))
}

///|
/// [DOMMatrix.m12](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m12)
impl TDOMMatrix with m12(self : Self) -> Double {
  dom_matrix_m12_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m12](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m12)
impl TDOMMatrix with set_m12(self : Self, m12 : Double) -> Unit {
  dom_matrix_set_m12_ffi(TJsValue::to_js(self), TJsValue::to_js(m12))
}

///|
/// [DOMMatrix.m13](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m13)
impl TDOMMatrix with m13(self : Self) -> Double {
  dom_matrix_m13_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m13](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m13)
impl TDOMMatrix with set_m13(self : Self, m13 : Double) -> Unit {
  dom_matrix_set_m13_ffi(TJsValue::to_js(self), TJsValue::to_js(m13))
}

///|
/// [DOMMatrix.m14](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m14)
impl TDOMMatrix with m14(self : Self) -> Double {
  dom_matrix_m14_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m14](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m14)
impl TDOMMatrix with set_m14(self : Self, m14 : Double) -> Unit {
  dom_matrix_set_m14_ffi(TJsValue::to_js(self), TJsValue::to_js(m14))
}

///|
/// [DOMMatrix.m21](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m21)
impl TDOMMatrix with m21(self : Self) -> Double {
  dom_matrix_m21_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m21](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m21)
impl TDOMMatrix with set_m21(self : Self, m21 : Double) -> Unit {
  dom_matrix_set_m21_ffi(TJsValue::to_js(self), TJsValue::to_js(m21))
}

///|
/// [DOMMatrix.m22](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m22)
impl TDOMMatrix with m22(self : Self) -> Double {
  dom_matrix_m22_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m22](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m22)
impl TDOMMatrix with set_m22(self : Self, m22 : Double) -> Unit {
  dom_matrix_set_m22_ffi(TJsValue::to_js(self), TJsValue::to_js(m22))
}

///|
/// [DOMMatrix.m23](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m23)
impl TDOMMatrix with m23(self : Self) -> Double {
  dom_matrix_m23_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m23](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m23)
impl TDOMMatrix with set_m23(self : Self, m23 : Double) -> Unit {
  dom_matrix_set_m23_ffi(TJsValue::to_js(self), TJsValue::to_js(m23))
}

///|
/// [DOMMatrix.m24](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m24)
impl TDOMMatrix with m24(self : Self) -> Double {
  dom_matrix_m24_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m24](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m24)
impl TDOMMatrix with set_m24(self : Self, m24 : Double) -> Unit {
  dom_matrix_set_m24_ffi(TJsValue::to_js(self), TJsValue::to_js(m24))
}

///|
/// [DOMMatrix.m31](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m31)
impl TDOMMatrix with m31(self : Self) -> Double {
  dom_matrix_m31_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m31](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m31)
impl TDOMMatrix with set_m31(self : Self, m31 : Double) -> Unit {
  dom_matrix_set_m31_ffi(TJsValue::to_js(self), TJsValue::to_js(m31))
}

///|
/// [DOMMatrix.m32](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m32)
impl TDOMMatrix with m32(self : Self) -> Double {
  dom_matrix_m32_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m32](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m32)
impl TDOMMatrix with set_m32(self : Self, m32 : Double) -> Unit {
  dom_matrix_set_m32_ffi(TJsValue::to_js(self), TJsValue::to_js(m32))
}

///|
/// [DOMMatrix.m33](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m33)
impl TDOMMatrix with m33(self : Self) -> Double {
  dom_matrix_m33_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m33](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m33)
impl TDOMMatrix with set_m33(self : Self, m33 : Double) -> Unit {
  dom_matrix_set_m33_ffi(TJsValue::to_js(self), TJsValue::to_js(m33))
}

///|
/// [DOMMatrix.m34](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m34)
impl TDOMMatrix with m34(self : Self) -> Double {
  dom_matrix_m34_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m34](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m34)
impl TDOMMatrix with set_m34(self : Self, m34 : Double) -> Unit {
  dom_matrix_set_m34_ffi(TJsValue::to_js(self), TJsValue::to_js(m34))
}

///|
/// [DOMMatrix.m41](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m41)
impl TDOMMatrix with m41(self : Self) -> Double {
  dom_matrix_m41_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m41](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m41)
impl TDOMMatrix with set_m41(self : Self, m41 : Double) -> Unit {
  dom_matrix_set_m41_ffi(TJsValue::to_js(self), TJsValue::to_js(m41))
}

///|
/// [DOMMatrix.m42](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m42)
impl TDOMMatrix with m42(self : Self) -> Double {
  dom_matrix_m42_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m42](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m42)
impl TDOMMatrix with set_m42(self : Self, m42 : Double) -> Unit {
  dom_matrix_set_m42_ffi(TJsValue::to_js(self), TJsValue::to_js(m42))
}

///|
/// [DOMMatrix.m43](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m43)
impl TDOMMatrix with m43(self : Self) -> Double {
  dom_matrix_m43_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m43](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m43)
impl TDOMMatrix with set_m43(self : Self, m43 : Double) -> Unit {
  dom_matrix_set_m43_ffi(TJsValue::to_js(self), TJsValue::to_js(m43))
}

///|
/// [DOMMatrix.m44](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m44)
impl TDOMMatrix with m44(self : Self) -> Double {
  dom_matrix_m44_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.m44](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/m44)
impl TDOMMatrix with set_m44(self : Self, m44 : Double) -> Unit {
  dom_matrix_set_m44_ffi(TJsValue::to_js(self), TJsValue::to_js(m44))
}

///|
/// [DOMMatrix.multiplySelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/multiplySelf)
impl TDOMMatrix with multiply_self(self : Self, other? : DOMMatrixInit) -> DOMMatrix {
  dom_matrix_multiply_self_ffi(TJsValue::to_js(self), opt_to_js(other))
}

///|
/// [DOMMatrix.preMultiplySelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/preMultiplySelf)
impl TDOMMatrix with pre_multiply_self(self : Self, other? : DOMMatrixInit) -> DOMMatrix {
  dom_matrix_pre_multiply_self_ffi(TJsValue::to_js(self), opt_to_js(other))
}

///|
/// [DOMMatrix.translateSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/translateSelf)
impl TDOMMatrix with translate_self(
  self : Self,
  tx? : Double,
  ty? : Double,
  tz? : Double,
) -> DOMMatrix {
  dom_matrix_translate_self_ffi(
    TJsValue::to_js(self),
    opt_to_js(tx),
    opt_to_js(ty),
    opt_to_js(tz),
  )
}

///|
/// [DOMMatrix.scaleSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/scaleSelf)
impl TDOMMatrix with scale_self(
  self : Self,
  scale_x? : Double,
  scale_y? : Double,
  scale_z? : Double,
  origin_x? : Double,
  origin_y? : Double,
  origin_z? : Double,
) -> DOMMatrix {
  dom_matrix_scale_self_ffi(
    TJsValue::to_js(self),
    opt_to_js(scale_x),
    opt_to_js(scale_y),
    opt_to_js(scale_z),
    opt_to_js(origin_x),
    opt_to_js(origin_y),
    opt_to_js(origin_z),
  )
}

///|
/// [DOMMatrix.scale3dSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/scale3dSelf)
impl TDOMMatrix with scale3d_self(
  self : Self,
  scale? : Double,
  origin_x? : Double,
  origin_y? : Double,
  origin_z? : Double,
) -> DOMMatrix {
  dom_matrix_scale3d_self_ffi(
    TJsValue::to_js(self),
    opt_to_js(scale),
    opt_to_js(origin_x),
    opt_to_js(origin_y),
    opt_to_js(origin_z),
  )
}

///|
/// [DOMMatrix.rotateSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/rotateSelf)
impl TDOMMatrix with rotate_self(
  self : Self,
  rot_x? : Double,
  rot_y? : Double,
  rot_z? : Double,
) -> DOMMatrix {
  dom_matrix_rotate_self_ffi(
    TJsValue::to_js(self),
    opt_to_js(rot_x),
    opt_to_js(rot_y),
    opt_to_js(rot_z),
  )
}

///|
/// [DOMMatrix.rotateFromVectorSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/rotateFromVectorSelf)
impl TDOMMatrix with rotate_from_vector_self(
  self : Self,
  x? : Double,
  y? : Double,
) -> DOMMatrix {
  dom_matrix_rotate_from_vector_self_ffi(
    TJsValue::to_js(self),
    opt_to_js(x),
    opt_to_js(y),
  )
}

///|
/// [DOMMatrix.rotateAxisAngleSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/rotateAxisAngleSelf)
impl TDOMMatrix with rotate_axis_angle_self(
  self : Self,
  x? : Double,
  y? : Double,
  z? : Double,
  angle? : Double,
) -> DOMMatrix {
  dom_matrix_rotate_axis_angle_self_ffi(
    TJsValue::to_js(self),
    opt_to_js(x),
    opt_to_js(y),
    opt_to_js(z),
    opt_to_js(angle),
  )
}

///|
/// [DOMMatrix.skewXSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/skewXSelf)
impl TDOMMatrix with skew_x_self(self : Self, sx? : Double) -> DOMMatrix {
  dom_matrix_skew_x_self_ffi(TJsValue::to_js(self), opt_to_js(sx))
}

///|
/// [DOMMatrix.skewYSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/skewYSelf)
impl TDOMMatrix with skew_y_self(self : Self, sy? : Double) -> DOMMatrix {
  dom_matrix_skew_y_self_ffi(TJsValue::to_js(self), opt_to_js(sy))
}

///|
/// [DOMMatrix.invertSelf](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/invertSelf)
impl TDOMMatrix with invert_self(self : Self) -> DOMMatrix {
  dom_matrix_invert_self_ffi(TJsValue::to_js(self))
}

///|
/// [DOMMatrix.setMatrixValue](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix/setMatrixValue)
impl TDOMMatrix with set_matrix_value(self : Self, transform_list : String) -> DOMMatrix {
  dom_matrix_set_matrix_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(transform_list),
  )
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_new_ffi(init : JsValue) -> DOMMatrix = "(init) => new DOMMatrix(init)"

///|
#cfg(target="js")
extern "js" fn dom_matrix_from_matrix_ffi_js(other : JsValue) -> JsValue = "(other) => DOMMatrix.fromMatrix(other)"

///|
#cfg(target="js")
fn dom_matrix_from_matrix_ffi(other : JsValue) -> DOMMatrix {
  dom_matrix_from_matrix_ffi_js(other).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_from_float32array_ffi_js(
  array32 : JsValue,
) -> JsValue = "(array32) => DOMMatrix.fromFloat32Array(array32)"

///|
#cfg(target="js")
fn dom_matrix_from_float32array_ffi(array32 : JsValue) -> DOMMatrix {
  dom_matrix_from_float32array_ffi_js(array32).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_from_float64array_ffi_js(
  array64 : JsValue,
) -> JsValue = "(array64) => DOMMatrix.fromFloat64Array(array64)"

///|
#cfg(target="js")
fn dom_matrix_from_float64array_ffi(array64 : JsValue) -> DOMMatrix {
  dom_matrix_from_float64array_ffi_js(array64).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_a_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.a"

///|
#cfg(target="js")
fn dom_matrix_a_ffi(obj : JsValue) -> Double {
  dom_matrix_a_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_a_ffi(obj : JsValue, a : JsValue) -> Unit = "(obj, a) => { obj.a = a; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_b_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.b"

///|
#cfg(target="js")
fn dom_matrix_b_ffi(obj : JsValue) -> Double {
  dom_matrix_b_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_b_ffi(obj : JsValue, b : JsValue) -> Unit = "(obj, b) => { obj.b = b; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_c_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.c"

///|
#cfg(target="js")
fn dom_matrix_c_ffi(obj : JsValue) -> Double {
  dom_matrix_c_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_c_ffi(obj : JsValue, c : JsValue) -> Unit = "(obj, c) => { obj.c = c; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_d_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.d"

///|
#cfg(target="js")
fn dom_matrix_d_ffi(obj : JsValue) -> Double {
  dom_matrix_d_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_d_ffi(obj : JsValue, d : JsValue) -> Unit = "(obj, d) => { obj.d = d; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_e_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.e"

///|
#cfg(target="js")
fn dom_matrix_e_ffi(obj : JsValue) -> Double {
  dom_matrix_e_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_e_ffi(obj : JsValue, e : JsValue) -> Unit = "(obj, e) => { obj.e = e; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_f_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.f"

///|
#cfg(target="js")
fn dom_matrix_f_ffi(obj : JsValue) -> Double {
  dom_matrix_f_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_f_ffi(obj : JsValue, f : JsValue) -> Unit = "(obj, f) => { obj.f = f; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m11_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m11"

///|
#cfg(target="js")
fn dom_matrix_m11_ffi(obj : JsValue) -> Double {
  dom_matrix_m11_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m11_ffi(obj : JsValue, m11 : JsValue) -> Unit = "(obj, m11) => { obj.m11 = m11; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m12_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m12"

///|
#cfg(target="js")
fn dom_matrix_m12_ffi(obj : JsValue) -> Double {
  dom_matrix_m12_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m12_ffi(obj : JsValue, m12 : JsValue) -> Unit = "(obj, m12) => { obj.m12 = m12; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m13_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m13"

///|
#cfg(target="js")
fn dom_matrix_m13_ffi(obj : JsValue) -> Double {
  dom_matrix_m13_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m13_ffi(obj : JsValue, m13 : JsValue) -> Unit = "(obj, m13) => { obj.m13 = m13; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m14_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m14"

///|
#cfg(target="js")
fn dom_matrix_m14_ffi(obj : JsValue) -> Double {
  dom_matrix_m14_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m14_ffi(obj : JsValue, m14 : JsValue) -> Unit = "(obj, m14) => { obj.m14 = m14; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m21_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m21"

///|
#cfg(target="js")
fn dom_matrix_m21_ffi(obj : JsValue) -> Double {
  dom_matrix_m21_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m21_ffi(obj : JsValue, m21 : JsValue) -> Unit = "(obj, m21) => { obj.m21 = m21; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m22_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m22"

///|
#cfg(target="js")
fn dom_matrix_m22_ffi(obj : JsValue) -> Double {
  dom_matrix_m22_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m22_ffi(obj : JsValue, m22 : JsValue) -> Unit = "(obj, m22) => { obj.m22 = m22; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m23_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m23"

///|
#cfg(target="js")
fn dom_matrix_m23_ffi(obj : JsValue) -> Double {
  dom_matrix_m23_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m23_ffi(obj : JsValue, m23 : JsValue) -> Unit = "(obj, m23) => { obj.m23 = m23; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m24_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m24"

///|
#cfg(target="js")
fn dom_matrix_m24_ffi(obj : JsValue) -> Double {
  dom_matrix_m24_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m24_ffi(obj : JsValue, m24 : JsValue) -> Unit = "(obj, m24) => { obj.m24 = m24; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m31_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m31"

///|
#cfg(target="js")
fn dom_matrix_m31_ffi(obj : JsValue) -> Double {
  dom_matrix_m31_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m31_ffi(obj : JsValue, m31 : JsValue) -> Unit = "(obj, m31) => { obj.m31 = m31; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m32_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m32"

///|
#cfg(target="js")
fn dom_matrix_m32_ffi(obj : JsValue) -> Double {
  dom_matrix_m32_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m32_ffi(obj : JsValue, m32 : JsValue) -> Unit = "(obj, m32) => { obj.m32 = m32; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m33_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m33"

///|
#cfg(target="js")
fn dom_matrix_m33_ffi(obj : JsValue) -> Double {
  dom_matrix_m33_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m33_ffi(obj : JsValue, m33 : JsValue) -> Unit = "(obj, m33) => { obj.m33 = m33; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m34_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m34"

///|
#cfg(target="js")
fn dom_matrix_m34_ffi(obj : JsValue) -> Double {
  dom_matrix_m34_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m34_ffi(obj : JsValue, m34 : JsValue) -> Unit = "(obj, m34) => { obj.m34 = m34; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m41_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m41"

///|
#cfg(target="js")
fn dom_matrix_m41_ffi(obj : JsValue) -> Double {
  dom_matrix_m41_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m41_ffi(obj : JsValue, m41 : JsValue) -> Unit = "(obj, m41) => { obj.m41 = m41; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m42_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m42"

///|
#cfg(target="js")
fn dom_matrix_m42_ffi(obj : JsValue) -> Double {
  dom_matrix_m42_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m42_ffi(obj : JsValue, m42 : JsValue) -> Unit = "(obj, m42) => { obj.m42 = m42; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m43_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m43"

///|
#cfg(target="js")
fn dom_matrix_m43_ffi(obj : JsValue) -> Double {
  dom_matrix_m43_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m43_ffi(obj : JsValue, m43 : JsValue) -> Unit = "(obj, m43) => { obj.m43 = m43; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_m44_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m44"

///|
#cfg(target="js")
fn dom_matrix_m44_ffi(obj : JsValue) -> Double {
  dom_matrix_m44_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_m44_ffi(obj : JsValue, m44 : JsValue) -> Unit = "(obj, m44) => { obj.m44 = m44; }"

///|
#cfg(target="js")
extern "js" fn dom_matrix_multiply_self_ffi_js(
  obj : JsValue,
  other : JsValue,
) -> JsValue = "(obj, other) => obj.multiplySelf(other)"

///|
#cfg(target="js")
fn dom_matrix_multiply_self_ffi(obj : JsValue, other : JsValue) -> DOMMatrix {
  dom_matrix_multiply_self_ffi_js(obj, other).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_pre_multiply_self_ffi_js(
  obj : JsValue,
  other : JsValue,
) -> JsValue = "(obj, other) => obj.preMultiplySelf(other)"

///|
#cfg(target="js")
fn dom_matrix_pre_multiply_self_ffi(
  obj : JsValue,
  other : JsValue,
) -> DOMMatrix {
  dom_matrix_pre_multiply_self_ffi_js(obj, other).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_translate_self_ffi_js(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
  tz : JsValue,
) -> JsValue = "(obj, tx, ty, tz) => obj.translateSelf(tx, ty, tz)"

///|
#cfg(target="js")
fn dom_matrix_translate_self_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
  tz : JsValue,
) -> DOMMatrix {
  dom_matrix_translate_self_ffi_js(obj, tx, ty, tz).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_scale_self_ffi_js(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
  scale_z : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> JsValue = "(obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => obj.scaleSelf(scale_x, scale_y, scale_z, origin_x, origin_y, origin_z)"

///|
#cfg(target="js")
fn dom_matrix_scale_self_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
  scale_z : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> DOMMatrix {
  dom_matrix_scale_self_ffi_js(
    obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z,
  ).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_scale3d_self_ffi_js(
  obj : JsValue,
  scale : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> JsValue = "(obj, scale, origin_x, origin_y, origin_z) => obj.scale3dSelf(scale, origin_x, origin_y, origin_z)"

///|
#cfg(target="js")
fn dom_matrix_scale3d_self_ffi(
  obj : JsValue,
  scale : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> DOMMatrix {
  dom_matrix_scale3d_self_ffi_js(obj, scale, origin_x, origin_y, origin_z).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_rotate_self_ffi_js(
  obj : JsValue,
  rot_x : JsValue,
  rot_y : JsValue,
  rot_z : JsValue,
) -> JsValue = "(obj, rot_x, rot_y, rot_z) => obj.rotateSelf(rot_x, rot_y, rot_z)"

///|
#cfg(target="js")
fn dom_matrix_rotate_self_ffi(
  obj : JsValue,
  rot_x : JsValue,
  rot_y : JsValue,
  rot_z : JsValue,
) -> DOMMatrix {
  dom_matrix_rotate_self_ffi_js(obj, rot_x, rot_y, rot_z).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_rotate_from_vector_self_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.rotateFromVectorSelf(x, y)"

///|
#cfg(target="js")
fn dom_matrix_rotate_from_vector_self_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> DOMMatrix {
  dom_matrix_rotate_from_vector_self_ffi_js(obj, x, y).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_rotate_axis_angle_self_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  z : JsValue,
  angle : JsValue,
) -> JsValue = "(obj, x, y, z, angle) => obj.rotateAxisAngleSelf(x, y, z, angle)"

///|
#cfg(target="js")
fn dom_matrix_rotate_axis_angle_self_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  z : JsValue,
  angle : JsValue,
) -> DOMMatrix {
  dom_matrix_rotate_axis_angle_self_ffi_js(obj, x, y, z, angle).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_skew_x_self_ffi_js(
  obj : JsValue,
  sx : JsValue,
) -> JsValue = "(obj, sx) => obj.skewXSelf(sx)"

///|
#cfg(target="js")
fn dom_matrix_skew_x_self_ffi(obj : JsValue, sx : JsValue) -> DOMMatrix {
  dom_matrix_skew_x_self_ffi_js(obj, sx).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_skew_y_self_ffi_js(
  obj : JsValue,
  sy : JsValue,
) -> JsValue = "(obj, sy) => obj.skewYSelf(sy)"

///|
#cfg(target="js")
fn dom_matrix_skew_y_self_ffi(obj : JsValue, sy : JsValue) -> DOMMatrix {
  dom_matrix_skew_y_self_ffi_js(obj, sy).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_invert_self_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.invertSelf()"

///|
#cfg(target="js")
fn dom_matrix_invert_self_ffi(obj : JsValue) -> DOMMatrix {
  dom_matrix_invert_self_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_set_matrix_value_ffi_js(
  obj : JsValue,
  transform_list : JsValue,
) -> JsValue = "(obj, transform_list) => obj.setMatrixValue(transform_list)"

///|
#cfg(target="js")
fn dom_matrix_set_matrix_value_ffi(
  obj : JsValue,
  transform_list : JsValue,
) -> DOMMatrix {
  dom_matrix_set_matrix_value_ffi_js(obj, transform_list).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn dom_matrix_new_ffi(init : JsValue) -> DOMMatrix = "webapi_DOMMatrix" "new"

///|
#cfg(target="wasm-gc")
fn dom_matrix_from_matrix_ffi(other : JsValue) -> DOMMatrix = "webapi_DOMMatrix" "fromMatrix"

///|
#cfg(target="wasm-gc")
fn dom_matrix_from_float32array_ffi(array32 : JsValue) -> DOMMatrix = "webapi_DOMMatrix" "fromFloat32Array"

///|
#cfg(target="wasm-gc")
fn dom_matrix_from_float64array_ffi(array64 : JsValue) -> DOMMatrix = "webapi_DOMMatrix" "fromFloat64Array"

///|
#cfg(target="wasm-gc")
fn dom_matrix_a_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_a"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_a_ffi(obj : JsValue, a : JsValue) -> Unit = "webapi_DOMMatrix" "set_a"

///|
#cfg(target="wasm-gc")
fn dom_matrix_b_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_b"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_b_ffi(obj : JsValue, b : JsValue) -> Unit = "webapi_DOMMatrix" "set_b"

///|
#cfg(target="wasm-gc")
fn dom_matrix_c_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_c"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_c_ffi(obj : JsValue, c : JsValue) -> Unit = "webapi_DOMMatrix" "set_c"

///|
#cfg(target="wasm-gc")
fn dom_matrix_d_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_d"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_d_ffi(obj : JsValue, d : JsValue) -> Unit = "webapi_DOMMatrix" "set_d"

///|
#cfg(target="wasm-gc")
fn dom_matrix_e_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_e"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_e_ffi(obj : JsValue, e : JsValue) -> Unit = "webapi_DOMMatrix" "set_e"

///|
#cfg(target="wasm-gc")
fn dom_matrix_f_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_f"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_f_ffi(obj : JsValue, f : JsValue) -> Unit = "webapi_DOMMatrix" "set_f"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m11_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m11"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m11_ffi(obj : JsValue, m11 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m11"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m12_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m12"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m12_ffi(obj : JsValue, m12 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m12"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m13_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m13"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m13_ffi(obj : JsValue, m13 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m13"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m14_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m14"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m14_ffi(obj : JsValue, m14 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m14"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m21_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m21"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m21_ffi(obj : JsValue, m21 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m21"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m22_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m22"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m22_ffi(obj : JsValue, m22 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m22"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m23_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m23"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m23_ffi(obj : JsValue, m23 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m23"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m24_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m24"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m24_ffi(obj : JsValue, m24 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m24"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m31_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m31"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m31_ffi(obj : JsValue, m31 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m31"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m32_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m32"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m32_ffi(obj : JsValue, m32 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m32"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m33_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m33"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m33_ffi(obj : JsValue, m33 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m33"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m34_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m34"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m34_ffi(obj : JsValue, m34 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m34"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m41_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m41"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m41_ffi(obj : JsValue, m41 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m41"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m42_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m42"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m42_ffi(obj : JsValue, m42 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m42"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m43_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m43"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m43_ffi(obj : JsValue, m43 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m43"

///|
#cfg(target="wasm-gc")
fn dom_matrix_m44_ffi(obj : JsValue) -> Double = "webapi_DOMMatrix" "get_m44"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_m44_ffi(obj : JsValue, m44 : JsValue) -> Unit = "webapi_DOMMatrix" "set_m44"

///|
#cfg(target="wasm-gc")
fn dom_matrix_multiply_self_ffi(obj : JsValue, other : JsValue) -> DOMMatrix = "webapi_DOMMatrix" "multiplySelf"

///|
#cfg(target="wasm-gc")
fn dom_matrix_pre_multiply_self_ffi(
  obj : JsValue,
  other : JsValue,
) -> DOMMatrix = "webapi_DOMMatrix" "preMultiplySelf"

///|
#cfg(target="wasm-gc")
fn dom_matrix_translate_self_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
  tz : JsValue,
) -> DOMMatrix = "webapi_DOMMatrix" "translateSelf"

///|
#cfg(target="wasm-gc")
fn dom_matrix_scale_self_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
  scale_z : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> DOMMatrix = "webapi_DOMMatrix" "scaleSelf"

///|
#cfg(target="wasm-gc")
fn dom_matrix_scale3d_self_ffi(
  obj : JsValue,
  scale : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> DOMMatrix = "webapi_DOMMatrix" "scale3dSelf"

///|
#cfg(target="wasm-gc")
fn dom_matrix_rotate_self_ffi(
  obj : JsValue,
  rot_x : JsValue,
  rot_y : JsValue,
  rot_z : JsValue,
) -> DOMMatrix = "webapi_DOMMatrix" "rotateSelf"

///|
#cfg(target="wasm-gc")
fn dom_matrix_rotate_from_vector_self_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> DOMMatrix = "webapi_DOMMatrix" "rotateFromVectorSelf"

///|
#cfg(target="wasm-gc")
fn dom_matrix_rotate_axis_angle_self_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  z : JsValue,
  angle : JsValue,
) -> DOMMatrix = "webapi_DOMMatrix" "rotateAxisAngleSelf"

///|
#cfg(target="wasm-gc")
fn dom_matrix_skew_x_self_ffi(obj : JsValue, sx : JsValue) -> DOMMatrix = "webapi_DOMMatrix" "skewXSelf"

///|
#cfg(target="wasm-gc")
fn dom_matrix_skew_y_self_ffi(obj : JsValue, sy : JsValue) -> DOMMatrix = "webapi_DOMMatrix" "skewYSelf"

///|
#cfg(target="wasm-gc")
fn dom_matrix_invert_self_ffi(obj : JsValue) -> DOMMatrix = "webapi_DOMMatrix" "invertSelf"

///|
#cfg(target="wasm-gc")
fn dom_matrix_set_matrix_value_ffi(
  obj : JsValue,
  transform_list : JsValue,
) -> DOMMatrix = "webapi_DOMMatrix" "setMatrixValue"
