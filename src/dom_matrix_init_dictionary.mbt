// Do not edit. This file is generated.
// MoonBit type: DOMMatrixInit
// Specifications: geometry.idl

///|
/// [DOMMatrixInit](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrixInit)
#external
pub type DOMMatrixInit

///|
pub impl TJsValue for DOMMatrixInit with to_js(self : DOMMatrixInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for DOMMatrixInit with from_js_any(value : JsAny) -> DOMMatrixInit = "%identity"

///|
pub fn DOMMatrixInit::new(
  a? : Double,
  b? : Double,
  c? : Double,
  d? : Double,
  e? : Double,
  f? : Double,
  m11? : Double,
  m12? : Double,
  m21? : Double,
  m22? : Double,
  m41? : Double,
  m42? : Double,
  m13? : Double,
  m14? : Double,
  m23? : Double,
  m24? : Double,
  m31? : Double,
  m32? : Double,
  m33? : Double,
  m34? : Double,
  m43? : Double,
  m44? : Double,
  is2d? : Bool,
) -> DOMMatrixInit {
  dom_matrix_init_ffi(
    opt_to_js(a),
    opt_to_js(b),
    opt_to_js(c),
    opt_to_js(d),
    opt_to_js(e),
    opt_to_js(f),
    opt_to_js(m11),
    opt_to_js(m12),
    opt_to_js(m21),
    opt_to_js(m22),
    opt_to_js(m41),
    opt_to_js(m42),
    opt_to_js(m13),
    opt_to_js(m14),
    opt_to_js(m23),
    opt_to_js(m24),
    opt_to_js(m31),
    opt_to_js(m32),
    opt_to_js(m33),
    opt_to_js(m34),
    opt_to_js(m43),
    opt_to_js(m44),
    opt_to_js(is2d),
  )
}

///|
pub fn DOMMatrixInit::empty() -> DOMMatrixInit {
  dom_matrix_init_empty_ffi()
}

///|
pub fn DOMMatrixInit::a(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_a_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::b(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_b_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::c(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_c_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::d(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_d_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::e(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_e_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::f(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_f_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m11(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m11_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m12(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m12_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m21(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m21_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m22(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m22_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m41(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m41_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m42(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m42_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m13(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m13_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m14(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m14_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m23(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m23_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m24(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m24_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m31(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m31_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m32(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m32_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m33(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m33_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m34(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m34_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m43(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m43_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::m44(self : DOMMatrixInit) -> Double? {
  dom_matrix_init_get_m44_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrixInit::is2d(self : DOMMatrixInit) -> Bool? {
  dom_matrix_init_get_is2d_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_ffi(
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
  m13 : JsValue,
  m14 : JsValue,
  m23 : JsValue,
  m24 : JsValue,
  m31 : JsValue,
  m32 : JsValue,
  m33 : JsValue,
  m34 : JsValue,
  m43 : JsValue,
  m44 : JsValue,
  is2d : JsValue,
) -> DOMMatrixInit =
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

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_empty_ffi() -> DOMMatrixInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_a_ffi(obj : JsValue) -> JsValue = "(obj) => obj.a"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_b_ffi(obj : JsValue) -> JsValue = "(obj) => obj.b"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_c_ffi(obj : JsValue) -> JsValue = "(obj) => obj.c"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_d_ffi(obj : JsValue) -> JsValue = "(obj) => obj.d"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_e_ffi(obj : JsValue) -> JsValue = "(obj) => obj.e"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_f_ffi(obj : JsValue) -> JsValue = "(obj) => obj.f"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m11_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m11"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m12_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m12"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m21_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m21"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m22_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m22"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m41_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m41"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m42_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m42"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m13_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m13"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m14_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m14"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m23_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m23"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m24_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m24"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m31_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m31"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m32_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m32"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m33_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m33"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m34_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m34"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m43_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m43"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_m44_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m44"

///|
#cfg(target="js")
extern "js" fn dom_matrix_init_get_is2d_ffi(obj : JsValue) -> JsValue = "(obj) => obj.is2D"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_ffi(
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
  m13 : JsValue,
  m14 : JsValue,
  m23 : JsValue,
  m24 : JsValue,
  m31 : JsValue,
  m32 : JsValue,
  m33 : JsValue,
  m34 : JsValue,
  m43 : JsValue,
  m44 : JsValue,
  is2d : JsValue,
) -> DOMMatrixInit = "webapi_DOMMatrixInit" "new"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_empty_ffi() -> DOMMatrixInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_a_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_a"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_b_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_b"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_c_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_c"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_d_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_d"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_e_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_e"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_f_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_f"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m11_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m11"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m12_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m12"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m21_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m21"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m22_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m22"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m41_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m41"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m42_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m42"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m13_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m13"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m14_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m14"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m23_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m23"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m24_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m24"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m31_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m31"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m32_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m32"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m33_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m33"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m34_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m34"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m43_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m43"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_m44_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_m44"

///|
#cfg(target="wasm-gc")
fn dom_matrix_init_get_is2d_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrixInit" "get_is2D"
