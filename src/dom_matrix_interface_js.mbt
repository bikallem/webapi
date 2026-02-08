///|
extern "js" fn dom_matrix_new_ffi(init : JsValue) -> DOMMatrix = "(init) => new DOMMatrix(init)"

///|
extern "js" fn dom_matrix_from_matrix_ffi(other : JsValue) -> JsValue = "(other) => DOMMatrix.fromMatrix(other)"

///|
extern "js" fn dom_matrix_from_float32array_ffi(array32 : JsValue) -> JsValue = "(array32) => DOMMatrix.fromFloat32Array(array32)"

///|
extern "js" fn dom_matrix_from_float64array_ffi(array64 : JsValue) -> JsValue = "(array64) => DOMMatrix.fromFloat64Array(array64)"

///|
extern "js" fn dom_matrix_a_ffi(obj : JsValue) -> JsValue = "(obj) => obj.a"

///|
extern "js" fn dom_matrix_set_a_ffi(obj : JsValue, a : JsValue) -> Unit = "(obj, a) => { obj.a = a; }"

///|
extern "js" fn dom_matrix_b_ffi(obj : JsValue) -> JsValue = "(obj) => obj.b"

///|
extern "js" fn dom_matrix_set_b_ffi(obj : JsValue, b : JsValue) -> Unit = "(obj, b) => { obj.b = b; }"

///|
extern "js" fn dom_matrix_c_ffi(obj : JsValue) -> JsValue = "(obj) => obj.c"

///|
extern "js" fn dom_matrix_set_c_ffi(obj : JsValue, c : JsValue) -> Unit = "(obj, c) => { obj.c = c; }"

///|
extern "js" fn dom_matrix_d_ffi(obj : JsValue) -> JsValue = "(obj) => obj.d"

///|
extern "js" fn dom_matrix_set_d_ffi(obj : JsValue, d : JsValue) -> Unit = "(obj, d) => { obj.d = d; }"

///|
extern "js" fn dom_matrix_e_ffi(obj : JsValue) -> JsValue = "(obj) => obj.e"

///|
extern "js" fn dom_matrix_set_e_ffi(obj : JsValue, e : JsValue) -> Unit = "(obj, e) => { obj.e = e; }"

///|
extern "js" fn dom_matrix_f_ffi(obj : JsValue) -> JsValue = "(obj) => obj.f"

///|
extern "js" fn dom_matrix_set_f_ffi(obj : JsValue, f : JsValue) -> Unit = "(obj, f) => { obj.f = f; }"

///|
extern "js" fn dom_matrix_m11_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m11"

///|
extern "js" fn dom_matrix_set_m11_ffi(obj : JsValue, m11 : JsValue) -> Unit = "(obj, m11) => { obj.m11 = m11; }"

///|
extern "js" fn dom_matrix_m12_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m12"

///|
extern "js" fn dom_matrix_set_m12_ffi(obj : JsValue, m12 : JsValue) -> Unit = "(obj, m12) => { obj.m12 = m12; }"

///|
extern "js" fn dom_matrix_m13_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m13"

///|
extern "js" fn dom_matrix_set_m13_ffi(obj : JsValue, m13 : JsValue) -> Unit = "(obj, m13) => { obj.m13 = m13; }"

///|
extern "js" fn dom_matrix_m14_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m14"

///|
extern "js" fn dom_matrix_set_m14_ffi(obj : JsValue, m14 : JsValue) -> Unit = "(obj, m14) => { obj.m14 = m14; }"

///|
extern "js" fn dom_matrix_m21_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m21"

///|
extern "js" fn dom_matrix_set_m21_ffi(obj : JsValue, m21 : JsValue) -> Unit = "(obj, m21) => { obj.m21 = m21; }"

///|
extern "js" fn dom_matrix_m22_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m22"

///|
extern "js" fn dom_matrix_set_m22_ffi(obj : JsValue, m22 : JsValue) -> Unit = "(obj, m22) => { obj.m22 = m22; }"

///|
extern "js" fn dom_matrix_m23_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m23"

///|
extern "js" fn dom_matrix_set_m23_ffi(obj : JsValue, m23 : JsValue) -> Unit = "(obj, m23) => { obj.m23 = m23; }"

///|
extern "js" fn dom_matrix_m24_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m24"

///|
extern "js" fn dom_matrix_set_m24_ffi(obj : JsValue, m24 : JsValue) -> Unit = "(obj, m24) => { obj.m24 = m24; }"

///|
extern "js" fn dom_matrix_m31_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m31"

///|
extern "js" fn dom_matrix_set_m31_ffi(obj : JsValue, m31 : JsValue) -> Unit = "(obj, m31) => { obj.m31 = m31; }"

///|
extern "js" fn dom_matrix_m32_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m32"

///|
extern "js" fn dom_matrix_set_m32_ffi(obj : JsValue, m32 : JsValue) -> Unit = "(obj, m32) => { obj.m32 = m32; }"

///|
extern "js" fn dom_matrix_m33_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m33"

///|
extern "js" fn dom_matrix_set_m33_ffi(obj : JsValue, m33 : JsValue) -> Unit = "(obj, m33) => { obj.m33 = m33; }"

///|
extern "js" fn dom_matrix_m34_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m34"

///|
extern "js" fn dom_matrix_set_m34_ffi(obj : JsValue, m34 : JsValue) -> Unit = "(obj, m34) => { obj.m34 = m34; }"

///|
extern "js" fn dom_matrix_m41_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m41"

///|
extern "js" fn dom_matrix_set_m41_ffi(obj : JsValue, m41 : JsValue) -> Unit = "(obj, m41) => { obj.m41 = m41; }"

///|
extern "js" fn dom_matrix_m42_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m42"

///|
extern "js" fn dom_matrix_set_m42_ffi(obj : JsValue, m42 : JsValue) -> Unit = "(obj, m42) => { obj.m42 = m42; }"

///|
extern "js" fn dom_matrix_m43_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m43"

///|
extern "js" fn dom_matrix_set_m43_ffi(obj : JsValue, m43 : JsValue) -> Unit = "(obj, m43) => { obj.m43 = m43; }"

///|
extern "js" fn dom_matrix_m44_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m44"

///|
extern "js" fn dom_matrix_set_m44_ffi(obj : JsValue, m44 : JsValue) -> Unit = "(obj, m44) => { obj.m44 = m44; }"

///|
extern "js" fn dom_matrix_multiply_self_ffi(
  obj : JsValue,
  other : JsValue,
) -> JsValue = "(obj, other) => obj.multiplySelf(other)"

///|
extern "js" fn dom_matrix_pre_multiply_self_ffi(
  obj : JsValue,
  other : JsValue,
) -> JsValue = "(obj, other) => obj.preMultiplySelf(other)"

///|
extern "js" fn dom_matrix_translate_self_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
  tz : JsValue,
) -> JsValue = "(obj, tx, ty, tz) => obj.translateSelf(tx, ty, tz)"

///|
extern "js" fn dom_matrix_scale_self_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
  scale_z : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> JsValue = "(obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => obj.scaleSelf(scale_x, scale_y, scale_z, origin_x, origin_y, origin_z)"

///|
extern "js" fn dom_matrix_scale3d_self_ffi(
  obj : JsValue,
  scale : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> JsValue = "(obj, scale, origin_x, origin_y, origin_z) => obj.scale3dSelf(scale, origin_x, origin_y, origin_z)"

///|
extern "js" fn dom_matrix_rotate_self_ffi(
  obj : JsValue,
  rot_x : JsValue,
  rot_y : JsValue,
  rot_z : JsValue,
) -> JsValue = "(obj, rot_x, rot_y, rot_z) => obj.rotateSelf(rot_x, rot_y, rot_z)"

///|
extern "js" fn dom_matrix_rotate_from_vector_self_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "(obj, x, y) => obj.rotateFromVectorSelf(x, y)"

///|
extern "js" fn dom_matrix_rotate_axis_angle_self_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  z : JsValue,
  angle : JsValue,
) -> JsValue = "(obj, x, y, z, angle) => obj.rotateAxisAngleSelf(x, y, z, angle)"

///|
extern "js" fn dom_matrix_skew_x_self_ffi(
  obj : JsValue,
  sx : JsValue,
) -> JsValue = "(obj, sx) => obj.skewXSelf(sx)"

///|
extern "js" fn dom_matrix_skew_y_self_ffi(
  obj : JsValue,
  sy : JsValue,
) -> JsValue = "(obj, sy) => obj.skewYSelf(sy)"

///|
extern "js" fn dom_matrix_invert_self_ffi(obj : JsValue) -> JsValue = "(obj) => obj.invertSelf()"

///|
extern "js" fn dom_matrix_set_matrix_value_ffi(
  obj : JsValue,
  transform_list : JsValue,
) -> JsValue = "(obj, transform_list) => obj.setMatrixValue(transform_list)"
