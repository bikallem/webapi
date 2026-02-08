extern "js" fn dom_matrix_read_only_new_ffi(init: JsValue) -> DOMMatrixReadOnly = "(init) => new DOMMatrixReadOnly(init)"

extern "js" fn dom_matrix_read_only_from_matrix_ffi(other: JsValue) -> JsValue = "(other) => DOMMatrixReadOnly.fromMatrix(other)"

extern "js" fn dom_matrix_read_only_from_float32array_ffi(array32: JsValue) -> JsValue = "(array32) => DOMMatrixReadOnly.fromFloat32Array(array32)"

extern "js" fn dom_matrix_read_only_from_float64array_ffi(array64: JsValue) -> JsValue = "(array64) => DOMMatrixReadOnly.fromFloat64Array(array64)"

extern "js" fn dom_matrix_read_only_a_ffi(obj: JsValue) -> JsValue = "(obj) => obj.a"

extern "js" fn dom_matrix_read_only_b_ffi(obj: JsValue) -> JsValue = "(obj) => obj.b"

extern "js" fn dom_matrix_read_only_c_ffi(obj: JsValue) -> JsValue = "(obj) => obj.c"

extern "js" fn dom_matrix_read_only_d_ffi(obj: JsValue) -> JsValue = "(obj) => obj.d"

extern "js" fn dom_matrix_read_only_e_ffi(obj: JsValue) -> JsValue = "(obj) => obj.e"

extern "js" fn dom_matrix_read_only_f_ffi(obj: JsValue) -> JsValue = "(obj) => obj.f"

extern "js" fn dom_matrix_read_only_m11_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m11"

extern "js" fn dom_matrix_read_only_m12_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m12"

extern "js" fn dom_matrix_read_only_m13_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m13"

extern "js" fn dom_matrix_read_only_m14_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m14"

extern "js" fn dom_matrix_read_only_m21_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m21"

extern "js" fn dom_matrix_read_only_m22_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m22"

extern "js" fn dom_matrix_read_only_m23_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m23"

extern "js" fn dom_matrix_read_only_m24_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m24"

extern "js" fn dom_matrix_read_only_m31_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m31"

extern "js" fn dom_matrix_read_only_m32_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m32"

extern "js" fn dom_matrix_read_only_m33_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m33"

extern "js" fn dom_matrix_read_only_m34_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m34"

extern "js" fn dom_matrix_read_only_m41_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m41"

extern "js" fn dom_matrix_read_only_m42_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m42"

extern "js" fn dom_matrix_read_only_m43_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m43"

extern "js" fn dom_matrix_read_only_m44_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m44"

extern "js" fn dom_matrix_read_only_is2d_ffi(obj: JsValue) -> JsValue = "(obj) => obj.is2D"

extern "js" fn dom_matrix_read_only_is_identity_ffi(obj: JsValue) -> JsValue = "(obj) => obj.isIdentity"

extern "js" fn dom_matrix_read_only_translate_ffi(obj: JsValue, tx: JsValue, ty: JsValue, tz: JsValue) -> JsValue = "(obj, tx, ty, tz) => obj.translate(tx, ty, tz)"

extern "js" fn dom_matrix_read_only_scale_ffi(obj: JsValue, scale_x: JsValue, scale_y: JsValue, scale_z: JsValue, origin_x: JsValue, origin_y: JsValue, origin_z: JsValue) -> JsValue = "(obj, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => obj.scale(scale_x, scale_y, scale_z, origin_x, origin_y, origin_z)"

extern "js" fn dom_matrix_read_only_scale_non_uniform_ffi(obj: JsValue, scale_x: JsValue, scale_y: JsValue) -> JsValue = "(obj, scale_x, scale_y) => obj.scaleNonUniform(scale_x, scale_y)"

extern "js" fn dom_matrix_read_only_scale3d_ffi(obj: JsValue, scale: JsValue, origin_x: JsValue, origin_y: JsValue, origin_z: JsValue) -> JsValue = "(obj, scale, origin_x, origin_y, origin_z) => obj.scale3d(scale, origin_x, origin_y, origin_z)"

extern "js" fn dom_matrix_read_only_rotate_ffi(obj: JsValue, rot_x: JsValue, rot_y: JsValue, rot_z: JsValue) -> JsValue = "(obj, rot_x, rot_y, rot_z) => obj.rotate(rot_x, rot_y, rot_z)"

extern "js" fn dom_matrix_read_only_rotate_from_vector_ffi(obj: JsValue, x: JsValue, y: JsValue) -> JsValue = "(obj, x, y) => obj.rotateFromVector(x, y)"

extern "js" fn dom_matrix_read_only_rotate_axis_angle_ffi(obj: JsValue, x: JsValue, y: JsValue, z: JsValue, angle: JsValue) -> JsValue = "(obj, x, y, z, angle) => obj.rotateAxisAngle(x, y, z, angle)"

extern "js" fn dom_matrix_read_only_skew_x_ffi(obj: JsValue, sx: JsValue) -> JsValue = "(obj, sx) => obj.skewX(sx)"

extern "js" fn dom_matrix_read_only_skew_y_ffi(obj: JsValue, sy: JsValue) -> JsValue = "(obj, sy) => obj.skewY(sy)"

extern "js" fn dom_matrix_read_only_multiply_ffi(obj: JsValue, other: JsValue) -> JsValue = "(obj, other) => obj.multiply(other)"

extern "js" fn dom_matrix_read_only_flip_x_ffi(obj: JsValue) -> JsValue = "(obj) => obj.flipX()"

extern "js" fn dom_matrix_read_only_flip_y_ffi(obj: JsValue) -> JsValue = "(obj) => obj.flipY()"

extern "js" fn dom_matrix_read_only_inverse_ffi(obj: JsValue) -> JsValue = "(obj) => obj.inverse()"

extern "js" fn dom_matrix_read_only_transform_point_ffi(obj: JsValue, point: JsValue) -> JsValue = "(obj, point) => obj.transformPoint(point)"

extern "js" fn dom_matrix_read_only_to_float32array_ffi(obj: JsValue) -> JsValue = "(obj) => obj.toFloat32Array()"

extern "js" fn dom_matrix_read_only_to_float64array_ffi(obj: JsValue) -> JsValue = "(obj) => obj.toFloat64Array()"

extern "js" fn dom_matrix_read_only_to_json_ffi(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"