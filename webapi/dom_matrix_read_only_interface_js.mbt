///|
extern "js" fn dom_matrix_read_only_new_ffi(
  init : JsValue,
) -> DOMMatrixReadOnly = "(init) => new DOMMatrixReadOnly(init)"

///|
extern "js" fn dom_matrix_read_only_from_matrix_ffi_js(
  other : JsValue,
) -> JsValue = "(other) => DOMMatrixReadOnly.fromMatrix(other)"

///|
fn dom_matrix_read_only_from_matrix_ffi(other : JsValue) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_matrix_ffi_js(other).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_from_float32array_ffi_js(
  array32 : JsValue,
) -> JsValue = "(array32) => DOMMatrixReadOnly.fromFloat32Array(array32)"

///|
fn dom_matrix_read_only_from_float32array_ffi(
  array32 : JsValue,
) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_float32array_ffi_js(array32).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_from_float64array_ffi_js(
  array64 : JsValue,
) -> JsValue = "(array64) => DOMMatrixReadOnly.fromFloat64Array(array64)"

///|
fn dom_matrix_read_only_from_float64array_ffi(
  array64 : JsValue,
) -> DOMMatrixReadOnly {
  dom_matrix_read_only_from_float64array_ffi_js(array64).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_a_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.a"

///|
fn dom_matrix_read_only_a_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_a_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_b_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.b"

///|
fn dom_matrix_read_only_b_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_b_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_c_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.c"

///|
fn dom_matrix_read_only_c_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_c_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_d_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.d"

///|
fn dom_matrix_read_only_d_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_d_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_e_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.e"

///|
fn dom_matrix_read_only_e_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_e_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_f_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.f"

///|
fn dom_matrix_read_only_f_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_f_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m11_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m11"

///|
fn dom_matrix_read_only_m11_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m11_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m12_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m12"

///|
fn dom_matrix_read_only_m12_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m12_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m13_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m13"

///|
fn dom_matrix_read_only_m13_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m13_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m14_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m14"

///|
fn dom_matrix_read_only_m14_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m14_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m21_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m21"

///|
fn dom_matrix_read_only_m21_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m21_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m22_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m22"

///|
fn dom_matrix_read_only_m22_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m22_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m23_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m23"

///|
fn dom_matrix_read_only_m23_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m23_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m24_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m24"

///|
fn dom_matrix_read_only_m24_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m24_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m31_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m31"

///|
fn dom_matrix_read_only_m31_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m31_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m32_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m32"

///|
fn dom_matrix_read_only_m32_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m32_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m33_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m33"

///|
fn dom_matrix_read_only_m33_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m33_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m34_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m34"

///|
fn dom_matrix_read_only_m34_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m34_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m41_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m41"

///|
fn dom_matrix_read_only_m41_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m41_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m42_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m42"

///|
fn dom_matrix_read_only_m42_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m42_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m43_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m43"

///|
fn dom_matrix_read_only_m43_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m43_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_m44_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.m44"

///|
fn dom_matrix_read_only_m44_ffi(obj : JsValue) -> Double {
  dom_matrix_read_only_m44_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_is2d_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.is2D"

///|
fn dom_matrix_read_only_is2d_ffi(obj : JsValue) -> Bool {
  dom_matrix_read_only_is2d_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_is_identity_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.isIdentity"

///|
fn dom_matrix_read_only_is_identity_ffi(obj : JsValue) -> Bool {
  dom_matrix_read_only_is_identity_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_translate_ffi_js(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
  tz : JsValue,
) -> JsValue = "(obj, tx, ty, tz) => obj.translate(tx, ty, tz)"

///|
fn dom_matrix_read_only_translate_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
  tz : JsValue,
) -> DOMMatrix {
  dom_matrix_read_only_translate_ffi_js(obj, tx, ty, tz).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_scale_ffi_js(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
  scale_z : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> JsValue = "(obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => obj.scale(scale_x, scale_y, scale_z, origin_x, origin_y, origin_z)"

///|
fn dom_matrix_read_only_scale_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
  scale_z : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> DOMMatrix {
  dom_matrix_read_only_scale_ffi_js(
    obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z,
  ).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_scale_non_uniform_ffi_js(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
) -> JsValue = "(obj, scale_x, scale_y) => obj.scaleNonUniform(scale_x, scale_y)"

///|
fn dom_matrix_read_only_scale_non_uniform_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
) -> DOMMatrix {
  dom_matrix_read_only_scale_non_uniform_ffi_js(obj, scale_x, scale_y).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_scale3d_ffi_js(
  obj : JsValue,
  scale : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> JsValue = "(obj, scale, origin_x, origin_y, origin_z) => obj.scale3d(scale, origin_x, origin_y, origin_z)"

///|
fn dom_matrix_read_only_scale3d_ffi(
  obj : JsValue,
  scale : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> DOMMatrix {
  dom_matrix_read_only_scale3d_ffi_js(obj, scale, origin_x, origin_y, origin_z).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_rotate_ffi_js(
  obj : JsValue,
  rot_x : JsValue,
  rot_y : JsValue,
  rot_z : JsValue,
) -> JsValue = "(obj, rot_x, rot_y, rot_z) => obj.rotate(rot_x, rot_y, rot_z)"

///|
fn dom_matrix_read_only_rotate_ffi(
  obj : JsValue,
  rot_x : JsValue,
  rot_y : JsValue,
  rot_z : JsValue,
) -> DOMMatrix {
  dom_matrix_read_only_rotate_ffi_js(obj, rot_x, rot_y, rot_z).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_rotate_from_vector_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.rotateFromVector(x, y)"

///|
fn dom_matrix_read_only_rotate_from_vector_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> DOMMatrix {
  dom_matrix_read_only_rotate_from_vector_ffi_js(obj, x, y).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_rotate_axis_angle_ffi_js(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  z : JsValue,
  angle : JsValue,
) -> JsValue = "(obj, x, y, z, angle) => obj.rotateAxisAngle(x, y, z, angle)"

///|
fn dom_matrix_read_only_rotate_axis_angle_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  z : JsValue,
  angle : JsValue,
) -> DOMMatrix {
  dom_matrix_read_only_rotate_axis_angle_ffi_js(obj, x, y, z, angle).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_skew_x_ffi_js(
  obj : JsValue,
  sx : JsValue,
) -> JsValue = "(obj, sx) => obj.skewX(sx)"

///|
fn dom_matrix_read_only_skew_x_ffi(obj : JsValue, sx : JsValue) -> DOMMatrix {
  dom_matrix_read_only_skew_x_ffi_js(obj, sx).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_skew_y_ffi_js(
  obj : JsValue,
  sy : JsValue,
) -> JsValue = "(obj, sy) => obj.skewY(sy)"

///|
fn dom_matrix_read_only_skew_y_ffi(obj : JsValue, sy : JsValue) -> DOMMatrix {
  dom_matrix_read_only_skew_y_ffi_js(obj, sy).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_multiply_ffi_js(
  obj : JsValue,
  other : JsValue,
) -> JsValue = "(obj, other) => obj.multiply(other)"

///|
fn dom_matrix_read_only_multiply_ffi(
  obj : JsValue,
  other : JsValue,
) -> DOMMatrix {
  dom_matrix_read_only_multiply_ffi_js(obj, other).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_flip_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.flipX()"

///|
fn dom_matrix_read_only_flip_x_ffi(obj : JsValue) -> DOMMatrix {
  dom_matrix_read_only_flip_x_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_flip_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.flipY()"

///|
fn dom_matrix_read_only_flip_y_ffi(obj : JsValue) -> DOMMatrix {
  dom_matrix_read_only_flip_y_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_inverse_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.inverse()"

///|
fn dom_matrix_read_only_inverse_ffi(obj : JsValue) -> DOMMatrix {
  dom_matrix_read_only_inverse_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_transform_point_ffi_js(
  obj : JsValue,
  point : JsValue,
) -> JsValue = "(obj, point) => obj.transformPoint(point)"

///|
fn dom_matrix_read_only_transform_point_ffi(
  obj : JsValue,
  point : JsValue,
) -> DOMPoint {
  dom_matrix_read_only_transform_point_ffi_js(obj, point).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_to_float32array_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.toFloat32Array()"

///|
fn dom_matrix_read_only_to_float32array_ffi(obj : JsValue) -> Float32Array {
  dom_matrix_read_only_to_float32array_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_to_float64array_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.toFloat64Array()"

///|
fn dom_matrix_read_only_to_float64array_ffi(obj : JsValue) -> Float64Array {
  dom_matrix_read_only_to_float64array_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_matrix_read_only_to_json_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
fn dom_matrix_read_only_to_json_ffi(obj : JsValue) -> JsValue {
  dom_matrix_read_only_to_json_ffi_js(obj).unsafe_cast()
}
