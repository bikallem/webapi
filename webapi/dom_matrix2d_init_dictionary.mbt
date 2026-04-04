// Do not edit. This file is generated.
// MoonBit type: DOMMatrix2DInit
// Specifications: geometry.idl

///|
/// [DOMMatrix2DInit](https://developer.mozilla.org/en-US/docs/Web/API/DOMMatrix2DInit)
#external
pub type DOMMatrix2DInit

///|
pub impl TJsValue for DOMMatrix2DInit with to_js(self : DOMMatrix2DInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for DOMMatrix2DInit with from_js_any(value : JsAny) -> DOMMatrix2DInit = "%identity"

///|
pub fn DOMMatrix2DInit::new(
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
) -> DOMMatrix2DInit {
  dom_matrix2d_init_ffi(
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
  )
}

///|
pub fn DOMMatrix2DInit::empty() -> DOMMatrix2DInit {
  dom_matrix2d_init_empty_ffi()
}

///|
pub fn DOMMatrix2DInit::a(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_a_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrix2DInit::b(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_b_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrix2DInit::c(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_c_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrix2DInit::d(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_d_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrix2DInit::e(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_e_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrix2DInit::f(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_f_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrix2DInit::m11(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_m11_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrix2DInit::m12(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_m12_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrix2DInit::m21(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_m21_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrix2DInit::m22(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_m22_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrix2DInit::m41(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_m41_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DOMMatrix2DInit::m42(self : DOMMatrix2DInit) -> Double? {
  dom_matrix2d_init_get_m42_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_ffi(
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
) -> DOMMatrix2DInit =
  #|(a, b, c, d, e, f, m11, m12, m21, m22, m41, m42) => {
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
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_empty_ffi() -> DOMMatrix2DInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_get_a_ffi(obj : JsValue) -> JsValue = "(obj) => obj.a"

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_get_b_ffi(obj : JsValue) -> JsValue = "(obj) => obj.b"

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_get_c_ffi(obj : JsValue) -> JsValue = "(obj) => obj.c"

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_get_d_ffi(obj : JsValue) -> JsValue = "(obj) => obj.d"

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_get_e_ffi(obj : JsValue) -> JsValue = "(obj) => obj.e"

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_get_f_ffi(obj : JsValue) -> JsValue = "(obj) => obj.f"

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_get_m11_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m11"

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_get_m12_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m12"

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_get_m21_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m21"

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_get_m22_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m22"

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_get_m41_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m41"

///|
#cfg(target="js")
extern "js" fn dom_matrix2d_init_get_m42_ffi(obj : JsValue) -> JsValue = "(obj) => obj.m42"

///|
#cfg(target="wasm-gc")
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
#cfg(target="wasm-gc")
fn dom_matrix2d_init_empty_ffi() -> DOMMatrix2DInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn dom_matrix2d_init_get_a_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_a"

///|
#cfg(target="wasm-gc")
fn dom_matrix2d_init_get_b_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_b"

///|
#cfg(target="wasm-gc")
fn dom_matrix2d_init_get_c_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_c"

///|
#cfg(target="wasm-gc")
fn dom_matrix2d_init_get_d_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_d"

///|
#cfg(target="wasm-gc")
fn dom_matrix2d_init_get_e_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_e"

///|
#cfg(target="wasm-gc")
fn dom_matrix2d_init_get_f_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_f"

///|
#cfg(target="wasm-gc")
fn dom_matrix2d_init_get_m11_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_m11"

///|
#cfg(target="wasm-gc")
fn dom_matrix2d_init_get_m12_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_m12"

///|
#cfg(target="wasm-gc")
fn dom_matrix2d_init_get_m21_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_m21"

///|
#cfg(target="wasm-gc")
fn dom_matrix2d_init_get_m22_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_m22"

///|
#cfg(target="wasm-gc")
fn dom_matrix2d_init_get_m41_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_m41"

///|
#cfg(target="wasm-gc")
fn dom_matrix2d_init_get_m42_ffi(obj : JsValue) -> JsValue = "webapi_DOMMatrix2DInit" "get_m42"
