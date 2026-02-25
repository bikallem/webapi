///|
fn dom_matrix2d_init_ffi(
  a : JsValue,
  b : JsValue,
  c : JsValue,
  d : JsValue,
  e : JsValue,
  f : JsValue,
  m11 : JsValue,
  m12 : JsValue,
  m21 : JsValue,
  m22 : JsValue,
  m41 : JsValue,
  m42 : JsValue,
) -> DOMMatrix2DInit = "webapi_DOMMatrix2DInit" "new"

///|
fn dom_matrix2d_init_empty_ffi() -> DOMMatrix2DInit = "webapi_Dictionary" "empty"

///|
fn dom_matrix2d_init_get_a_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_a"

///|
fn dom_matrix2d_init_get_b_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_b"

///|
fn dom_matrix2d_init_get_c_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_c"

///|
fn dom_matrix2d_init_get_d_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_d"

///|
fn dom_matrix2d_init_get_e_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_e"

///|
fn dom_matrix2d_init_get_f_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_f"

///|
fn dom_matrix2d_init_get_m11_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_m11"

///|
fn dom_matrix2d_init_get_m12_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_m12"

///|
fn dom_matrix2d_init_get_m21_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_m21"

///|
fn dom_matrix2d_init_get_m22_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_m22"

///|
fn dom_matrix2d_init_get_m41_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_m41"

///|
fn dom_matrix2d_init_get_m42_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_m42"
