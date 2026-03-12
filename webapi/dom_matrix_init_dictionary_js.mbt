extern "js" fn dom_matrix_init_ffi(a: JsValue, b: JsValue, c: JsValue, d: JsValue, e: JsValue, f: JsValue, m11: JsValue, m12: JsValue, m21: JsValue, m22: JsValue, m41: JsValue, m42: JsValue, m13: JsValue, m14: JsValue, m23: JsValue, m24: JsValue, m31: JsValue, m32: JsValue, m33: JsValue, m34: JsValue, m43: JsValue, m44: JsValue, is2d: JsValue) -> DOMMatrixInit = 
#|(a, b, c, d, e, f, m11, m12, m21, m22, m41, m42, m13, m14, m23, m24, m31, m32, m33, m34, m43, m44, is2D) => {
#|  const obj = {};
#|  if (a !== undefined) obj.a = a;
#|  if (b !== undefined) obj.b = b;
#|  if (c !== undefined) obj.c = c;
#|  if (d !== undefined) obj.d = d;
#|  if (e !== undefined) obj.e = e;
#|  if (f !== undefined) obj.f = f;
#|  if (m11 !== undefined) obj.m11 = m11;
#|  if (m12 !== undefined) obj.m12 = m12;
#|  if (m21 !== undefined) obj.m21 = m21;
#|  if (m22 !== undefined) obj.m22 = m22;
#|  if (m41 !== undefined) obj.m41 = m41;
#|  if (m42 !== undefined) obj.m42 = m42;
#|  if (m13 !== undefined) obj.m13 = m13;
#|  if (m14 !== undefined) obj.m14 = m14;
#|  if (m23 !== undefined) obj.m23 = m23;
#|  if (m24 !== undefined) obj.m24 = m24;
#|  if (m31 !== undefined) obj.m31 = m31;
#|  if (m32 !== undefined) obj.m32 = m32;
#|  if (m33 !== undefined) obj.m33 = m33;
#|  if (m34 !== undefined) obj.m34 = m34;
#|  if (m43 !== undefined) obj.m43 = m43;
#|  if (m44 !== undefined) obj.m44 = m44;
#|  if (is2D !== undefined) obj.is2D = is2D;
#|  return obj;
#|}

extern "js" fn dom_matrix_init_empty_ffi() -> DOMMatrixInit = "() => {}"

extern "js" fn dom_matrix_init_get_a_ffi(obj: JsValue) -> JsValue = "(obj) => obj.a"

extern "js" fn dom_matrix_init_get_b_ffi(obj: JsValue) -> JsValue = "(obj) => obj.b"

extern "js" fn dom_matrix_init_get_c_ffi(obj: JsValue) -> JsValue = "(obj) => obj.c"

extern "js" fn dom_matrix_init_get_d_ffi(obj: JsValue) -> JsValue = "(obj) => obj.d"

extern "js" fn dom_matrix_init_get_e_ffi(obj: JsValue) -> JsValue = "(obj) => obj.e"

extern "js" fn dom_matrix_init_get_f_ffi(obj: JsValue) -> JsValue = "(obj) => obj.f"

extern "js" fn dom_matrix_init_get_m11_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m11"

extern "js" fn dom_matrix_init_get_m12_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m12"

extern "js" fn dom_matrix_init_get_m21_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m21"

extern "js" fn dom_matrix_init_get_m22_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m22"

extern "js" fn dom_matrix_init_get_m41_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m41"

extern "js" fn dom_matrix_init_get_m42_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m42"

extern "js" fn dom_matrix_init_get_m13_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m13"

extern "js" fn dom_matrix_init_get_m14_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m14"

extern "js" fn dom_matrix_init_get_m23_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m23"

extern "js" fn dom_matrix_init_get_m24_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m24"

extern "js" fn dom_matrix_init_get_m31_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m31"

extern "js" fn dom_matrix_init_get_m32_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m32"

extern "js" fn dom_matrix_init_get_m33_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m33"

extern "js" fn dom_matrix_init_get_m34_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m34"

extern "js" fn dom_matrix_init_get_m43_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m43"

extern "js" fn dom_matrix_init_get_m44_ffi(obj: JsValue) -> JsValue = "(obj) => obj.m44"

extern "js" fn dom_matrix_init_get_is2d_ffi(obj: JsValue) -> JsValue = "(obj) => obj.is2D"