// Do not edit. This file is generated.
// MoonBit type: DOMMatrixReadOnly
// Specifications: geometry.idl

///|
/// [DOMMatrixReadOnly](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly)
#external
pub type DOMMatrixReadOnly

///|
pub impl TJsValue for DOMMatrixReadOnly with to_js(self : DOMMatrixReadOnly) -> JsValue = "%identity"

///|
pub fn[T : TDOMMatrixReadOnly] DOMMatrixReadOnly::into(
  self : DOMMatrixReadOnly,
) -> T = "%identity"

///|
pub impl TDOMMatrixReadOnly for DOMMatrixReadOnly

///|
pub(open) trait TDOMMatrixReadOnlyNewInit {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDOMMatrixReadOnlyNewInit for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TDOMMatrixReadOnlyNewInit for Array[Double] with to_js(
  self : Array[Double],
) -> JsValue = "%identity"

///|
extern "js" fn dom_matrix_read_only_new_ffi(
  init : JsValue,
) -> DOMMatrixReadOnly = "(init) => new DOMMatrixReadOnly(init)"

///|
pub fn DOMMatrixReadOnly::new(
  init? : &TDOMMatrixReadOnlyNewInit,
) -> DOMMatrixReadOnly {
  dom_matrix_read_only_new_ffi(
    match init {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [DOMMatrixReadOnly](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly) interface.
pub trait TDOMMatrixReadOnly: TJsValue {
  a(self : Self) -> Double = _
  b(self : Self) -> Double = _
  c(self : Self) -> Double = _
  d(self : Self) -> Double = _
  e(self : Self) -> Double = _
  f(self : Self) -> Double = _
  m11(self : Self) -> Double = _
  m12(self : Self) -> Double = _
  m13(self : Self) -> Double = _
  m14(self : Self) -> Double = _
  m21(self : Self) -> Double = _
  m22(self : Self) -> Double = _
  m23(self : Self) -> Double = _
  m24(self : Self) -> Double = _
  m31(self : Self) -> Double = _
  m32(self : Self) -> Double = _
  m33(self : Self) -> Double = _
  m34(self : Self) -> Double = _
  m41(self : Self) -> Double = _
  m42(self : Self) -> Double = _
  m43(self : Self) -> Double = _
  m44(self : Self) -> Double = _
  is2d(self : Self) -> Bool = _
  is_identity(self : Self) -> Bool = _
  translate(self : Self, tx? : Double, ty? : Double, tz? : Double) -> DOMMatrix = _
  scale(
    self : Self,
    scale_x? : Double,
    scale_y? : Double,
    scale_z? : Double,
    origin_x? : Double,
    origin_y? : Double,
    origin_z? : Double,
  ) -> DOMMatrix = _
  scale_non_uniform(self : Self, scale_x? : Double, scale_y? : Double) -> DOMMatrix = _
  scale3d(
    self : Self,
    scale? : Double,
    origin_x? : Double,
    origin_y? : Double,
    origin_z? : Double,
  ) -> DOMMatrix = _
  rotate(self : Self, rot_x? : Double, rot_y? : Double, rot_z? : Double) -> DOMMatrix = _
  rotate_from_vector(self : Self, x? : Double, y? : Double) -> DOMMatrix = _
  rotate_axis_angle(
    self : Self,
    x? : Double,
    y? : Double,
    z? : Double,
    angle? : Double,
  ) -> DOMMatrix = _
  skew_x(self : Self, sx? : Double) -> DOMMatrix = _
  skew_y(self : Self, sy? : Double) -> DOMMatrix = _
  multiply(self : Self, other? : DOMMatrixInit) -> DOMMatrix = _
  flip_x(self : Self) -> DOMMatrix = _
  flip_y(self : Self) -> DOMMatrix = _
  inverse(self : Self) -> DOMMatrix = _
  transform_point(self : Self, point? : DOMPointInit) -> DOMPoint = _
  to_float32array(self : Self) -> Float32Array = _
  to_float64array(self : Self) -> Float64Array = _
  to_json(self : Self) -> JsValue = _
}

///|
extern "js" fn dom_matrix_read_only_from_matrix_ffi(
  other : JsValue,
) -> DOMMatrixReadOnly = "(other) => DOMMatrixReadOnly.fromMatrix(other)"

///|
/// [DOMMatrixReadOnly.fromMatrix](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/fromMatrix)
pub fn DOMMatrixReadOnly::from_matrix(
  other? : DOMMatrixInit = DOMMatrixInit::empty(),
) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_matrix_ffi(TJsValue::to_js(other))
}

///|
extern "js" fn dom_matrix_read_only_from_float32array_ffi(
  array32 : JsValue,
) -> DOMMatrixReadOnly = "(array32) => DOMMatrixReadOnly.fromFloat32Array(array32)"

///|
/// [DOMMatrixReadOnly.fromFloat32Array](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/fromFloat32Array)
pub fn DOMMatrixReadOnly::from_float32array(
  array32 : Float32Array,
) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_float32array_ffi(TJsValue::to_js(array32))
}

///|
extern "js" fn dom_matrix_read_only_from_float64array_ffi(
  array64 : JsValue,
) -> DOMMatrixReadOnly = "(array64) => DOMMatrixReadOnly.fromFloat64Array(array64)"

///|
/// [DOMMatrixReadOnly.fromFloat64Array](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/fromFloat64Array)
pub fn DOMMatrixReadOnly::from_float64array(
  array64 : Float64Array,
) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_float64array_ffi(TJsValue::to_js(array64))
}

///|
extern "js" fn dom_matrix_read_only_a_ffi(obj : JsValue) -> Double = "(obj) => obj.a"

///|
/// [DOMMatrixReadOnly.a](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/a)
impl TDOMMatrixReadOnly with a(self : Self) -> Double {
  dom_matrix_read_only_a_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_b_ffi(obj : JsValue) -> Double = "(obj) => obj.b"

///|
/// [DOMMatrixReadOnly.b](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/b)
impl TDOMMatrixReadOnly with b(self : Self) -> Double {
  dom_matrix_read_only_b_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_c_ffi(obj : JsValue) -> Double = "(obj) => obj.c"

///|
/// [DOMMatrixReadOnly.c](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/c)
impl TDOMMatrixReadOnly with c(self : Self) -> Double {
  dom_matrix_read_only_c_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_d_ffi(obj : JsValue) -> Double = "(obj) => obj.d"

///|
/// [DOMMatrixReadOnly.d](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/d)
impl TDOMMatrixReadOnly with d(self : Self) -> Double {
  dom_matrix_read_only_d_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_e_ffi(obj : JsValue) -> Double = "(obj) => obj.e"

///|
/// [DOMMatrixReadOnly.e](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/e)
impl TDOMMatrixReadOnly with e(self : Self) -> Double {
  dom_matrix_read_only_e_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_f_ffi(obj : JsValue) -> Double = "(obj) => obj.f"

///|
/// [DOMMatrixReadOnly.f](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/f)
impl TDOMMatrixReadOnly with f(self : Self) -> Double {
  dom_matrix_read_only_f_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m11_ffi(obj : JsValue) -> Double = "(obj) => obj.m11"

///|
/// [DOMMatrixReadOnly.m11](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m11)
impl TDOMMatrixReadOnly with m11(self : Self) -> Double {
  dom_matrix_read_only_m11_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m12_ffi(obj : JsValue) -> Double = "(obj) => obj.m12"

///|
/// [DOMMatrixReadOnly.m12](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m12)
impl TDOMMatrixReadOnly with m12(self : Self) -> Double {
  dom_matrix_read_only_m12_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m13_ffi(obj : JsValue) -> Double = "(obj) => obj.m13"

///|
/// [DOMMatrixReadOnly.m13](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m13)
impl TDOMMatrixReadOnly with m13(self : Self) -> Double {
  dom_matrix_read_only_m13_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m14_ffi(obj : JsValue) -> Double = "(obj) => obj.m14"

///|
/// [DOMMatrixReadOnly.m14](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m14)
impl TDOMMatrixReadOnly with m14(self : Self) -> Double {
  dom_matrix_read_only_m14_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m21_ffi(obj : JsValue) -> Double = "(obj) => obj.m21"

///|
/// [DOMMatrixReadOnly.m21](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m21)
impl TDOMMatrixReadOnly with m21(self : Self) -> Double {
  dom_matrix_read_only_m21_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m22_ffi(obj : JsValue) -> Double = "(obj) => obj.m22"

///|
/// [DOMMatrixReadOnly.m22](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m22)
impl TDOMMatrixReadOnly with m22(self : Self) -> Double {
  dom_matrix_read_only_m22_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m23_ffi(obj : JsValue) -> Double = "(obj) => obj.m23"

///|
/// [DOMMatrixReadOnly.m23](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m23)
impl TDOMMatrixReadOnly with m23(self : Self) -> Double {
  dom_matrix_read_only_m23_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m24_ffi(obj : JsValue) -> Double = "(obj) => obj.m24"

///|
/// [DOMMatrixReadOnly.m24](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m24)
impl TDOMMatrixReadOnly with m24(self : Self) -> Double {
  dom_matrix_read_only_m24_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m31_ffi(obj : JsValue) -> Double = "(obj) => obj.m31"

///|
/// [DOMMatrixReadOnly.m31](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m31)
impl TDOMMatrixReadOnly with m31(self : Self) -> Double {
  dom_matrix_read_only_m31_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m32_ffi(obj : JsValue) -> Double = "(obj) => obj.m32"

///|
/// [DOMMatrixReadOnly.m32](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m32)
impl TDOMMatrixReadOnly with m32(self : Self) -> Double {
  dom_matrix_read_only_m32_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m33_ffi(obj : JsValue) -> Double = "(obj) => obj.m33"

///|
/// [DOMMatrixReadOnly.m33](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m33)
impl TDOMMatrixReadOnly with m33(self : Self) -> Double {
  dom_matrix_read_only_m33_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m34_ffi(obj : JsValue) -> Double = "(obj) => obj.m34"

///|
/// [DOMMatrixReadOnly.m34](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m34)
impl TDOMMatrixReadOnly with m34(self : Self) -> Double {
  dom_matrix_read_only_m34_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m41_ffi(obj : JsValue) -> Double = "(obj) => obj.m41"

///|
/// [DOMMatrixReadOnly.m41](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m41)
impl TDOMMatrixReadOnly with m41(self : Self) -> Double {
  dom_matrix_read_only_m41_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m42_ffi(obj : JsValue) -> Double = "(obj) => obj.m42"

///|
/// [DOMMatrixReadOnly.m42](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m42)
impl TDOMMatrixReadOnly with m42(self : Self) -> Double {
  dom_matrix_read_only_m42_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m43_ffi(obj : JsValue) -> Double = "(obj) => obj.m43"

///|
/// [DOMMatrixReadOnly.m43](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m43)
impl TDOMMatrixReadOnly with m43(self : Self) -> Double {
  dom_matrix_read_only_m43_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m44_ffi(obj : JsValue) -> Double = "(obj) => obj.m44"

///|
/// [DOMMatrixReadOnly.m44](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m44)
impl TDOMMatrixReadOnly with m44(self : Self) -> Double {
  dom_matrix_read_only_m44_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_is2d_ffi(obj : JsValue) -> Bool = "(obj) => obj.is2D"

///|
/// [DOMMatrixReadOnly.is2D](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/is2D)
impl TDOMMatrixReadOnly with is2d(self : Self) -> Bool {
  dom_matrix_read_only_is2d_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_is_identity_ffi(obj : JsValue) -> Bool = "(obj) => obj.isIdentity"

///|
/// [DOMMatrixReadOnly.isIdentity](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/isIdentity)
impl TDOMMatrixReadOnly with is_identity(self : Self) -> Bool {
  dom_matrix_read_only_is_identity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_translate_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
  tz : JsValue,
) -> DOMMatrix = "(obj, tx, ty, tz) => obj.translate(tx, ty, tz)"

///|
/// [DOMMatrixReadOnly.translate](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/translate)
impl TDOMMatrixReadOnly with translate(
  self : Self,
  tx? : Double = (0 : Double),
  ty? : Double = (0 : Double),
  tz? : Double = (0 : Double),
) -> DOMMatrix {
  dom_matrix_read_only_translate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(tx),
    TJsValue::to_js(ty),
    TJsValue::to_js(tz),
  )
}

///|
extern "js" fn dom_matrix_read_only_scale_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
  scale_z : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> DOMMatrix = "(obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => obj.scale(scale_x, scale_y, scale_z, origin_x, origin_y, origin_z)"

///|
/// [DOMMatrixReadOnly.scale](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/scale)
impl TDOMMatrixReadOnly with scale(
  self : Self,
  scale_x? : Double = (1 : Double),
  scale_y? : Double,
  scale_z? : Double = (1 : Double),
  origin_x? : Double = (0 : Double),
  origin_y? : Double = (0 : Double),
  origin_z? : Double = (0 : Double),
) -> DOMMatrix {
  dom_matrix_read_only_scale_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scale_x),
    opt_to_js(scale_y),
    TJsValue::to_js(scale_z),
    TJsValue::to_js(origin_x),
    TJsValue::to_js(origin_y),
    TJsValue::to_js(origin_z),
  )
}

///|
extern "js" fn dom_matrix_read_only_scale_non_uniform_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
) -> DOMMatrix = "(obj, scale_x, scale_y) => obj.scaleNonUniform(scale_x, scale_y)"

///|
/// [DOMMatrixReadOnly.scaleNonUniform](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/scaleNonUniform)
impl TDOMMatrixReadOnly with scale_non_uniform(
  self : Self,
  scale_x? : Double = (1 : Double),
  scale_y? : Double = (1 : Double),
) -> DOMMatrix {
  dom_matrix_read_only_scale_non_uniform_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scale_x),
    TJsValue::to_js(scale_y),
  )
}

///|
extern "js" fn dom_matrix_read_only_scale3d_ffi(
  obj : JsValue,
  scale : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> DOMMatrix = "(obj, scale, origin_x, origin_y, origin_z) => obj.scale3d(scale, origin_x, origin_y, origin_z)"

///|
/// [DOMMatrixReadOnly.scale3d](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/scale3d)
impl TDOMMatrixReadOnly with scale3d(
  self : Self,
  scale? : Double = (1 : Double),
  origin_x? : Double = (0 : Double),
  origin_y? : Double = (0 : Double),
  origin_z? : Double = (0 : Double),
) -> DOMMatrix {
  dom_matrix_read_only_scale3d_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scale),
    TJsValue::to_js(origin_x),
    TJsValue::to_js(origin_y),
    TJsValue::to_js(origin_z),
  )
}

///|
extern "js" fn dom_matrix_read_only_rotate_ffi(
  obj : JsValue,
  rot_x : JsValue,
  rot_y : JsValue,
  rot_z : JsValue,
) -> DOMMatrix = "(obj, rot_x, rot_y, rot_z) => obj.rotate(rot_x, rot_y, rot_z)"

///|
/// [DOMMatrixReadOnly.rotate](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/rotate)
impl TDOMMatrixReadOnly with rotate(
  self : Self,
  rot_x? : Double = (0 : Double),
  rot_y? : Double,
  rot_z? : Double,
) -> DOMMatrix {
  dom_matrix_read_only_rotate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rot_x),
    opt_to_js(rot_y),
    opt_to_js(rot_z),
  )
}

///|
extern "js" fn dom_matrix_read_only_rotate_from_vector_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> DOMMatrix = "(obj, x, y) => obj.rotateFromVector(x, y)"

///|
/// [DOMMatrixReadOnly.rotateFromVector](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/rotateFromVector)
impl TDOMMatrixReadOnly with rotate_from_vector(
  self : Self,
  x? : Double = (0 : Double),
  y? : Double = (0 : Double),
) -> DOMMatrix {
  dom_matrix_read_only_rotate_from_vector_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
  )
}

///|
extern "js" fn dom_matrix_read_only_rotate_axis_angle_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  z : JsValue,
  angle : JsValue,
) -> DOMMatrix = "(obj, x, y, z, angle) => obj.rotateAxisAngle(x, y, z, angle)"

///|
/// [DOMMatrixReadOnly.rotateAxisAngle](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/rotateAxisAngle)
impl TDOMMatrixReadOnly with rotate_axis_angle(
  self : Self,
  x? : Double = (0 : Double),
  y? : Double = (0 : Double),
  z? : Double = (0 : Double),
  angle? : Double = (0 : Double),
) -> DOMMatrix {
  dom_matrix_read_only_rotate_axis_angle_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(x),
    TJsValue::to_js(y),
    TJsValue::to_js(z),
    TJsValue::to_js(angle),
  )
}

///|
extern "js" fn dom_matrix_read_only_skew_x_ffi(
  obj : JsValue,
  sx : JsValue,
) -> DOMMatrix = "(obj, sx) => obj.skewX(sx)"

///|
/// [DOMMatrixReadOnly.skewX](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/skewX)
impl TDOMMatrixReadOnly with skew_x(self : Self, sx? : Double = (0 : Double)) -> DOMMatrix {
  dom_matrix_read_only_skew_x_ffi(TJsValue::to_js(self), TJsValue::to_js(sx))
}

///|
extern "js" fn dom_matrix_read_only_skew_y_ffi(
  obj : JsValue,
  sy : JsValue,
) -> DOMMatrix = "(obj, sy) => obj.skewY(sy)"

///|
/// [DOMMatrixReadOnly.skewY](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/skewY)
impl TDOMMatrixReadOnly with skew_y(self : Self, sy? : Double = (0 : Double)) -> DOMMatrix {
  dom_matrix_read_only_skew_y_ffi(TJsValue::to_js(self), TJsValue::to_js(sy))
}

///|
extern "js" fn dom_matrix_read_only_multiply_ffi(
  obj : JsValue,
  other : JsValue,
) -> DOMMatrix = "(obj, other) => obj.multiply(other)"

///|
/// [DOMMatrixReadOnly.multiply](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/multiply)
impl TDOMMatrixReadOnly with multiply(
  self : Self,
  other? : DOMMatrixInit = DOMMatrixInit::empty(),
) -> DOMMatrix {
  dom_matrix_read_only_multiply_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(other),
  )
}

///|
extern "js" fn dom_matrix_read_only_flip_x_ffi(obj : JsValue) -> DOMMatrix = "(obj) => obj.flipX()"

///|
/// [DOMMatrixReadOnly.flipX](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/flipX)
impl TDOMMatrixReadOnly with flip_x(self : Self) -> DOMMatrix {
  dom_matrix_read_only_flip_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_flip_y_ffi(obj : JsValue) -> DOMMatrix = "(obj) => obj.flipY()"

///|
/// [DOMMatrixReadOnly.flipY](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/flipY)
impl TDOMMatrixReadOnly with flip_y(self : Self) -> DOMMatrix {
  dom_matrix_read_only_flip_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_inverse_ffi(obj : JsValue) -> DOMMatrix = "(obj) => obj.inverse()"

///|
/// [DOMMatrixReadOnly.inverse](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/inverse)
impl TDOMMatrixReadOnly with inverse(self : Self) -> DOMMatrix {
  dom_matrix_read_only_inverse_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_transform_point_ffi(
  obj : JsValue,
  point : JsValue,
) -> DOMPoint = "(obj, point) => obj.transformPoint(point)"

///|
/// [DOMMatrixReadOnly.transformPoint](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/transformPoint)
impl TDOMMatrixReadOnly with transform_point(
  self : Self,
  point? : DOMPointInit = DOMPointInit::empty(),
) -> DOMPoint {
  dom_matrix_read_only_transform_point_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
  )
}

///|
extern "js" fn dom_matrix_read_only_to_float32array_ffi(
  obj : JsValue,
) -> Float32Array = "(obj) => obj.toFloat32Array()"

///|
/// [DOMMatrixReadOnly.toFloat32Array](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/toFloat32Array)
impl TDOMMatrixReadOnly with to_float32array(self : Self) -> Float32Array {
  dom_matrix_read_only_to_float32array_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_to_float64array_ffi(
  obj : JsValue,
) -> Float64Array = "(obj) => obj.toFloat64Array()"

///|
/// [DOMMatrixReadOnly.toFloat64Array](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/toFloat64Array)
impl TDOMMatrixReadOnly with to_float64array(self : Self) -> Float64Array {
  dom_matrix_read_only_to_float64array_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
/// [DOMMatrixReadOnly.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/toJSON)
impl TDOMMatrixReadOnly with to_json(self : Self) -> JsValue {
  dom_matrix_read_only_to_json_ffi(TJsValue::to_js(self))
}
