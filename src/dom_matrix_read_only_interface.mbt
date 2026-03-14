// Do not edit. This file is generated.
// MoonBit type: DOMMatrixReadOnly
// Specifications: geometry.idl

/// [DOMMatrixReadOnly](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly)
#external
pub type DOMMatrixReadOnly

pub impl TJsValue for DOMMatrixReadOnly with to_js(self: DOMMatrixReadOnly) -> JsValue = "%identity"

pub impl FromJsAny for DOMMatrixReadOnly with from_js_any(value : JsAny) -> DOMMatrixReadOnly = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TDOMMatrixReadOnly] DOMMatrixReadOnly::into(self : DOMMatrixReadOnly) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TDOMMatrixReadOnly] DOMMatrixReadOnly::unsafe_into(self : DOMMatrixReadOnly) -> T = "%identity"

pub impl HasConstructor for DOMMatrixReadOnly with constructor_name() { "DOMMatrixReadOnly" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDOMMatrixReadOnly + HasConstructor] DOMMatrixReadOnly::try_into(self : DOMMatrixReadOnly) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TDOMMatrixReadOnly for DOMMatrixReadOnly

pub(open) trait TDOMMatrixReadOnlyNewInit : TJsValue {}

pub impl TDOMMatrixReadOnlyNewInit for String

pub impl TDOMMatrixReadOnlyNewInit for Array[Double]

pub fn DOMMatrixReadOnly::new(init? : &TDOMMatrixReadOnlyNewInit) -> DOMMatrixReadOnly {
  dom_matrix_read_only_new_ffi(match init {
Some(v) => v.to_js()
None => JsValue::undefined()
})
}

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
  scale(self : Self, scale_x? : Double, scale_y? : Double, scale_z? : Double, origin_x? : Double, origin_y? : Double, origin_z? : Double) -> DOMMatrix = _
  scale_non_uniform(self : Self, scale_x? : Double, scale_y? : Double) -> DOMMatrix = _
  scale3d(self : Self, scale? : Double, origin_x? : Double, origin_y? : Double, origin_z? : Double) -> DOMMatrix = _
  rotate(self : Self, rot_x? : Double, rot_y? : Double, rot_z? : Double) -> DOMMatrix = _
  rotate_from_vector(self : Self, x? : Double, y? : Double) -> DOMMatrix = _
  rotate_axis_angle(self : Self, x? : Double, y? : Double, z? : Double, angle? : Double) -> DOMMatrix = _
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

/// [DOMMatrixReadOnly.fromMatrix](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/fromMatrix)
pub fn DOMMatrixReadOnly::from_matrix(other? : DOMMatrixInit) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_matrix_ffi(opt_to_js(other))
}

/// [DOMMatrixReadOnly.fromFloat32Array](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/fromFloat32Array)
pub fn DOMMatrixReadOnly::from_float32array(array32 : Float32Array) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_float32array_ffi(TJsValue::to_js(array32))
}

/// [DOMMatrixReadOnly.fromFloat64Array](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/fromFloat64Array)
pub fn DOMMatrixReadOnly::from_float64array(array64 : Float64Array) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_float64array_ffi(TJsValue::to_js(array64))
}

/// [DOMMatrixReadOnly.a](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/a)
impl TDOMMatrixReadOnly with a(self : Self) -> Double {
  dom_matrix_read_only_a_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.b](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/b)
impl TDOMMatrixReadOnly with b(self : Self) -> Double {
  dom_matrix_read_only_b_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.c](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/c)
impl TDOMMatrixReadOnly with c(self : Self) -> Double {
  dom_matrix_read_only_c_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.d](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/d)
impl TDOMMatrixReadOnly with d(self : Self) -> Double {
  dom_matrix_read_only_d_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.e](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/e)
impl TDOMMatrixReadOnly with e(self : Self) -> Double {
  dom_matrix_read_only_e_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.f](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/f)
impl TDOMMatrixReadOnly with f(self : Self) -> Double {
  dom_matrix_read_only_f_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m11](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m11)
impl TDOMMatrixReadOnly with m11(self : Self) -> Double {
  dom_matrix_read_only_m11_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m12](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m12)
impl TDOMMatrixReadOnly with m12(self : Self) -> Double {
  dom_matrix_read_only_m12_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m13](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m13)
impl TDOMMatrixReadOnly with m13(self : Self) -> Double {
  dom_matrix_read_only_m13_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m14](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m14)
impl TDOMMatrixReadOnly with m14(self : Self) -> Double {
  dom_matrix_read_only_m14_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m21](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m21)
impl TDOMMatrixReadOnly with m21(self : Self) -> Double {
  dom_matrix_read_only_m21_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m22](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m22)
impl TDOMMatrixReadOnly with m22(self : Self) -> Double {
  dom_matrix_read_only_m22_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m23](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m23)
impl TDOMMatrixReadOnly with m23(self : Self) -> Double {
  dom_matrix_read_only_m23_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m24](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m24)
impl TDOMMatrixReadOnly with m24(self : Self) -> Double {
  dom_matrix_read_only_m24_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m31](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m31)
impl TDOMMatrixReadOnly with m31(self : Self) -> Double {
  dom_matrix_read_only_m31_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m32](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m32)
impl TDOMMatrixReadOnly with m32(self : Self) -> Double {
  dom_matrix_read_only_m32_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m33](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m33)
impl TDOMMatrixReadOnly with m33(self : Self) -> Double {
  dom_matrix_read_only_m33_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m34](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m34)
impl TDOMMatrixReadOnly with m34(self : Self) -> Double {
  dom_matrix_read_only_m34_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m41](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m41)
impl TDOMMatrixReadOnly with m41(self : Self) -> Double {
  dom_matrix_read_only_m41_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m42](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m42)
impl TDOMMatrixReadOnly with m42(self : Self) -> Double {
  dom_matrix_read_only_m42_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m43](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m43)
impl TDOMMatrixReadOnly with m43(self : Self) -> Double {
  dom_matrix_read_only_m43_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.m44](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/m44)
impl TDOMMatrixReadOnly with m44(self : Self) -> Double {
  dom_matrix_read_only_m44_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.is2D](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/is2D)
impl TDOMMatrixReadOnly with is2d(self : Self) -> Bool {
  dom_matrix_read_only_is2d_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.isIdentity](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/isIdentity)
impl TDOMMatrixReadOnly with is_identity(self : Self) -> Bool {
  dom_matrix_read_only_is_identity_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.translate](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/translate)
impl TDOMMatrixReadOnly with translate(self : Self, 
tx? : Double, 
ty? : Double, 
tz? : Double) -> DOMMatrix {
  dom_matrix_read_only_translate_ffi(TJsValue::to_js(self), opt_to_js(tx), opt_to_js(ty), opt_to_js(tz))
}

/// [DOMMatrixReadOnly.scale](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/scale)
impl TDOMMatrixReadOnly with scale(self : Self, 
scale_x? : Double, 
scale_y? : Double, 
scale_z? : Double, 
origin_x? : Double, 
origin_y? : Double, 
origin_z? : Double) -> DOMMatrix {
  dom_matrix_read_only_scale_ffi(TJsValue::to_js(self), opt_to_js(scale_x), opt_to_js(scale_y), opt_to_js(scale_z), opt_to_js(origin_x), opt_to_js(origin_y), opt_to_js(origin_z))
}

/// [DOMMatrixReadOnly.scaleNonUniform](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/scaleNonUniform)
impl TDOMMatrixReadOnly with scale_non_uniform(self : Self, 
scale_x? : Double, 
scale_y? : Double) -> DOMMatrix {
  dom_matrix_read_only_scale_non_uniform_ffi(TJsValue::to_js(self), opt_to_js(scale_x), opt_to_js(scale_y))
}

/// [DOMMatrixReadOnly.scale3d](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/scale3d)
impl TDOMMatrixReadOnly with scale3d(self : Self, 
scale? : Double, 
origin_x? : Double, 
origin_y? : Double, 
origin_z? : Double) -> DOMMatrix {
  dom_matrix_read_only_scale3d_ffi(TJsValue::to_js(self), opt_to_js(scale), opt_to_js(origin_x), opt_to_js(origin_y), opt_to_js(origin_z))
}

/// [DOMMatrixReadOnly.rotate](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/rotate)
impl TDOMMatrixReadOnly with rotate(self : Self, 
rot_x? : Double, 
rot_y? : Double, 
rot_z? : Double) -> DOMMatrix {
  dom_matrix_read_only_rotate_ffi(TJsValue::to_js(self), opt_to_js(rot_x), opt_to_js(rot_y), opt_to_js(rot_z))
}

/// [DOMMatrixReadOnly.rotateFromVector](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/rotateFromVector)
impl TDOMMatrixReadOnly with rotate_from_vector(self : Self, 
x? : Double, 
y? : Double) -> DOMMatrix {
  dom_matrix_read_only_rotate_from_vector_ffi(TJsValue::to_js(self), opt_to_js(x), opt_to_js(y))
}

/// [DOMMatrixReadOnly.rotateAxisAngle](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/rotateAxisAngle)
impl TDOMMatrixReadOnly with rotate_axis_angle(self : Self, 
x? : Double, 
y? : Double, 
z? : Double, 
angle? : Double) -> DOMMatrix {
  dom_matrix_read_only_rotate_axis_angle_ffi(TJsValue::to_js(self), opt_to_js(x), opt_to_js(y), opt_to_js(z), opt_to_js(angle))
}

/// [DOMMatrixReadOnly.skewX](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/skewX)
impl TDOMMatrixReadOnly with skew_x(self : Self, 
sx? : Double) -> DOMMatrix {
  dom_matrix_read_only_skew_x_ffi(TJsValue::to_js(self), opt_to_js(sx))
}

/// [DOMMatrixReadOnly.skewY](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/skewY)
impl TDOMMatrixReadOnly with skew_y(self : Self, 
sy? : Double) -> DOMMatrix {
  dom_matrix_read_only_skew_y_ffi(TJsValue::to_js(self), opt_to_js(sy))
}

/// [DOMMatrixReadOnly.multiply](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/multiply)
impl TDOMMatrixReadOnly with multiply(self : Self, 
other? : DOMMatrixInit) -> DOMMatrix {
  dom_matrix_read_only_multiply_ffi(TJsValue::to_js(self), opt_to_js(other))
}

/// [DOMMatrixReadOnly.flipX](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/flipX)
impl TDOMMatrixReadOnly with flip_x(self : Self) -> DOMMatrix {
  dom_matrix_read_only_flip_x_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.flipY](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/flipY)
impl TDOMMatrixReadOnly with flip_y(self : Self) -> DOMMatrix {
  dom_matrix_read_only_flip_y_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.inverse](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/inverse)
impl TDOMMatrixReadOnly with inverse(self : Self) -> DOMMatrix {
  dom_matrix_read_only_inverse_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.transformPoint](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/transformPoint)
impl TDOMMatrixReadOnly with transform_point(self : Self, 
point? : DOMPointInit) -> DOMPoint {
  dom_matrix_read_only_transform_point_ffi(TJsValue::to_js(self), opt_to_js(point))
}

/// [DOMMatrixReadOnly.toFloat32Array](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/toFloat32Array)
impl TDOMMatrixReadOnly with to_float32array(self : Self) -> Float32Array {
  dom_matrix_read_only_to_float32array_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.toFloat64Array](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/toFloat64Array)
impl TDOMMatrixReadOnly with to_float64array(self : Self) -> Float64Array {
  dom_matrix_read_only_to_float64array_ffi(TJsValue::to_js(self))
}

/// [DOMMatrixReadOnly.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixReadOnly/toJSON)
impl TDOMMatrixReadOnly with to_json(self : Self) -> JsValue {
  dom_matrix_read_only_to_json_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_new_ffi(init: JsValue) -> DOMMatrixReadOnly = "(init) => new DOMMatrixReadOnly(init)"

#cfg(target="js")
extern "js" fn dom_matrix_read_only_from_matrix_ffi_js(other: JsValue) -> JsValue = "(other) => DOMMatrixReadOnly.fromMatrix(other)"

///|
#cfg(target="js")
fn dom_matrix_read_only_from_matrix_ffi(other: JsValue) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_matrix_ffi_js(other).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_from_float32array_ffi_js(array32: JsValue) -> JsValue = "(array32) => DOMMatrixReadOnly.fromFloat32Array(array32)"

///|
#cfg(target="js")
fn dom_matrix_read_only_from_float32array_ffi(array32: JsValue) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_float32array_ffi_js(array32).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_from_float64array_ffi_js(array64: JsValue) -> JsValue = "(array64) => DOMMatrixReadOnly.fromFloat64Array(array64)"

///|
#cfg(target="js")
fn dom_matrix_read_only_from_float64array_ffi(array64: JsValue) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_float64array_ffi_js(array64).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_a_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.a"

///|
#cfg(target="js")
fn dom_matrix_read_only_a_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_a_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_b_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.b"

///|
#cfg(target="js")
fn dom_matrix_read_only_b_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_b_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_c_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.c"

///|
#cfg(target="js")
fn dom_matrix_read_only_c_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_c_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_d_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.d"

///|
#cfg(target="js")
fn dom_matrix_read_only_d_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_d_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_e_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.e"

///|
#cfg(target="js")
fn dom_matrix_read_only_e_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_e_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_f_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.f"

///|
#cfg(target="js")
fn dom_matrix_read_only_f_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_f_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m11_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m11"

///|
#cfg(target="js")
fn dom_matrix_read_only_m11_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m11_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m12_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m12"

///|
#cfg(target="js")
fn dom_matrix_read_only_m12_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m12_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m13_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m13"

///|
#cfg(target="js")
fn dom_matrix_read_only_m13_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m13_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m14_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m14"

///|
#cfg(target="js")
fn dom_matrix_read_only_m14_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m14_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m21_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m21"

///|
#cfg(target="js")
fn dom_matrix_read_only_m21_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m21_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m22_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m22"

///|
#cfg(target="js")
fn dom_matrix_read_only_m22_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m22_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m23_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m23"

///|
#cfg(target="js")
fn dom_matrix_read_only_m23_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m23_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m24_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m24"

///|
#cfg(target="js")
fn dom_matrix_read_only_m24_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m24_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m31_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m31"

///|
#cfg(target="js")
fn dom_matrix_read_only_m31_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m31_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m32_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m32"

///|
#cfg(target="js")
fn dom_matrix_read_only_m32_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m32_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m33_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m33"

///|
#cfg(target="js")
fn dom_matrix_read_only_m33_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m33_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m34_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m34"

///|
#cfg(target="js")
fn dom_matrix_read_only_m34_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m34_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m41_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m41"

///|
#cfg(target="js")
fn dom_matrix_read_only_m41_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m41_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m42_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m42"

///|
#cfg(target="js")
fn dom_matrix_read_only_m42_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m42_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m43_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m43"

///|
#cfg(target="js")
fn dom_matrix_read_only_m43_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m43_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_m44_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.m44"

///|
#cfg(target="js")
fn dom_matrix_read_only_m44_ffi(obj: JsValue) -> Double {
  dom_matrix_read_only_m44_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_is2d_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.is2D"

///|
#cfg(target="js")
fn dom_matrix_read_only_is2d_ffi(obj: JsValue) -> Bool {
  dom_matrix_read_only_is2d_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_is_identity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.isIdentity"

///|
#cfg(target="js")
fn dom_matrix_read_only_is_identity_ffi(obj: JsValue) -> Bool {
  dom_matrix_read_only_is_identity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_translate_ffi_js(obj: JsValue, tx: JsValue, ty: JsValue, tz: JsValue) -> JsValue = "(obj, tx, ty, tz) => obj.translate(tx, ty, tz)"

///|
#cfg(target="js")
fn dom_matrix_read_only_translate_ffi(obj: JsValue, tx: JsValue, ty: JsValue, tz: JsValue) -> DOMMatrix {
  dom_matrix_read_only_translate_ffi_js(obj, tx, ty, tz).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_scale_ffi_js(obj: JsValue, scale_x: JsValue, scale_y: JsValue, scale_z: JsValue, origin_x: JsValue, origin_y: JsValue, origin_z: JsValue) -> JsValue = "(obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => obj.scale(scale_x, scale_y, scale_z, origin_x, origin_y, origin_z)"

///|
#cfg(target="js")
fn dom_matrix_read_only_scale_ffi(obj: JsValue, scale_x: JsValue, scale_y: JsValue, scale_z: JsValue, origin_x: JsValue, origin_y: JsValue, origin_z: JsValue) -> DOMMatrix {
  dom_matrix_read_only_scale_ffi_js(obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_scale_non_uniform_ffi_js(obj: JsValue, scale_x: JsValue, scale_y: JsValue) -> JsValue = "(obj, scale_x, scale_y) => obj.scaleNonUniform(scale_x, scale_y)"

///|
#cfg(target="js")
fn dom_matrix_read_only_scale_non_uniform_ffi(obj: JsValue, scale_x: JsValue, scale_y: JsValue) -> DOMMatrix {
  dom_matrix_read_only_scale_non_uniform_ffi_js(obj, scale_x, scale_y).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_scale3d_ffi_js(obj: JsValue, scale: JsValue, origin_x: JsValue, origin_y: JsValue, origin_z: JsValue) -> JsValue = "(obj, scale, origin_x, origin_y, origin_z) => obj.scale3d(scale, origin_x, origin_y, origin_z)"

///|
#cfg(target="js")
fn dom_matrix_read_only_scale3d_ffi(obj: JsValue, scale: JsValue, origin_x: JsValue, origin_y: JsValue, origin_z: JsValue) -> DOMMatrix {
  dom_matrix_read_only_scale3d_ffi_js(obj, scale, origin_x, origin_y, origin_z).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_rotate_ffi_js(obj: JsValue, rot_x: JsValue, rot_y: JsValue, rot_z: JsValue) -> JsValue = "(obj, rot_x, rot_y, rot_z) => obj.rotate(rot_x, rot_y, rot_z)"

///|
#cfg(target="js")
fn dom_matrix_read_only_rotate_ffi(obj: JsValue, rot_x: JsValue, rot_y: JsValue, rot_z: JsValue) -> DOMMatrix {
  dom_matrix_read_only_rotate_ffi_js(obj, rot_x, rot_y, rot_z).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_rotate_from_vector_ffi_js(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, x, y) => obj.rotateFromVector(x, y)"

///|
#cfg(target="js")
fn dom_matrix_read_only_rotate_from_vector_ffi(obj: JsValue, x: JsValue, y: JsValue) -> DOMMatrix {
  dom_matrix_read_only_rotate_from_vector_ffi_js(obj, x, y).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_rotate_axis_angle_ffi_js(obj: JsValue, x: JsValue, y: JsValue, z: JsValue, angle: JsValue) -> JsValue = "(obj, x, y, z, angle) => obj.rotateAxisAngle(x, y, z, angle)"

///|
#cfg(target="js")
fn dom_matrix_read_only_rotate_axis_angle_ffi(obj: JsValue, x: JsValue, y: JsValue, z: JsValue, angle: JsValue) -> DOMMatrix {
  dom_matrix_read_only_rotate_axis_angle_ffi_js(obj, x, y, z, angle).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_skew_x_ffi_js(obj: JsValue, sx: JsValue) -> JsValue = "(obj, sx) => obj.skewX(sx)"

///|
#cfg(target="js")
fn dom_matrix_read_only_skew_x_ffi(obj: JsValue, sx: JsValue) -> DOMMatrix {
  dom_matrix_read_only_skew_x_ffi_js(obj, sx).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_skew_y_ffi_js(obj: JsValue, sy: JsValue) -> JsValue = "(obj, sy) => obj.skewY(sy)"

///|
#cfg(target="js")
fn dom_matrix_read_only_skew_y_ffi(obj: JsValue, sy: JsValue) -> DOMMatrix {
  dom_matrix_read_only_skew_y_ffi_js(obj, sy).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_multiply_ffi_js(obj: JsValue, other: JsValue) -> JsValue = "(obj, other) => obj.multiply(other)"

///|
#cfg(target="js")
fn dom_matrix_read_only_multiply_ffi(obj: JsValue, other: JsValue) -> DOMMatrix {
  dom_matrix_read_only_multiply_ffi_js(obj, other).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_flip_x_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.flipX()"

///|
#cfg(target="js")
fn dom_matrix_read_only_flip_x_ffi(obj: JsValue) -> DOMMatrix {
  dom_matrix_read_only_flip_x_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_flip_y_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.flipY()"

///|
#cfg(target="js")
fn dom_matrix_read_only_flip_y_ffi(obj: JsValue) -> DOMMatrix {
  dom_matrix_read_only_flip_y_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_inverse_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.inverse()"

///|
#cfg(target="js")
fn dom_matrix_read_only_inverse_ffi(obj: JsValue) -> DOMMatrix {
  dom_matrix_read_only_inverse_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_transform_point_ffi_js(obj: JsValue, point: JsValue) -> JsValue = "(obj, point) => obj.transformPoint(point)"

///|
#cfg(target="js")
fn dom_matrix_read_only_transform_point_ffi(obj: JsValue, point: JsValue) -> DOMPoint {
  dom_matrix_read_only_transform_point_ffi_js(obj, point).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_to_float32array_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.toFloat32Array()"

///|
#cfg(target="js")
fn dom_matrix_read_only_to_float32array_ffi(obj: JsValue) -> Float32Array {
  dom_matrix_read_only_to_float32array_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_to_float64array_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.toFloat64Array()"

///|
#cfg(target="js")
fn dom_matrix_read_only_to_float64array_ffi(obj: JsValue) -> Float64Array {
  dom_matrix_read_only_to_float64array_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_matrix_read_only_to_json_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
#cfg(target="js")
fn dom_matrix_read_only_to_json_ffi(obj: JsValue) -> JsValue {
  dom_matrix_read_only_to_json_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn dom_matrix_read_only_new_ffi(init: JsValue) -> DOMMatrixReadOnly = "webapi_DOMMatrixReadOnly" "new"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_from_matrix_ffi(other: JsValue) -> DOMMatrixReadOnly = "webapi_DOMMatrixReadOnly" "fromMatrix"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_from_float32array_ffi(array32: JsValue) -> DOMMatrixReadOnly = "webapi_DOMMatrixReadOnly" "fromFloat32Array"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_from_float64array_ffi(array64: JsValue) -> DOMMatrixReadOnly = "webapi_DOMMatrixReadOnly" "fromFloat64Array"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_a_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_a"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_b_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_b"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_c_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_c"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_d_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_d"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_e_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_e"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_f_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_f"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m11_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m11"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m12_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m12"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m13_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m13"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m14_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m14"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m21_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m21"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m22_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m22"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m23_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m23"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m24_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m24"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m31_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m31"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m32_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m32"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m33_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m33"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m34_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m34"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m41_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m41"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m42_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m42"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m43_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m43"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_m44_ffi(obj: JsValue) -> Double = "webapi_DOMMatrixReadOnly" "get_m44"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_is2d_ffi(obj: JsValue) -> Bool = "webapi_DOMMatrixReadOnly" "get_is2D"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_is_identity_ffi(obj: JsValue) -> Bool = "webapi_DOMMatrixReadOnly" "get_isIdentity"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_translate_ffi(obj: JsValue, tx: JsValue, ty: JsValue, tz: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "translate"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_scale_ffi(obj: JsValue, scale_x: JsValue, scale_y: JsValue, scale_z: JsValue, origin_x: JsValue, origin_y: JsValue, origin_z: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "scale"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_scale_non_uniform_ffi(obj: JsValue, scale_x: JsValue, scale_y: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "scaleNonUniform"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_scale3d_ffi(obj: JsValue, scale: JsValue, origin_x: JsValue, origin_y: JsValue, origin_z: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "scale3d"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_rotate_ffi(obj: JsValue, rot_x: JsValue, rot_y: JsValue, rot_z: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "rotate"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_rotate_from_vector_ffi(obj: JsValue, x: JsValue, y: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "rotateFromVector"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_rotate_axis_angle_ffi(obj: JsValue, x: JsValue, y: JsValue, z: JsValue, angle: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "rotateAxisAngle"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_skew_x_ffi(obj: JsValue, sx: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "skewX"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_skew_y_ffi(obj: JsValue, sy: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "skewY"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_multiply_ffi(obj: JsValue, other: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "multiply"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_flip_x_ffi(obj: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "flipX"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_flip_y_ffi(obj: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "flipY"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_inverse_ffi(obj: JsValue) -> DOMMatrix = "webapi_DOMMatrixReadOnly" "inverse"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_transform_point_ffi(obj: JsValue, point: JsValue) -> DOMPoint = "webapi_DOMMatrixReadOnly" "transformPoint"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_to_float32array_ffi(obj: JsValue) -> Float32Array = "webapi_DOMMatrixReadOnly" "toFloat32Array"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_to_float64array_ffi(obj: JsValue) -> Float64Array = "webapi_DOMMatrixReadOnly" "toFloat64Array"

#cfg(target="wasm-gc")
fn dom_matrix_read_only_to_json_ffi(obj: JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "toJSON"