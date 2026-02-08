///|
fn dom_matrix_read_only_new_ffi(init : JsValue) -> DOMMatrixReadOnly = "webapi_DOMMatrixReadOnly" "new"

///|
fn dom_matrix_read_only_from_matrix_ffi(other : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "fromMatrix"

///|
fn dom_matrix_read_only_from_float32array_ffi(array32 : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "fromFloat32Array"

///|
fn dom_matrix_read_only_from_float64array_ffi(array64 : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "fromFloat64Array"

///|
fn dom_matrix_read_only_a_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_a"

///|
fn dom_matrix_read_only_b_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_b"

///|
fn dom_matrix_read_only_c_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_c"

///|
fn dom_matrix_read_only_d_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_d"

///|
fn dom_matrix_read_only_e_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_e"

///|
fn dom_matrix_read_only_f_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_f"

///|
fn dom_matrix_read_only_m11_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m11"

///|
fn dom_matrix_read_only_m12_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m12"

///|
fn dom_matrix_read_only_m13_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m13"

///|
fn dom_matrix_read_only_m14_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m14"

///|
fn dom_matrix_read_only_m21_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m21"

///|
fn dom_matrix_read_only_m22_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m22"

///|
fn dom_matrix_read_only_m23_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m23"

///|
fn dom_matrix_read_only_m24_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m24"

///|
fn dom_matrix_read_only_m31_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m31"

///|
fn dom_matrix_read_only_m32_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m32"

///|
fn dom_matrix_read_only_m33_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m33"

///|
fn dom_matrix_read_only_m34_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m34"

///|
fn dom_matrix_read_only_m41_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m41"

///|
fn dom_matrix_read_only_m42_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m42"

///|
fn dom_matrix_read_only_m43_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m43"

///|
fn dom_matrix_read_only_m44_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_m44"

///|
fn dom_matrix_read_only_is2d_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_is2D"

///|
fn dom_matrix_read_only_is_identity_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "get_isIdentity"

///|
fn dom_matrix_read_only_translate_ffi(
  obj : JsValue,
  tx : JsValue,
  ty : JsValue,
  tz : JsValue,
) -> JsValue = "webapi_DOMMatrixReadOnly" "translate"

///|
fn dom_matrix_read_only_scale_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
  scale_z : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> JsValue = "webapi_DOMMatrixReadOnly" "scale"

///|
fn dom_matrix_read_only_scale_non_uniform_ffi(
  obj : JsValue,
  scale_x : JsValue,
  scale_y : JsValue,
) -> JsValue = "webapi_DOMMatrixReadOnly" "scaleNonUniform"

///|
fn dom_matrix_read_only_scale3d_ffi(
  obj : JsValue,
  scale : JsValue,
  origin_x : JsValue,
  origin_y : JsValue,
  origin_z : JsValue,
) -> JsValue = "webapi_DOMMatrixReadOnly" "scale3d"

///|
fn dom_matrix_read_only_rotate_ffi(
  obj : JsValue,
  rot_x : JsValue,
  rot_y : JsValue,
  rot_z : JsValue,
) -> JsValue = "webapi_DOMMatrixReadOnly" "rotate"

///|
fn dom_matrix_read_only_rotate_from_vector_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
) -> JsValue = "webapi_DOMMatrixReadOnly" "rotateFromVector"

///|
fn dom_matrix_read_only_rotate_axis_angle_ffi(
  obj : JsValue,
  x : JsValue,
  y : JsValue,
  z : JsValue,
  angle : JsValue,
) -> JsValue = "webapi_DOMMatrixReadOnly" "rotateAxisAngle"

///|
fn dom_matrix_read_only_skew_x_ffi(obj : JsValue, sx : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "skewX"

///|
fn dom_matrix_read_only_skew_y_ffi(obj : JsValue, sy : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "skewY"

///|
fn dom_matrix_read_only_multiply_ffi(obj : JsValue, other : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "multiply"

///|
fn dom_matrix_read_only_flip_x_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "flipX"

///|
fn dom_matrix_read_only_flip_y_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "flipY"

///|
fn dom_matrix_read_only_inverse_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "inverse"

///|
fn dom_matrix_read_only_transform_point_ffi(
  obj : JsValue,
  point : JsValue,
) -> JsValue = "webapi_DOMMatrixReadOnly" "transformPoint"

///|
fn dom_matrix_read_only_to_float32array_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "toFloat32Array"

///|
fn dom_matrix_read_only_to_float64array_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "toFloat64Array"

///|
fn dom_matrix_read_only_to_json_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixReadOnly" "toJSON"
