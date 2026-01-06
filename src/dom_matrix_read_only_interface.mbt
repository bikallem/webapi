// Do not edit. This file is generated.
// MoonBit type: DOMMatrixReadOnly
// Specifications: geometry.idl

///|
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
pub fn DOMMatrixReadOnly::from_float64array(
  array64 : Float64Array,
) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_float64array_ffi(TJsValue::to_js(array64))
}

///|
extern "js" fn dom_matrix_read_only_a_ffi(obj : JsValue) -> Double = "(obj) => obj.a"

///|
impl TDOMMatrixReadOnly with a(self : Self) -> Double {
  dom_matrix_read_only_a_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_b_ffi(obj : JsValue) -> Double = "(obj) => obj.b"

///|
impl TDOMMatrixReadOnly with b(self : Self) -> Double {
  dom_matrix_read_only_b_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_c_ffi(obj : JsValue) -> Double = "(obj) => obj.c"

///|
impl TDOMMatrixReadOnly with c(self : Self) -> Double {
  dom_matrix_read_only_c_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_d_ffi(obj : JsValue) -> Double = "(obj) => obj.d"

///|
impl TDOMMatrixReadOnly with d(self : Self) -> Double {
  dom_matrix_read_only_d_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_e_ffi(obj : JsValue) -> Double = "(obj) => obj.e"

///|
impl TDOMMatrixReadOnly with e(self : Self) -> Double {
  dom_matrix_read_only_e_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_f_ffi(obj : JsValue) -> Double = "(obj) => obj.f"

///|
impl TDOMMatrixReadOnly with f(self : Self) -> Double {
  dom_matrix_read_only_f_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m11_ffi(obj : JsValue) -> Double = "(obj) => obj.m11"

///|
impl TDOMMatrixReadOnly with m11(self : Self) -> Double {
  dom_matrix_read_only_m11_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m12_ffi(obj : JsValue) -> Double = "(obj) => obj.m12"

///|
impl TDOMMatrixReadOnly with m12(self : Self) -> Double {
  dom_matrix_read_only_m12_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m13_ffi(obj : JsValue) -> Double = "(obj) => obj.m13"

///|
impl TDOMMatrixReadOnly with m13(self : Self) -> Double {
  dom_matrix_read_only_m13_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m14_ffi(obj : JsValue) -> Double = "(obj) => obj.m14"

///|
impl TDOMMatrixReadOnly with m14(self : Self) -> Double {
  dom_matrix_read_only_m14_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m21_ffi(obj : JsValue) -> Double = "(obj) => obj.m21"

///|
impl TDOMMatrixReadOnly with m21(self : Self) -> Double {
  dom_matrix_read_only_m21_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m22_ffi(obj : JsValue) -> Double = "(obj) => obj.m22"

///|
impl TDOMMatrixReadOnly with m22(self : Self) -> Double {
  dom_matrix_read_only_m22_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m23_ffi(obj : JsValue) -> Double = "(obj) => obj.m23"

///|
impl TDOMMatrixReadOnly with m23(self : Self) -> Double {
  dom_matrix_read_only_m23_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m24_ffi(obj : JsValue) -> Double = "(obj) => obj.m24"

///|
impl TDOMMatrixReadOnly with m24(self : Self) -> Double {
  dom_matrix_read_only_m24_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m31_ffi(obj : JsValue) -> Double = "(obj) => obj.m31"

///|
impl TDOMMatrixReadOnly with m31(self : Self) -> Double {
  dom_matrix_read_only_m31_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m32_ffi(obj : JsValue) -> Double = "(obj) => obj.m32"

///|
impl TDOMMatrixReadOnly with m32(self : Self) -> Double {
  dom_matrix_read_only_m32_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m33_ffi(obj : JsValue) -> Double = "(obj) => obj.m33"

///|
impl TDOMMatrixReadOnly with m33(self : Self) -> Double {
  dom_matrix_read_only_m33_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m34_ffi(obj : JsValue) -> Double = "(obj) => obj.m34"

///|
impl TDOMMatrixReadOnly with m34(self : Self) -> Double {
  dom_matrix_read_only_m34_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m41_ffi(obj : JsValue) -> Double = "(obj) => obj.m41"

///|
impl TDOMMatrixReadOnly with m41(self : Self) -> Double {
  dom_matrix_read_only_m41_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m42_ffi(obj : JsValue) -> Double = "(obj) => obj.m42"

///|
impl TDOMMatrixReadOnly with m42(self : Self) -> Double {
  dom_matrix_read_only_m42_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m43_ffi(obj : JsValue) -> Double = "(obj) => obj.m43"

///|
impl TDOMMatrixReadOnly with m43(self : Self) -> Double {
  dom_matrix_read_only_m43_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_m44_ffi(obj : JsValue) -> Double = "(obj) => obj.m44"

///|
impl TDOMMatrixReadOnly with m44(self : Self) -> Double {
  dom_matrix_read_only_m44_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_is2d_ffi(obj : JsValue) -> Bool = "(obj) => obj.is2D"

///|
impl TDOMMatrixReadOnly with is2d(self : Self) -> Bool {
  dom_matrix_read_only_is2d_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_is_identity_ffi(obj : JsValue) -> Bool = "(obj) => obj.isIdentity"

///|
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
impl TDOMMatrixReadOnly with skew_x(self : Self, sx? : Double = (0 : Double)) -> DOMMatrix {
  dom_matrix_read_only_skew_x_ffi(TJsValue::to_js(self), TJsValue::to_js(sx))
}

///|
extern "js" fn dom_matrix_read_only_skew_y_ffi(
  obj : JsValue,
  sy : JsValue,
) -> DOMMatrix = "(obj, sy) => obj.skewY(sy)"

///|
impl TDOMMatrixReadOnly with skew_y(self : Self, sy? : Double = (0 : Double)) -> DOMMatrix {
  dom_matrix_read_only_skew_y_ffi(TJsValue::to_js(self), TJsValue::to_js(sy))
}

///|
extern "js" fn dom_matrix_read_only_multiply_ffi(
  obj : JsValue,
  other : JsValue,
) -> DOMMatrix = "(obj, other) => obj.multiply(other)"

///|
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
impl TDOMMatrixReadOnly with flip_x(self : Self) -> DOMMatrix {
  dom_matrix_read_only_flip_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_flip_y_ffi(obj : JsValue) -> DOMMatrix = "(obj) => obj.flipY()"

///|
impl TDOMMatrixReadOnly with flip_y(self : Self) -> DOMMatrix {
  dom_matrix_read_only_flip_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_inverse_ffi(obj : JsValue) -> DOMMatrix = "(obj) => obj.inverse()"

///|
impl TDOMMatrixReadOnly with inverse(self : Self) -> DOMMatrix {
  dom_matrix_read_only_inverse_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_transform_point_ffi(
  obj : JsValue,
  point : JsValue,
) -> DOMPoint = "(obj, point) => obj.transformPoint(point)"

///|
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
impl TDOMMatrixReadOnly with to_float32array(self : Self) -> Float32Array {
  dom_matrix_read_only_to_float32array_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_to_float64array_ffi(
  obj : JsValue,
) -> Float64Array = "(obj) => obj.toFloat64Array()"

///|
impl TDOMMatrixReadOnly with to_float64array(self : Self) -> Float64Array {
  dom_matrix_read_only_to_float64array_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dom_matrix_read_only_to_json_ffi(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
impl TDOMMatrixReadOnly with to_json(self : Self) -> JsValue {
  dom_matrix_read_only_to_json_ffi(TJsValue::to_js(self))
}
